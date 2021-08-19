function [I5] = gaussianFilter(J)
I5 = J;
[M,N] = size(J);
for i=2:M-1
    for j=2:N-1
        gaussianOrt = uint8((J(i-1,j-1)+(2*J(i-1,j))+J(i-1,j+1)+(2*J(i,j-1))+(4*J(i,j))+(2*J(i,j+1))+J(i+1,j-1)+(2*J(i+1,j))+J(i+1,j+1))/16);
        I5(i,j) = gaussianOrt;
    end
end
end

