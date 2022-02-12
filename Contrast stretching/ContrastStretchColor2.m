image = imread('grayscale.jpg');
figure
subplot(2,1,1), imshow(image), title('Original Image');
subplot(2,1,2), imhist(image), title('Strethced Image');

image2 = imadjust(image, stretchlim(image, [0.05, 0.95]),[]);
figure
subplot(2,1,1), imshow(image2), title('Linearly stretched Image');
subplot(2,1,2), imhist(image2), title('imadjust Image Histogram');

peaksnr = psnr(image,image2);
fprintf('\n The Peak-SNR value of imadjust is %0.4f', peaksnr);



image3 = histeq(image);
figure
subplot(2,1,1), imshow(image3), title('Histogram equalized Image');
subplot(2,1,2), imhist(image3), title('histeq Image Histogram');

peaksnr = psnr(image,image3);
fprintf('\n The Peak-SNR value of histeq is %0.4f', peaksnr);

