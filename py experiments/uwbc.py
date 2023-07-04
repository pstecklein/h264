import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import torch
import cv2
import torchvision
import torchvision.transforms as transforms
import time
from PIL import Image
from scipy.ndimage import gaussian_filter

# H.264
def inter16x(sa):
    
    def ldps(sa_):
        safety = 1000
        vec = [0,0]
        while safety > 0:
            min_sad = [256**2, (1,1)]
            mid_x = sa_[0] + vec[0]
            mid_y = sa_[1] + vec[1]
            for mvx, mvy in ([0,1], [1,0], [0,-1], [-1,0], [0,0]):
                x_ = mid_x + mvx
                y_ = mid_y + mvy
                org_ = search_area[y_:y_+16, x_:x_+16]
                sad = int(sum(abs(org_.flatten() - curr_mb.flatten())))
                if sad <= min_sad[0]:
                    min_sad = [sad, (mvx, mvy)]
            if min_sad[1] == (0,0) or (x_ + min_sad[1][0] == 0 or y_ + min_sad[1][1] == 0) or (x_ + min_sad[1][0] > search_area.shape[0] - 17 or y_ + min_sad[1][1] > search_area.shape[1] - 17):
                return (min_sad[0], mid_x, mid_y)
            else:
                vec[0] += min_sad[1][0]
                vec[1] += min_sad[1][1]
            safety -= 1
        return (256**2, -1, -1)
    
    return ldps(sa)

def intra4x(cur, neighbors, valid_IL, valid_EH, valid_AD, valid_M):
    for i in range(13):
        if type(neighbors[i]) is not int:
            neighbors[i] = neighbors[i].astype(int)
    A, B, C, D, E, F, G, H, I, J, K, L, M = neighbors
    eq0 = (A + B + 1) >> 1
    eq1 = (B + C + 1) >> 1
    eq2 = (C + D + 1) >> 1
    eq3 = (D + E + 1) >> 1
    eq4 = (E + F + 1) >> 1
    eq5 = (F + G + 1) >> 1
    eq6 = (G + H + 1) >> 1
    eq7 = (I + J + 1) >> 1
    eq8 = (J + K + 1) >> 1
    eq9 = (K + L + 1) >> 1
    eq10 = (M + A + 1) >> 1
    eq11 = (M + I + 1) >> 1
    eq12 = (2*H + 1) >> 1
    eq13 = (2*L + 1) >> 1
    eq14 = (eq0 + eq10) >> 1
    eq15 = (eq0 + eq1) >> 1
    eq16 = (eq1 + eq2) >> 1
    eq17 = (eq2 + eq3) >> 1
    eq18 = (eq3 + eq4) >> 1
    eq19 = (eq4 + eq5) >> 1
    eq20 = (eq5 + eq6) >> 1
    eq21 = (eq7 + eq11) >> 1
    eq22 = (eq7 + eq8) >> 1
    eq23 = (eq8 + eq9) >> 1
    eq24 = (eq10 + eq11) >> 1
    eq25 = (eq6 + eq12) >> 1
    eq26 = (eq9 + eq13) >> 1
    eq27 = (eq0 + eq2) >> 1
    eq28 = (eq7 + eq9) >> 1
    eq29 = (eq27 + eq28) >> 1
    
    modes = [
        [A, B, C, D, A, B, C, D, A, B, C, D, A, B, C, D],
        [I, I, I, I, J, J, J, J, K, K, K, K, L, L, L, L],
        [eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29, eq29],
        [eq15, eq16, eq17, eq18, eq16, eq17, eq18, eq19, eq17, eq18, eq19, eq20, eq18, eq19, eq20, eq25],
        [eq24, eq14, eq15, eq16, eq21, eq24, eq14, eq15, eq22, eq21, eq24, eq14, eq23, eq22, eq21, eq24],
        [eq10, eq0, eq1, eq2, eq24, eq14, eq15, eq16, eq21, eq10, eq0, eq1, eq22, eq24, eq14, eq15],
        [eq11, eq24, eq14, eq15, eq7, eq21, eq11, eq24, eq8, eq22, eq7, eq21, eq9, eq23, eq8, eq22],
        [eq0, eq1, eq2, eq3, eq15, eq16, eq17, eq18, eq1, eq2, eq3, eq4, eq16, eq17, eq18, eq19],
        [eq7, eq22, eq8, eq23, eq8, eq23, eq9, eq26, eq9, eq26, L, L, L, L, L, L]
    ]
    
    valid_modes = []
    if valid_AD:
        valid_modes.append(0)
    if valid_IL:
        valid_modes.append(1)
    if valid_AD and valid_IL:
        valid_modes.append(2)
    if valid_AD and valid_IL and valid_EH and valid_M:
        valid_modes.append(3)
    if valid_AD and valid_IL and valid_M:
        valid_modes.extend([4, 5, 6])
    if valid_AD and valid_EH:
        valid_modes.append(7)
    if valid_IL:
        valid_modes.append(8)
    
    sad = []
    pred_blocks = []
    for i, mode in enumerate(modes):
        if i in valid_modes:
            pred = np.zeros((4, 4, 3), dtype=np.uint8)
            for j in range(4):
                for k in range(4):
                    pred[j][k] = mode[j*4 + k]
            sad.append(int(sum(abs(cur.flatten() - pred.flatten()))))
            pred_blocks.append(pred)
    
    sad_best = min(sad)
    best_mode = valid_modes[sad.index(sad_best)]
    pred_block = pred_blocks[sad.index(sad_best)]
    diff_block = pred_block - cur
    
    return sad_best, best_mode, pred_block, diff_block

def intra16x(cur, neighbors_H, neighbors_V, valid_H, valid_V):
    sad = []
    pred_blocks = []
    if valid_H:
        pred = np.zeros((16, 16, 3), dtype=np.uint8)
        for i, val in enumerate(neighbors_H):
            pred[:, i] = val
        sad.append(int(sum(abs(cur.flatten() - pred.flatten()))))
        pred_blocks.append(pred)
    else:
        sad.append(256**2)
        pred_blocks.append(np.zeros((16,16)))
        
    if valid_V:
        pred = np.zeros((16, 16, 3), dtype=np.uint8)
        for i, val in enumerate(neighbors_V):
            pred[i] = [val]*16
        sad.append(int(sum(abs(cur.flatten() - pred.flatten()))))
        pred_blocks.append(pred)
    else:
        sad.append(256**2)
        pred_blocks.append(np.zeros((16,16)))
        
    if valid_H and valid_V:
        r_total = g_total = b_total = 0
        for i in range(15):
            r_total += int(neighbors_H[i][0]) + int(neighbors_V[i][0])
            g_total += int(neighbors_H[i][1]) + int(neighbors_V[i][1])
            b_total += int(neighbors_H[i][2]) + int(neighbors_V[i][2])
        val = [r_total // 30, g_total // 30, b_total // 30]
        pred = np.full((16, 16, 3), val, dtype=np.uint8)
        sad.append(int(sum(abs(cur.flatten() - pred.flatten()))))
        pred_blocks.append(pred)
    else:
        sad.append(256**2)
        pred_blocks.append(np.zeros((16,16)))
        
    sad_best = min(sad)
    best_mode = sad.index(sad_best)
    pred_block = pred_blocks[best_mode]

    return sad_best, best_mode, cur, pred_block

def ICT(residuals):
    reg_bank = np.zeros((4,4))
    for i in range(4):
        wire0 = residuals[i][0] + residuals[i][3]
        wire1 = residuals[i][1] + residuals[i][2]
        wire2 = residuals[i][1] - residuals[i][2]
        wire3 = residuals[i][0] - residuals[i][3]
        reg_bank[:, i][0] = wire0 + wire1
        reg_bank[:, i][1] = wire2 + (2 * wire3)
        reg_bank[:, i][2] = wire0 - wire1
        reg_bank[:, i][3] = wire3 - (2 * wire2)
        
    out = np.zeros((4,4))
    for i in range(4):
        wire0 = reg_bank[:, i][0] + reg_bank[:, i][3]
        wire1 = reg_bank[:, i][1] + reg_bank[:, i][2]
        wire2 = reg_bank[:, i][1] - reg_bank[:, i][2]
        wire3 = reg_bank[:, i][0] - reg_bank[:, i][3]
        out[i][0] = wire0 + wire1
        out[i][1] = wire2 + (2 * wire3)
        out[i][2] = wire0 - wire1
        out[i][3] = wire3 - (2 * wire2)
        
    return out

def ICT(residuals):
    reg_bank = np.zeros((4,4))
    for i in range(4):
        wire0 = residuals[i][0] + residuals[i][3]
        wire1 = residuals[i][1] + residuals[i][2]
        wire2 = residuals[i][1] - residuals[i][2]
        wire3 = residuals[i][0] - residuals[i][3]
        reg_bank[:, i][0] = wire0 + wire1
        reg_bank[:, i][1] = wire2 + (2 * wire3)
        reg_bank[:, i][2] = wire0 - wire1
        reg_bank[:, i][3] = wire3 - (2 * wire2)
        
    out = np.zeros((4,4))
    for i in range(4):
        wire0 = reg_bank[:, i][0] + reg_bank[:, i][3]
        wire1 = reg_bank[:, i][1] + reg_bank[:, i][2]
        wire2 = reg_bank[:, i][1] - reg_bank[:, i][2]
        wire3 = reg_bank[:, i][0] - reg_bank[:, i][3]
        out[i][0] = wire0 + wire1
        out[i][1] = wire2 + (2 * wire3)
        out[i][2] = wire0 - wire1
        out[i][3] = wire3 - (2 * wire2)
        
    return out

def IICT(data):
    reg_bank = np.zeros((4,4))
    for i in range(4):
        wire0 = residuals[i][0] + residuals[i][2]
        wire1 = residuals[i][0] - residuals[i][2]
        wire2 = (residuals[i][1] // 2) - residuals[i][3]
        wire3 = residuals[i][1] + (residuals[i][3] // 2)
        reg_bank[:, i][0] = wire0 + wire3
        reg_bank[:, i][1] = wire1 + wire2
        reg_bank[:, i][2] = wire1 - wire2
        reg_bank[:, i][3] = wire0 - wire3
        
    out = np.zeros((4,4))
    for i in range(4):
        wire0 = reg_bank[:, i][0] + reg_bank[:, i][2]
        wire1 = reg_bank[:, i][0] - reg_bank[:, i][2]
        wire2 = (reg_bank[:, i][1] // 2) - reg_bank[:, i][3]
        wire3 = reg_bank[:, i][1] + (reg_bank[:, i][3] // 2)
        out[i][0] = wire0 + wire3
        out[i][1] = wire1 + wire2
        out[i][2] = wire1 - wire2
        out[i][3] = wire0 - wire3
        
    return out

def HT(residuals):
    reg_bank = np.zeros((4,4))
    for i in range(4):
        wire0 = residuals[i][0] + residuals[i][3]
        wire1 = residuals[i][1] + residuals[i][2]
        wire2 = residuals[i][1] - residuals[i][2]
        wire3 = residuals[i][0] - residuals[i][3]
        reg_bank[:, i][0] = wire0 + wire1
        reg_bank[:, i][1] = wire2 + wire3
        reg_bank[:, i][2] = wire0 - wire1
        reg_bank[:, i][3] = wire3 - wire2
        
    out = np.zeros((4,4))
    for i in range(4):
        wire0 = residuals[:, i][0] + residuals[:, i][3]
        wire1 = residuals[:, i][1] + residuals[:, i][2]
        wire2 = residuals[:, i][1] - residuals[:, i][2]
        wire3 = residuals[:, i][0] - residuals[:, i][3]
        out[i][0] = wire0 + wire1
        out[i][1] = wire2 + wire3
        out[i][2] = wire0 - wire1
        out[i][3] = wire3 - wire2
        
    return out

def quant_AC(coeff, qp, qstep):
    mf = np.full((4, 4), 5243)
    mf[0][0] = 8192
    mf[0][2] = 8192
    mf[2][0] = 8192
    mf[2][2] = 8192
    mf[1][1] = 3355
    mf[1][3] = 3355
    mf[3][1] = 3355
    mf[3][3] = 3355
    qbits = 15 + qp // 6
    quantized = np.zeros((4,4))
    for i in range(4):
        for j in range(4):
            quantized[i][j] = (coeff[i][j] * mf[i][j]) >> qbits
            
    return quantized

def quant_DC(coeff, qp, qstep):
    mf = 8192
    qbits = 15 + qp // 6
    quantized = np.zeros((4,4))
    for i in range(4):
        for j in range(4):
            quantized[i][j] = (coeff[i][j] * mf) >> (qbits + 1)
            if coeff[i][j] < 0: quantized[i][j] = -abs(quantized[i][j])
            else: quantized[i][j] = abs(quantized[i][j])
                
    return quantized

def inverse_quant_AC(quantized, qp):
    V = np.full((4, 4), 20)
    V[0][0] = 16
    V[0][2] = 16
    V[2][0] = 16
    V[2][2] = 16
    V[1][1] = 25
    V[1][3] = 25
    V[3][1] = 25
    V[3][3] = 25
    iq = np.zeros((4,4))
    for i in range(4):
        for j in range(4):
            iq[i][j] = (quantized[i][j] * V[i][j]) * (2**(qp // 6))
            
    return iq

def inverse_quant_DC(quantized, qp):
    V = 16
    iq = np.zeros((4,4))
    for i in range(4):
        for j in range(4):
            iq[i][j] = ((quantized[i][j] * V) + 2**(1 - (qp // 6))) >> (2 - qp // 6)
            
    return iq

# Edge detection
def sobel_feldman_operator(image):
    gray = cv2.cvtColor(image, cv2.COLOR_RGB2GRAY)
    sobel_x = np.array([[-1, 0, 1], [-2, 0, 2], [-1, 0, 1]])
    sobel_y = np.array([[1, 2, 1], [0, 0, 0], [-1, -2, -1]])
    gradient_x = cv2.filter2D(gray, -1, sobel_x)
    gradient_y = cv2.filter2D(gray, -1, sobel_y)
    gradient_magnitude = np.sqrt(gradient_x**2 + gradient_y**2)
    gradient_magnitude = np.uint8(255 * gradient_magnitude / np.max(gradient_magnitude))
    return gradient_magnitude

# ebg reconstruction
def linear_upsample(image, factor):
    height, width, channels = image.shape
    new_height = height * factor
    new_width = width * factor
    upsampled = cv2.resize(image, (new_width, new_height), interpolation=cv2.INTER_LINEAR)
    return upsampled


# VBS INTRA OVER SELECTED REGION 
def I_encoding(fr_num):
	num = ""
	if fr_num < 10: num = "000" + str(fr_num)
	elif fr_num < 100: num = "00" + str(fr_num)
	else: num = "0" + str(fr_num)

	res = []
	img = np.asarray(Image.open('bottleFrames/frame_' + num + '.png')).astype(np.uint8)
	scale_w = img.shape[1] // 400
	scale_h = img.shape[0] // 300
	scaled = np.zeros((300, 400, img.shape[2]), dtype=img.dtype)
	for i in range(300):
	    for j in range(400):
	        x = j * scale_w
	        y = i * scale_h
	        scaled[i, j] = img[y, x]

	edges = sobel_feldman_operator(scaled)
	for i in range(edges.shape[0]):
	    for j in range(edges.shape[1]):
	        if edges[i][j] > 240:
	            edges[i][j] = 255
	        else:
	            edges[i][j] = 0

	sbmb = np.zeros((300, 400), dtype=img.dtype)
	for i in range(4, 300-16, 16):
	    for j in range(4, 400-16, 16):
	        if np.count_nonzero(edges[i:i+16, j:j+16]) > 0:
	            sbmb[i:i+16, j:j+16] = 255

	'''
	Sobel Feldman Operator Variable Block Size with Pixel-wise Quantization
	H.264 edge cases:
		First row -> only H pix
		First col -> only V+Planar pix
		Top left 4x4 -> avg pixel
		Last col     -> no planar
	'''

	sizes = []
	selected_region = np.zeros((120, 80, scaled.shape[2]), dtype=scaled.dtype)
	for i in range(20, 140, 4):
	    for j in range(120, 200, 4):
	        if sbmb[i][j] == 0 and ((i-20) % 16 == 0) and ((j-120) % 16 == 0):
	            nH = scaled[i-1, j:j+16].copy()
	            nV = scaled[i:i+16, j-1].copy()
	            sad_best, best_mode, cur, pred_block = intra16x(scaled[i:i+16, j:j+16], nH, nV, 1, 1)
	            selected_region[i:i+16, j:j+16] = pred_block
	            sizes.append(16)
	            for m in range(0, 16, 4):
	            	for n in range(0, 16, 4):
	            		selected_region[m:m+4, n:n+4] = quant_DC(HT(pred_block[m:m+4, n:n+4]), 10, 2)
	        elif sbmb[i][j] != 0:
	            n = []
	            n.extend(scaled[i-1, j:j+4])
	            n.extend(scaled[i-1, j+4:j+8])
	            n.extend(scaled[i:i+4, j-1])
	            n.append(scaled[i-1][j-1])
	            sad_best, best_mode, pred_block, diff_block = intra4x(scaled[i:i+4, j:j+4], n, 1, 1, 1, 1)
	            selected_region[i:i+4, j:j+4] = pred_block
	            sizes.append(4)
	            selected_region[i:i+4, j:j+4] = quant_AC(HT(pred_block), 10, 2)

	for i in range(0, selected_region.shape[0], 4):
		for j in range(0, selected_region.shape[1], 4):
			# Confused how to encode properly
			for m in range(0, 4):
				for n in range(0, 4):
					res.append((bin(selected_region[m][n]).replace("0b", ""), "u"))
					
	return res.flatten()

# 16x16 INTER OVER SELECTED REGION
def P_encoding(fr_num):
	num = ""
	if fr_num < 10: num = "000" + str(fr_num)
	elif fr_num < 100: num = "00" + str(fr_num)
	else: num = "0" + str(fr_num)

	img = np.asarray(Image.open('bottleFrames/frame_' + num + '.png')).astype(np.uint8)
	scale_w = img.shape[1] // 400
	scale_h = img.shape[0] // 300
	scaled = np.zeros((300, 400, img.shape[2]), dtype=img.dtype)
	for i in range(300):
	    for j in range(400):
	        x = j * scale_w
	        y = i * scale_h
	        scaled[i, j] = img[y, x]

	key_area = [(20,140), (120,200)]
	motion_matrix = np.zeros((10, 8), dtype=[('x', int), ('y', int)])
	i_idx = -1
	for i in range(key_area[0][0], key_area[0][1], 16):
	    i_idx += 1
	    j_idx = -1
	    for j in range(key_area[1][0], key_area[1][1], 16):
	        j_idx += 1
	        curr_mb = frame_N[i:i+16, j:j+16]
	        search_area = frame_N_1[i-12:i+28, j-12:j+28]
	        m_x, m_y = inter16x((12,12))[1:3]
	        motion_matrix[i_idx][j_idx] = (12 - m_x, 12 - m_y)

	return motion_matrix.flatten()

# Get downsampled bg
frames = []
frNum = ""
for i in range(1, 191):
	num = str(i)
	if i < 10: frNum = "000" + num
	elif i < 100: frNum = "00" + num
	else: frNum = "0" + num

	img = np.array(Image.open("bottleFrames/frame_" + frNum + ".png"))

	scale_w = img.shape[1] // 400
	scale_h = img.shape[0] // 300
	scaled = np.zeros((300, 400, img.shape[2]), dtype=img.dtype)
	for i in range(300):
		for j in range(400):
			x = j * scale_w
			y = i * scale_h
			scaled[i, j] = img[y, x]
	c = scaled.copy()

	downsampled_images = []
	for i in range(5):
		a = c.copy()
		ycrcb_image = cv2.cvtColor(a, cv2.COLOR_BGR2YCrCb)
		Y = ycrcb_image[:, :, 0]
		filtered_Y = cv2.GaussianBlur(Y, (5, 5), 0)
		filtered_ycrcb_image = ycrcb_image.copy()
		filtered_ycrcb_image[:, :, 0] = filtered_Y
		b = cv2.cvtColor(filtered_ycrcb_image, cv2.COLOR_YCrCb2BGR)
		c = np.zeros((b.shape[0] // 2, b.shape[1] // 2, b.shape[2]), dtype=img.dtype)
		for i in range(b.shape[0] // 2):
			for j in range(b.shape[1] // 2):
				x = j * 2
				y = i * 2
				c[i, j] = b[y, x]
		downsampled_images.append(c)

	reconstructed_image = downsampled_images[-1]
	frames.append(reconstructed_image)
	for i in range(4, -1, -1):
		reconstructed_image = linear_upsample(reconstructed_image, 2)

'''
T0 - base
Frame 1
calc avg rgb
encode latent bg chunks as difference from avg
Frame 2-N
encode latent bg chunk deltas
'''

info = []

avg_r = int(np.mean(frames[0][:, :, 0].flatten()))
avg_g = int(np.mean(frames[0][:, :, 1].flatten()))
avg_b = int(np.mean(frames[0][:, :, 2].flatten()))

for ch in [avg_r, avg_g, avg_b]:
	info.append((bin(ch).replace("0b", ""), "u"))

for i in range(frames[0].shape[0]):
	for j in range(frames[0].shape[1]):
		info.append((bin(frames[0][i][j][0] - avg_r).replace("0b", ""), "s"))
		info.append((bin(frames[0][i][j][1] - avg_g).replace("0b", ""), "s"))
		info.append((bin(frames[0][i][j][2] - avg_b).replace("0b", ""), "s"))

for j in range(1, 190):
	for i in range(frames[j].shape[0]):
		for j in range(frames[j].shape[1]):
			info.append((bin(frames[j][i][j][0] - frames[j-1][i][j][0]).replace("0b", ""), "s"))
			info.append((bin(frames[j][i][j][1] - frames[j-1][i][j][1]).replace("0b", ""), "s"))
			info.append((bin(frames[j][i][j][2] - frames[j-1][i][j][2]).replace("0b", ""), "s"))

file_path = "uwvl/t0.txt"
with open(file_path, "w") as file:
    for line in info:
    	file.write(line[0] + "\n")

'''
T0 - base
Frame 1
calc avg rgb
encode latent bg chunks as difference from avg
Frame 2-N
encode latent bg chunk deltas
'''






'''
T2 - selected region
Frame 1
calc avg rgb
encode latent bg chunks as difference from avg
Frame 2-N
encode latent bg chunk deltas
'''

info = []

gop_idx = 0
for fr in range(1, 190):
	data = None
	if gop_idx == 0: data = I_encoding(fr)
	else: data = P_encoding(fr)
	(info.append((bin(val).replace("0b", ""), "u")) for val in data)
	gop_idx = (gop_idx + 1) % 15

file_path = "uwvl/t2.txt"
with open(file_path, "w") as file:
    for line in info:
        file.write(line[0] + "\n")















































