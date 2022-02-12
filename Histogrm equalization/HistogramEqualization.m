
img = imread('image1.jpg');
[J,T] = histeq(img);


figure
subplot(2,3,1)
imshow(img);
title('Original')

subplot(2,3,2)
imhist(img);
title('Original histogram')

subplot(2,3,3)
plot((0:255)/255,T);
title('Original transformation curve')

img2 = histeq(img);
[J,T] = histeq(img2);


subplot(2,3,4)
imshow(img2);
title('Histogram equalized')

subplot(2,3,5)
imhist(img2);
title('Modified histogram')

subplot(2,3,6)
plot((0:255)/255,T);
title('Modified transformation curve')

peaksnr = psnr(img,img2);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr);

