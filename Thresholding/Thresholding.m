img = imread('notes.png');
img = rescale(img);
imshow(img)
title('Original Image')

op = imbinarize(img,'adaptive','ForegroundPolarity','dark','Sensitivity',0.3);
op = rescale(op);

figure
imshow(op)
title('Binary Version of Image')

rangeIm = getrangefromclass(img)
rangeOp = getrangefromclass(op)

peaksnr = psnr(img,op);
fprintf('\n The Peak-SNR value of histeq is %0.4f', peaksnr);