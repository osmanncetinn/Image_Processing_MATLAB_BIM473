clear; clc;

I = imread("araba.jpg");
I2=I;


R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

I2(:,:,1) = B;
I2(:,:,1) = R;
I2(:,:,1) = G;

I3 = I +50;



subplot(1,4,1);
imshow(I);          %Original image
subplot(1,4,2);
imshow(I2);         %RGB change image
subplot(1,4,3);
imshow(I3);         %Parlaklýk arttýrýmý
