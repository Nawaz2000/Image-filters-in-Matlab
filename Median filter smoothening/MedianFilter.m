img = imread('salt.jpg');
x = rgb2gray(img);

figure
imshow(x)

op = medfilt2(x, [3 3]);

imshow(x)
figure
imshow(op)