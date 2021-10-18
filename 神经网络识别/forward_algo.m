function [val,z]=forward_algo(w,X,b)
%«∞œÚ‘ÀÀ„
ws=size(w);
Xs=size(X);
b1=zeros(ws(1),Xs(2));
for i = 1:Xs(2)
    b1(:,i)=b;
end
z=w*X+b1;
val=1./(1+exp(-z));
