clear; clc;
I1 = imread("soluk.jpeg");

I2 = histeq2(I1,0.1);

I3 = imread("karanlık.jpg");

I4 = histeq2(I3,0.1);

subplot(2,2,1);
imshow(I1);
%imwrite(I,"soluk.jpeg");
subplot(2,2,2);
imshow(I2);
%imwrite(I2,"soluk_histeq.jpeg");
subplot(2,2,3);
imshow(I3);
%imwrite(I3,"karanlık.jpg");
subplot(2,2,4);
imshow(I4);
%imwrite(I4,"karanlık_histeq.jpg");