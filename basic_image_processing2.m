clear; clc;

I=imread("cevher.jpeg");
I2=I;
I3=I;
[M,N,C] = size(I);

inputRed = I(:,:,1); %// Extract each colour plane
inputGreen = I(:,:,2);
inputBlue = I(:,:,3);

outputRed = (inputRed * .393) + (inputGreen *.769) + (inputBlue * .189);
outputGreen = (inputRed * .349) + (inputGreen *.686) + (inputBlue * .168);
outputBlue = (inputRed * .272) + (inputGreen *.534) + (inputBlue * .131);

I4 = uint8(cat(3, outputRed, outputGreen, outputBlue)); %sephia
I5= (I(:,:,1)*0.3+I(:,:,2)*0.58+I(:,:,3)*0.11)/3;
for i=1:M
    for j=1:N
        for c=1:C
            I2(i,j,c) = 255 - I(i,j,c);
            x = I(i,j,3)*1.5;
            if x > 255 
                I3 = x;
            end
        end
    end
    
end


subplot(1,5,1);
imshow(I); %original
subplot(1,5,2);
imshow(I2); % negative
imwrite(I2,"cevher4.jpeg");
subplot(1,5,3);
imshow(I3); % B channel +%50 brightness
imwrite(I3,"cevher5.jpeg");
subplot(1,5,4);
imshow(I4); % sephia
imwrite(I4,"cevher5.jpeg");
subplot(1,5,5);
imshow(I5); % gri level
imwrite(I5,"cevher6.jpeg");

