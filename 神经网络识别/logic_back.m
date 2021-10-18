function [nw1,nw2,nb1,nb2]=logic_back(x,y,a2,a1,m,w1,w2,b1,b2,alpha1,alpha2)
%ºóÏò·´À¡
dz2=a2-y;
dw2=1/m*dz2*a1';
db2=1/m*sum1(dz2);
sig1=(1-a1).*a1;
dz1=w2'*dz2.*sig1;
dw1=1/m*dz1*x';
db1=1/m*sum1(dz1);
nw2=w2-alpha2*dw2;
nb2=b2-alpha2*db2;
nw1=w1-alpha1*dw1;
nb1=b1-alpha1*db1;