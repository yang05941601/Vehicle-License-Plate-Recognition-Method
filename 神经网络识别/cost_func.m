function cost=cost_func(y_x,y)
%����
y_s=size(y);
m=y_s(1)*y_s(2);
%size(y_x)
%size(y)
%���ۺ���
cost=-1/m*sum(sum(y.*log(y_x)+(1-y).*log(1-y_x)));