
resim = imread('araba.jpg');

x1 = input('x1 foto�raf�n kesilece�i sol �st k�sm�n X koordinat�n� giriniz.');
y1 = input('y1 foto�raf�n kesilece�i sol �st k�sm�n Y koordinat�n� giriniz.');
x2 = input('x2 foto�raf�n kesilece�i sa� alt k�sm�n X koordinat�n� giriniz.');
y2 = input('y2 foto�raf�n kesilece�i sa� alt k�sm�n Y koordinat�n� giriniz.');

[resim2, rect] =  imcrop(resim,[x1 y1 x2 y2]);
figure;
imshow(resim2);

imwrite(resim2,'Example.jpg');
