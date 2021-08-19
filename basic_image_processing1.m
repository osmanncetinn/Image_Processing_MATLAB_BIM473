clear; clc;

I = imread("cevher.jpeg");

I2=I;
I3=I;
I5=I;
%C Color
[M, N, C] = size(I); %fotografin boyut degerlerini aldýk.


for i=1:M
    for j=1:N
        for c=1:C
          I2(i,N-j+1,c) = I(i,j,c); % y eksenine gore simetri
          I3(M-i+1,j,c) = I(i,j,c); % x ekseni gore simetri

        end
    end
    
end
I4=I2;
for i=1:M
    for j=1:N
        for c=1:C
 
          I5(M-i+1,j,c) = I4(i,j,c);

        end
    end
    
end
subplot(1,4,1);
imshow(I); % original picture
subplot(1,4,2);
imshow(I2);
imwrite(I2,"cevher1.jpeg");
subplot(1,4,3);
imshow(I3);
imwrite(I3,"cevher2.jpeg");
subplot(1,4,4);
imshow(I5);
imwrite(I5,"cevher3.jpeg");



