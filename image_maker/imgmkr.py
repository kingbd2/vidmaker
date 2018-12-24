import numpy as np
# import scipy as sp
# import matplotlib.pyplot as plt
from PIL import Image

import os
import sys
import errno

def main():
    try:
        w, h = 512, 512
        data = np.zeros((h, w), dtype=np.uint8)
        for i in range(255):
            print("Saving image")
            img = Image.fromarray(data, 'L')
            img.save(str(str(i).zfill(4) + 'image.png'))
            data += 1
            sys.stdout.flush()
    except IOError as e:
        if e.errno == errno.EPIPE:
            print("error")

if __name__ == '__main__':
    main()
