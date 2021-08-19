clear; clc; 

I = imread("cevher.jpeg");
[M,N,C] = size(I);

I2=zeros(N,M,C); %90-270 derece
I3=zeros(M,N,C); %180-360 derece

x = input("CW or CCW? CW/CCW: " ,'s');
y = input("Degrees? 90/180/270/360: ");



if x== "CW" || x == "cw" % girilen saat yonunu kontrol ettik
    if y == 90 % girilen dereceyi kontrol ettik
        for i=1:M
            for j=1:N
                for c=1:C
                    I2(j,M-i+1,c) = I(i,j,c);
                end
            end
        end
    elseif y == 180
        for i=1:M
            for j=1:N
                for c=1:C
                     I3(M-i+1,N-j+1,c) = I(i,j,c);
                end
            end
        end
    elseif y == 270
        for i=1:M
            for j=1:N
                for c=1:C
                     I2(N-j+1,i,c) = I(i,j,c);
                end
            end
        end
    elseif y == 360
        for i=1:M
            for j=1:N
                for c=1:C
                     I3 (i,j,c) = I(i,j,c);
                end
            end
        end
    else 
        disp("Yanlis Deger Girdiniz!"); % belirtilen degerler disinda deger girilirse
    end
elseif x== "CCW" || x == "ccw"
        if y == 90
            for i=1:M
                for j=1:N
                    for c=1:C
                        I2(N-j+1,i,c) = I(i,j,c);
                    end
                end
            end
        elseif y == 180
            for i=1:M
                for j=1:N
                    for c=1:C
                         I3(M-i+1,N-j+1,c) = I(i,j,c);
                    end
                end
            end
        elseif y == 270
            for i=1:M
                for j=1:N
                    for c=1:C
                         I2(j,M-i+1,c) = I(i,j,c);
                    end
                end
            end
        elseif y == 360
            for i=1:M
                for j=1:N
                    for c=1:C
                         I3 (i,j,c) = I(i,j,c);
                    end
                end
            end
        else 
            disp("Yanlis Deger Girdiniz!");
        end
else
    disp("Yanlis Deger Girdiniz!");
end



I2 = uint8(I2);
I3 = uint8(I3);

subplot(1,2,1);
imshow(I);
subplot(1,2,2);
if y == 90 || y == 270
    imshow(I2); %90 ve 270 derece dondurulmus matrisler NxM formatinda
    imwrite(I2, "cevher_rotated.jpg");
end
if y == 180 || y == 360
    imshow(I3) %180 ve 360 derece dondurulmus matrisler MxN formatinda
    imwrite(I3, "cevher_rotated.jpg");
end