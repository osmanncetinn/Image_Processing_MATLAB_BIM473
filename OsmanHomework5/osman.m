clear; clc;
I = imread("osman.jpg");
%I=(I(:,:,1)+I(:,:,2)+I(:,:,3))/3; karanlık oldu
I = I(:,:,1);

I2 = gurultule(I,0.3);
I3 = gaussianFilter2(I2,3);
I4 = meanFilter(I2);

subplot(2,2,1);
imshow(I);
%imwrite(I,"osman.jpg");
subplot(2,2,2);
imshow(I2);
%imwrite(I2,"osman_gurultu.jpg");
subplot(2,2,3);
imshow(I3);
%imwrite(I3,"osman_gaussianFilter.jpg");
subplot(2,2,4);
imshow(I4);
%imwrite(I4,"osman_meanFilter.jpg");