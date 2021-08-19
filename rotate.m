clear; clc; 

I = imread("lavanta.jpg");
[M,N,C] = size(I);

I2=zeros(N,M,C); %90-270 derece
I3=zeros(M,N,C); %180-360 derece

I01=zeros(N,M,C); I03=zeros(N,M,C); I05=zeros(N,M,C); I07=zeros(N,M,C);
I02=zeros(M,N,C); I04=zeros(M,N,C); I06=zeros(M,N,C); I08=zeros(M,N,C);

x = input("CW or CCW? CW/CCW: " ,'s');
y = input("Degrees? 90/180/270/360: ");



if x== "CW" || x == "cw" % Saat yonu kontrolu
    if y == 90 % Derece kontrolu
        for i=1:M
            for j=1:N
                for c=1:C
                    I2(j,M-i+1,c) = I(i,j,c);
                    %imwrite(I2,"lavanta_90_cw_selected.jpg"); % Yeni bir fotograf yazdırıyoruz
                end
            end
        end
    elseif y == 180
        for i=1:M
            for j=1:N
                for c=1:C
                     I3(M-i+1,N-j+1,c) = I(i,j,c);
                     %imwrite(I3,"lavanta_180_cw_selected.jpg");
                end
            end
        end
    elseif y == 270
        for i=1:M
            for j=1:N
                for c=1:C
                     I2(N-j+1,i,c) = I(i,j,c);
                     %imwrite(I2,"lavanta_270_cw_selected.jpg");
                end
            end
        end
    elseif y == 360
        for i=1:M
            for j=1:N
                for c=1:C
                     I3 (i,j,c) = I(i,j,c);
                     %imwrite(I3,"lavanta_360_cw_selected.jpg");
                end
            end
        end
    else 
        disp("Yanlis Deger Girdiniz!"); % Farklı derece girildiğinde
    end
elseif x== "CCW" || x == "ccw"
        if y == 90
            for i=1:M
                for j=1:N
                    for c=1:C
                        I2(N-j+1,i,c) = I(i,j,c);
                        %imwrite(I2,"lavanta_90_ccw_selected.jpg");
                    end
                end
            end
        elseif y == 180
            for i=1:M
                for j=1:N
                    for c=1:C
                         I3(M-i+1,N-j+1,c) = I(i,j,c);
                         %imwrite(I3,"lavanta_180_ccw_selected.jpg");
                    end
                end
            end
        elseif y == 270
            for i=1:M
                for j=1:N
                    for c=1:C
                         I2(j,M-i+1,c) = I(i,j,c);
                         %imwrite(I2,"lavanta_270_ccw_selected.jpg");
                    end
                end
            end
        elseif y == 360
            for i=1:M
                for j=1:N
                    for c=1:C
                         I3 (i,j,c) = I(i,j,c);
                         %imwrite(I3,"lavanta_360_ccw_selected.jpg");
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
    imwrite(I2, "lavanta_rotated.jpg");
end
if y == 180 || y == 360
    imshow(I3) %180 ve 360 derece dondurulmus matrisler MxN formatinda
    imwrite(I3, "lavanta_rotated.jpg");
end

% Odevde istenilen; tüm fotografları yazdırma

    for i=1:M
            for j=1:N
                for c=1:C
                    I01(j,M-i+1,c) = I(i,j,c);
                    I01 = uint8(I01);
                    imwrite(I01,"lavanta_90_cw.jpg"); % Yeni bir fotograf yazdırıyoruz
                end
            end
    end

    for i=1:M
            for j=1:N
                for c=1:C
                     I02(M-i+1,N-j+1,c) = I(i,j,c);
                     I02 = uint8(I02);
                     imwrite(I02,"lavanta_180_cw.jpg");
                end
            end
    end

    for i=1:M
            for j=1:N
                for c=1:C
                     I03(N-j+1,i,c) = I(i,j,c);
                     I03 = uint8(I03);
                     imwrite(I03,"lavanta_270_cw.jpg");
                end
            end
    end

    for i=1:M
            for j=1:N
                for c=1:C
                     I04(i,j,c) = I(i,j,c);
                     I04 = uint8(I04);
                     imwrite(I04,"lavanta_360_cw.jpg");
                end
            end
    end

    for i=1:M
                for j=1:N
                    for c=1:C
                        I05(N-j+1,i,c) = I(i,j,c);
                        I05 = uint8(I05);
                        imwrite(I05,"lavanta_90_ccw.jpg");
                    end
                end
    end

    for i=1:M
                for j=1:N
                    for c=1:C
                         I06(M-i+1,N-j+1,c) = I(i,j,c);
                         I06 = uint8(I06);
                         imwrite(I06,"lavanta_180_ccw.jpg");
                    end
                end
    end

    for i=1:M
                for j=1:N
                    for c=1:C
                         I07(j,M-i+1,c) = I(i,j,c);
                         I07 = uint8(I07);
                         imwrite(I07,"lavanta_270_ccw.jpg");
                    end
                end
    end

    for i=1:M
                for j=1:N
                    for c=1:C
                         I08(i,j,c) = I(i,j,c);
                         I08 = uint8(I08);
                         imwrite(I08,"lavanta_360_ccw.jpg");
                    end
                end
    end
