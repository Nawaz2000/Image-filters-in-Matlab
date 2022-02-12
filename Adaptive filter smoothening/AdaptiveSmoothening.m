RGB = imread('noisy.jpg');
I = rgb2gray(RGB);

figure
imshow(I);
%J = imnoise(I,'gaussian',0,0.025);

%figure
%imshow(J);
K = wiener2(I,[2 2]);

figure
imshow(K)