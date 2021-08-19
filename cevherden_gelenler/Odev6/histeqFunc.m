function [I2] = histeqFunc(I)
 numofpixels=size(I,1)*size(I,2);

I2=uint8(zeros(size(I,1),size(I,2)));

freq=zeros(256,1);

probf=zeros(256,1);

probc=zeros(256,1);

cum=zeros(256,1);

output=zeros(256,1);


%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.


for i=1:size(I,1)

    for j=1:size(I,2)

        value=I(i,j);

        freq(value+1)=freq(value+1)+1;

        probf(value+1)=freq(value+1)/numofpixels;

    end

end


sum=0;

no_bins=255;


%The cumulative distribution probability is calculated. 

for i=1:size(probf)

   sum=sum+freq(i);

   cum(i)=sum;

   probc(i)=cum(i)/numofpixels;

   output(i)=round(probc(i)*no_bins);

end

for i=1:size(I,1)

    for j=1:size(I,2)

            I2(i,j)=output(I(i,j)+1);

    end

end
end

