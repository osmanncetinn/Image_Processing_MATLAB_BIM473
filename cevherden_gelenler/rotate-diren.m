
I = imread('diren.jpg');
[M,N,C] = size(I);

I2=zeros(N,M,C);
I3=zeros(M,N,C);

yon= input('Yön CW/CCW:' ,'s');
derece = input('Derece 90/180/270/360: ');

if yon=="cw" || yon == "CW"
   if derece == 90
           for i=1:M
                for j=1:N
                    for c=1:C
                        I2(j,M-i+1,c) = I(i,j,c);
                        I2 = uint8(I2);
                        subplot(1,2,1);
                        imshow(I);
                        subplot(1,2,2);
                        imshow(I2);
                        imwrite(I2, 'dondurulmus_foto.jpg');
                    end
                end
           end
   elseif derece == 180
           for i=1:M
                for j=1:N
                    for c=1:C
                        I3(M-i+1,N-j+1,c) = I(i,j,c);
                        I3 = uint8(I3);
                        subplot(1,2,1);
                        imshow(I);
                        subplot(1,2,2);
                        imshow(I3);
                        imwrite(I3, 'dondurulmus_foto.jpg');

                    end
                end
           end
   elseif derece == 270
           for i=1:M
                for j=1:N
                    for c=1:C
                        I2(N-j+1,i,c) = I(i,j,c);
                        I2 = uint8(I2);
                        subplot(1,2,1);
                        imshow(I);
                        subplot(1,2,2);
                        imshow(I2);
                        imwrite(I2, 'dondurulmus_foto.jpg');
                    end
                end
            end
   elseif derece == 360
           for i=1:M
               for j=1:N
                   for c=1:C
                       I3(i,j,c) = I(i,j,c);
                       I3 = uint8(I3);
                       subplot(1,2,1);
                        imshow(I);
                        subplot(1,2,2);
                        imshow(I3);
                        imwrite(I3, 'dondurulmus_foto.jpg');

                   end
               end
           end
   else
       disp('Hatali Giriþ');
   end
elseif yon == "ccw" || yon == "CCW"
   if derece == 90
           for i=1:M
                for j=1:N
                    for c=1:C
                        I2(N-j+1,i,c) = I(i,j,c);
                        I2 = uint8(I2);
                        subplot(1,2,1);
                        imshow(I);
                        subplot(1,2,2);
                        imshow(I2);
                        imwrite(I2, 'dondurulmus_foto.jpg');
                    end
                end
           end
   elseif derece == 180
           for i=1:M
                for j=1:N
                    for c=1:C
                        I3(M-i+1,N-j+1,c) = I(i,j,c);
                        I3 = uint8(I3);
                        subplot(1,2,1);
                        imshow(I);
                        subplot(1,2,2);
                        imshow(I3);
                        imwrite(I3, 'dondurulmus_foto.jpg');

                    end
                end
           end
   elseif derece ==  270
           for i=1:M
                for j=1:N
                    for c=1:C
                        I2(j,M-i+1,c) = I(i,j,c);
                        I2 = uint8(I2);
                        subplot(1,2,1);
                        imshow(I);
                        subplot(1,2,2);
                        imshow(I2);
                        imwrite(I2, 'dondurulmus_foto.jpg');
                    end
                end
            end
   elseif derece ==  360
           for i=1:M
               for j=1:N
                   for c=1:C
                       I3(i,j,c) = I(i,j,c);
                       I3 = uint8(I3);
                       subplot(1,2,1);
                        imshow(I);
                        subplot(1,2,2);
                        imshow(I3);
                        imwrite(I3, 'dondurulmus_foto.jpg');


                   end
               end
           end
   else
      disp('Hatali Giris');
   end
end
   