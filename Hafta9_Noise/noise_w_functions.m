clear; clc;
I = imread("afghan_girl.jpeg");


I2=gurultule(I,0.09);


I3 = medianFilter(I2);

I4= meanFilter(I2);


subplot(1,4,1);
imshow(I);
subplot(1,4,2);
imshow(I2);
subplot(1,4,3);
imshow(I3);
subplot(1,4,4);
imshow(I4);