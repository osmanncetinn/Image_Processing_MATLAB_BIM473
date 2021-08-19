clear; clc;
I=imread('faded.jpeg');
I2 = imread('dark.jpeg');


I3=histeqFunc(I);
I4=histeqFunc(I2);

subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(I3);
imwrite(I3,"faded_histeq.jpeg");
subplot(2,2,3);
imshow(I2);
subplot(2,2,4);
imshow(I4);
imwrite(I4,"dark_histeq.jpeg");