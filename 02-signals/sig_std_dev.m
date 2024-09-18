function s0 = sig_std_dev(x_real, x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n=length(x)
s0 = sqrt(1/(n-1) * sum((x - x_real).^2));
end