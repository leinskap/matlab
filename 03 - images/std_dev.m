function s0 = std_dev(x,x_real)
n=size(x,1)*size(x,2);
s0 = sqrt(1/(n-1) * sum(sum((x - x_real).^2)));
end