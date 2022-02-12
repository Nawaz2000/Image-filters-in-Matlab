img = imread('img20.bmp');
img = rgb2gray(img);

pout_imadjust = imadjust(img);
pout_histeq = histeq(img);
pout_adapthisteq = adapthisteq(img);

montage({img,pout_imadjust,pout_histeq,pout_adapthisteq},'Size',[1 4])
title("Original Image and Enhanced Images using imadjust, histeq, and adapthisteq")


% original image
figure
subplot(4,2,1)
imshow(img);
title('Original')

subplot(4,2,2)
imhist(img);
title('Original histogram')




% imadjust
subplot(4,2,3)
imshow(pout_imadjust);
title('Imadjust')

subplot(4,2,4)
imhist(pout_imadjust);
title('imadjust histogram')



% histeq
subplot(4,2,5)
imshow(pout_histeq);
title('histeq')

subplot(4,2,6)
imhist(pout_histeq);
title('histeq histogram')





% adapthisteq
subplot(4,2,7)
imshow(pout_adapthisteq);
title('adapthisteq')

subplot(4,2,8)
imhist(pout_adapthisteq);
title('adapthisteq histogram')



