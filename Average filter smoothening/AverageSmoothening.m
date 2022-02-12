rgbImage = imread('img17.bmp');
windowWidth = input('Enter window size: ');
kernel = ones(windowWidth) / windowWidth .^ 2;

figure
imshow(rgbImage);
title('Original image')


blurryImage = imfilter(rgbImage, kernel, 'conv');
figure
imshow(blurryImage);
title(['Average smoothened image with window size: ', num2str(windowWidth), 'X', num2str(windowWidth)])