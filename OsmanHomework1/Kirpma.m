
resim = imread('araba.jpg');

x1 = input('x1 fotoðrafýn kesileceði sol üst kýsmýn X koordinatýný giriniz.');
y1 = input('y1 fotoðrafýn kesileceði sol üst kýsmýn Y koordinatýný giriniz.');
x2 = input('x2 fotoðrafýn kesileceði sað alt kýsmýn X koordinatýný giriniz.');
y2 = input('y2 fotoðrafýn kesileceði sað alt kýsmýn Y koordinatýný giriniz.');

[resim2, rect] =  imcrop(resim,[x1 y1 x2 y2]);
figure;
imshow(resim2);

imwrite(resim2,'Example.jpg');
