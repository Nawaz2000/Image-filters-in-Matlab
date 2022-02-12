I = imread('flower.jpg');
figure
imshow(I)


gray = rgb2gray(I);
BW1 = edge(gray,'Roberts');
BW2 = edge(gray,'Sobel');
BW3 = edge(gray,'Prewitt');
BW4 = edge(gray,'Canny');

figure
subplot(2,2,1)
imshow(BW1)
title('Roberts')

subplot(2,2,2)
imshow(BW2)
title('Sobel')

subplot(2,2,3)
imshow(BW3)
title('Prewitt')

subplot(2,2,4)
imshow(BW4)
title('Canny')