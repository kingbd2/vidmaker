import numpy as np
# import scipy as sp
# import matplotlib.pyplot as plt
from PIL import Image

w, h = 512, 512
# data = np.zeros((h, w, 3), dtype=np.uint8)
# data[256, 256] = [255, 0, 0]

for i in range(100):
    data = np.random.uniform(0,1,(h, w))
    # Convert array to image (png)
    img = Image.fromarray(data, 'RGB')
    img.save(str(str(i)+'image.png'))

# Z = np.zeros(9)
# Create random array
# N = np.zeros(Z.shape, dtype=int)



# Name image in sequential order

# Convert images to video