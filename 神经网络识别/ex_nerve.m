%function [w1,w2,b1,b2]=ex_nerve(x,y,n)
n=2000;
sp=size(x);
[w1,w2,b1,b2]=init_all(sp(1),80,10);%子函数
alpha1=0.5;  %学习率
alpha2=0.2;  %学习率
x_s=size(x);
cost_last=1000;
for i=1:n
    a1=forward_algo(w1,x,b1);%子函数
    a2=forward_algo(w2,a1,b2);
    cost=cost_func(a2,y);%子函数
    if(abs(cost_last-cost)<0.00001)
        break
    end
    cost_last=cost;
    [w1,w2,b1,b2]=logic_back(x,y,a2,a1,x_s(2),w1,w2,b1,b2,alpha1,alpha2);%子函数
    %res=test_nerve(w1,w2,b1,b2,x(:,));
    %result(i)=res(5);
end
%end
        


%  title('非对应输出口识别结果随训练次数的收敛')
%  xlabel('次数')
%  ylabel('识别结果')
