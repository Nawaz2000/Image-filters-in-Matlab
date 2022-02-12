A = imread('lowlight_11.jpg');
figure, imshow(A);

AInv = imcomplement(A);
figure, imshow(AInv);

BInv = imreducehaze(AInv);
figure, imshow(BInv);

B = imcomplement(BInv);
figure, montage({A, B});

BInv = imreducehaze(AInv, 'Method','approx','ContrastEnhancement','boost');
BImp = imcomplement(BInv);
figure, montage({A, BImp});