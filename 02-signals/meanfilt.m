function m = meanfilt(x, N)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
   x = x'
   m = zeros(N, length(x))
   m(1:N) = x(1:N)
   for i=1:N
       m(1:N, i) = x(i:N+i-1)
   end
   for i=1:length(x)-N
       m(1:N, i+N) = x(i:N+i-1)
   end
   m = mean(m)

end