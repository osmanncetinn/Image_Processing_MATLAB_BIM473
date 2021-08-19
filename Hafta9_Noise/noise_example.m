clear; clc;
I = imread("afghan_girl.jpeg");
J = I;

p3 = 0.09; %default
b = J;
x = rand(size(b));
d = x < p3/2;
b(d) = 0; % Minimum value
d = find(x >= p3/2 & x < p3);
b(d) = 1; % Maximum (saturated) value


I2=b;
I3=b;
[M,N] = size(I2);

for i=2:M-1
    for j=2:N-1
         %ort = (J(i-1,j-1)+J(i-1,j)+J(i-1,j+1)+...
          %    J(i,j-1)+J(i,j+1)+...
           %   J(i+1,j-1)+J(i+1,j)+J(i+1,j+1)/8); 
        ort = uint8(mean([I2(i-1,j-1),I2(i-1,j),I2(i-1,j+1),I2(i,j-1),I2(i,j+1),I2(i+1,j-1),I2(i+1,j),I2(i+1,j+1)]));
        I3(i,j)=ort;
    end
end

subplot(1,3,1);
imshow(I);
subplot(1,3,2);
imshow(b);
subplot(1,3,3);
imshow(I3);