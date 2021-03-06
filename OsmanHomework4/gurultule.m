function [b] = gurultule(I,noise)
p3=noise;
J = I;
b = J;
x = rand(size(b));
d = x < p3/2;
b(d) = 0; % Minimum value
d = find(x >= p3/2 & x < p3);
b(d) = 1; % Maximum (saturated) value
end
