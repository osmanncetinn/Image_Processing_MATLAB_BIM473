clear; clc;

v= VideoReader("keman.mp4");
H=v.Height;
W=v.Width;

s = struct('cdata',zeros(H,W,3,'uint8'),'colormap',[]);

s2 = struct('cdata',zeros(H,W,3,'uint8'),'colormap',[]);

s3 = struct('cdata',zeros(H,W,3,'uint8'),'colormap',[]);

s4 = struct('cdata',zeros(H,W,3,'uint8'),'colormap',[]);


k=1;
while hasFrame(v)
    s(k).cdata = readFrame(v);
    k=k+1;
end

kk=k;
sayac=1;

for i=1:k-1
    sayac=sayac+1;
    
    s2(kk-i).cdata = 255 - s(i).cdata; %Contrast al�n�p tersten oynatma 
    
    s3(sayac).cdata = gurultule(s(i).cdata , 0.5); %videoyu g�r�lt�le
    
    s4(sayac).cdata = medianFilter(s3(sayac).cdata); %medianFilter ile temizleme
end



subplot(2,2,1);
movie(s); %orjinal video
subplot(2,2,2);
movie(s2); %ters ve contrastl� video
subplot(2,2,3);
movie(s3); %g�r�lt�l� video
subplot(2,2,4);
movie(s4); %median ile temizlenmi� video 

