a=imread('log2.jpg');
figure
imshow(a);
title 'Original Image'
b=im2double(a);
s=(1*log(1+b))*256;
s1=uint8(s);
figure
imshow(s1);
title 'c=1'

sp=(2*log(1+b))*256;
s2=uint8(sp);
figure
imshow(s2);
title 'c=2'


sp2=(3*log(1+b))*256;
s3=uint8(sp2);
figure
imshow(s3);
title 'c=3'