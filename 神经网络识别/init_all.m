function [W1,W2,b1,b2]=init_all(row,c2,out)
%��ʼ�����������
W1=(1-2*rand(c2,row))*2/row;
b1=(1-2*rand(c2,1))*2/row;
W2=(1-2*rand(out,c2))*2/c2;
b2=(1-2*rand(out,1))*2/c2;
