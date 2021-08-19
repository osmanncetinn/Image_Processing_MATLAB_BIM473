clear; clc;

I = rgb2gray(imread("afghan_girl.jpeg"));

I2 = noisingFunc(I,0.3); %noised image I2

I3 = meanFilter(I2); %denoised with meanFilter

I4 = medianFilter(I2); %denoised with medianFilter

I5 = gaussianFilter(I2);



subplot(2,2,1);
imshow(I);
subplot(2,2,2);
imshow(I2);
imwrite(I2,"noisedImage.jpeg");
subplot(2,2,3);
imshow(I3);
imwrite(I3,"meanFiltered.jpeg");
subplot(2,2,4);
imshow(I5);
imwrite(I5,"gaussianFiltered.jpeg");




