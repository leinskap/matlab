function s = medfilt2(a,n)
m = zeros(size(a,1)+n-1, size(a,2)+n-1);
s = zeros(size(a));
k=(n-1)/2;

m(1:k,1:k) = a(1,1);
m(size(m,1)-k:size(m,1),1:k) = a(size(a,1),1);
m(1:k, size(m,2)-k:size(m,2)) = a(1, size(a,2));
m(size(m,1)-k:size(m,1), size(m,2)-k:size(m,2)) = a(size(a,1), size(a,2));


for i=1:k
    m(i, k:size(a,2)+k-1) = a(1,:);
    m(k:size(a,1)+k-1, i) = a(:,1);
end
for i=1:size(a,1);
    m(i+k,2:size(a,2)+1) = a(i,:);
end
for i=1:size(a,1)
    for j=1:size(a,2)
        s(i,j) = median(m(i:i+n-1, j:j+n-1),'all');
    end
end
end