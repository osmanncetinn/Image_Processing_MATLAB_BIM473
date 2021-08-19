clear; clc;

I = imread("araba.jpg");
I2=I;

[M, N, C] = size(I); %fotografin boyut degerlerini aldýk.
%I2 = zeros(M/2,N/2,C);
%I2 = uint8(I2);

for i=1:2:M     %image in kolon ve satýr sayýsýný yarýya indirmek için-
    for j=1:2:N    % - 2 serli(2ser artar) döngü yaptýk 
        for c=1:C        
            I2(i/2+0.5,j/2+0.5,c) = (I(i,j,c)+I(i,j,c)+I(i,j,c)+I(i,j,c))/4;     
        end
    end
end

I2 = uint8(I2);

subplot(1,2,1);
imshow(I);          %original image
subplot(1,2,2);
imshow(I2);         %resize image
%imwrite(I2,"araba.jpg");


%imshow(I2(1:M/2,1:N/2,:))  % burasýný command window a yazdýk ve küçük
                                %resmi gördük
                   
%imshow(I(1:2:end, 1:2:end,:))  % pixellerin yarýsýný okuyarak gider yani
                                    %image bozulur


                                
%deneme yaptým
% if I2 > 255
%                 I2=255;                   
%                 end
%                   a=mod(i,2)
%                     b=mod(i,2)
%             if a ==1
%                 i=i+0.5;
%             end
%             if b ==1
%                 j=j+0.5;
%             end
%             I2(i,j,c)=(i,j,c);

