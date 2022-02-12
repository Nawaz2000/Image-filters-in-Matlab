a = imread('rice.png');
imshow(a), title('Original Image');

b = imsharpen(a,'Radius',2,'Amount',1);
figure, imshow(b)
title('Sharpened Image');