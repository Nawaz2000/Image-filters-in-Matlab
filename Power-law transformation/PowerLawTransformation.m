c=1;
Gamma=[0.1 0.3 2];       % Must be vector, Ex:[3 4 5]
x=imread('girl.tif');
x1=double(x);      
y=c*(x1.^Gamma(1));                             % s=c*(r^ ?)
y1=c*(x1.^Gamma(2));
y2=c*(x1.^Gamma(3));

subplot(1,4,1),imshow(x), title('Original image')
subplot(1,4,2),imshow((y),[]), title(['Corrected image Gamma = ',num2str(Gamma(1))])
subplot(1,4,3),imshow((y1),[]), title(['Corrected image Gamma = ',num2str(Gamma(2))])
subplot(1,4,4),imshow((y2),[]), title(['Corrected image Gamma = ',num2str(Gamma(3))])