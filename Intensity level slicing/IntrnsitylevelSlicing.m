p=imread('cameraman.tif');
z = p;
[m,n]=size(p);
for i=1:m
    for j=1:n
        if((z(i,j))>100)&&(z(i,j)<255)
            z(i,j)=255;
        else
            z(i,j)=p(i,j); %condition for grey level slicing with background
        end
    end
end
figure(1); 
imshow(p)
title('orignal image')
figure(2); 
imshow(z)
title('grey level slicing with background')

peaksnr = psnr(p,z);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr);