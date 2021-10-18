function A=stack2rol(x)
shape=size(x);

for i=1:shape(1)
    for j=1:shape(2)
        A((i-1)*shape(2)+j)=x(i,j);
    end
end
A=A';
