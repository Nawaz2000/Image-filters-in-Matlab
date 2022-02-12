img = imread('img.jpg');
op = imgaussfilt(img,9);
imshow(op);