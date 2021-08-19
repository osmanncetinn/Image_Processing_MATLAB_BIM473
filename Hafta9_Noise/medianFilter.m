function [I3] = medianFilter(J)
I3 = J;
[M,N] = size(J);
for i=2:M-1
    for j=2:N-1
         %ort = (J(i-1,j-1)+J(i-1,j)+J(i-1,j+1)+...
          %    J(i,j-1)+J(i,j+1)+...
           %   J(i+1,j-1)+J(i+1,j)+J(i+1,j+1)/8); 
        ortanca = uint8(median([J(i-1,j-1),J(i-1,j),J(i-1,j+1),J(i,j-1),J(i,j),J(i,j+1),J(i+1,j-1),J(i+1,j),J(i+1,j+1)]));
        I3(i,j)=ortanca;
    end
end
end

