clear; clc;

I = imread("osman.jpg");

I1=I;
I2=I;
I3=I;
I4=I;
I5=I;
I6=I;
I7=I;

%C Color
[M, N, C] = size(I); %fotografin boyut degerlerini aldýk.

for i=1:M
    for j=1:N
        for c=1:C
          I1(M-i+1,j,c) = I(i,j,c); % x ekseni gore simetri
          I2(i,N-j+1,c) = I(i,j,c); % y eksenine gore simetri
        end
    end
    
end

subplot(2,4,1);
imshow(I); % original picture

subplot(2,4,2);
imshow(I1);
imwrite(I1,"osman1.jpg");

subplot(2,4,3);
imshow(I2);
imwrite(I2,"osman2.jpg");


for i=1:M
    for j=1:N
        for c=1:C
          I3(M-i+1,j,c) = I2(i,j,c);
        end
    end
    
end

subplot(2,4,4);
imshow(I3);
imwrite(I3,"osman3.jpg");



inputRed = I(:,:,1); %// Extract each colour plane
inputGreen = I(:,:,2);
inputBlue = I(:,:,3);

outputRed = (inputRed * .393) + (inputGreen *.769) + (inputBlue * .189);
outputGreen = (inputRed * .349) + (inputGreen *.686) + (inputBlue * .168);
outputBlue = (inputRed * .272) + (inputGreen *.534) + (inputBlue * .131);

for i=1:M
    for j=1:N
        for c=1:C
            I4(i,j,c) = 255 - I(i,j,c);
            x = I(i,j,3)*1.9;
            if x > 255
                x=255;
            end
                I5(i,j,3) = x;
        end
    end
    
end

subplot(2,4,5);
imshow(I4); % negative
imwrite(I4,"osman4.jpg");

subplot(2,4,6);
imshow(I5); % B Kanalýný %50 arttýrma
imwrite(I5,"osman5.jpg");


I6 = uint8(cat(3, outputRed, outputGreen, outputBlue)); %sephia

subplot(2,4,7);
imshow(I6);
imwrite(I6,"osman6.jpg");


I7= (I(:,:,1)*0.3+I(:,:,2)*0.58+I(:,:,3)*0.11)/3;

subplot(2,4,8);
imshow(I7); % gri level
imwrite(I7,"osman7.jpg");










