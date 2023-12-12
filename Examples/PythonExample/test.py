import os
import numpy
import cv2
 
src = cv2.imread('/home/yubao/Data/Dataset/TUM/freiburg1/rgbd_dataset_freiburg1_desk2/rgb/1305031527.539741.png', cv2.IMREAD_UNCHANGED)

#percent by which the image is resized
scale_percent = 50

#calculate the 50 percent of original dimensions
width= int(src.shape[1] * scale_percent / 100)
height = int(src.shape[0] * scale_percent / 100)

# dsize
dsize = (width, height)

# resize image
output = cv2.resize(src, dsize)

cv2.imwrite('D:/cv2-resize-image-50.png',output) 
print("hello")





a = 1
b = 6

# Add two integer numbers
sum = a + b

# print the sum to console
print(sum)



