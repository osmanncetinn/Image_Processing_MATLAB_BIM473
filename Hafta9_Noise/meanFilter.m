function [I3] = meanFilter(J)
I3 = J;
[M,N] = size(J);
for i=2:M-1
    for j=2:N-1
         %ort = (J(i-1,j-1)+J(i-1,j)+J(i-1,j+1)+...
          %    J(i,j-1)+J(i,j+1)+...
           %   J(i+1,j-1)+J(i+1,j)+J(i+1,j+1)/8); 
        ort = uint8(mean([J(i-1,j-1),J(i-1,j),J(i-1,j+1),J(i,j-1),J(i,j),J(i,j+1),J(i+1,j-1),J(i+1,j),J(i+1,j+1)]));
        I3(i,j)=ort;
    end
end
end

