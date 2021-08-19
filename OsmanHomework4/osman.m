clear; clc;
I = imread("osman.jpg");
%I=(I(:,:,1)+I(:,:,2)+I(:,:,3))/3; karanlık oldu
I = I(:,:,1);

I2 = gurultule(I,0.3);
I3 = medianFilter(I2);
I4 = meanFilter(I2);

subplot(1,4,1);
imshow(I);
%imwrite(I,"osman.jpg");
subplot(1,4,2);
imshow(I2);
imwrite(I2,"osman2.jpg");
subplot(1,4,3);
imshow(I3);
imwrite(I3,"osman3.jpg");
subplot(1,4,4);
imshow(I4);
imwrite(I4,"osman4.jpg");