function new_s=trans_image2()
p=capture;
[m,n]=size(p);
u=p;
one=m;two=n;
% for i=1:1:m
%     k=0;
%     for j=1:1:n
%         if(u(i,j)==1)
%             k=k+1;
%         end
%     end
%     if((n-k)<200)
%         continue;
%     else
%         num1=i;
%         break;
%     end
% end
% num2=0;
% for i=m:-1:1
%     k=0;
%     for j=1:1:n
%         if(u(i,j)==1)
%             k=k+1;
%         end
%     end
%     if((n-k)<600)
%         continue;
%     else
%         num2=i;
%         break;
%     end
% end
uSobel = ones(one,two);
for i = 2:m - 1   %sobel边缘检测
    for j = 2:n - 1
        G(i,j) = -u(i+1,j+1)-u(i+1,j)-u(i,j+1)-u(i,j)+u(i+1,j-1)+u(i-1,j+1)+u(i-1,j-1)+u(i,j-1)+u(i-1,j);
%         Gy(i,j) = u(i-1,j-1)+u(i-1,j)+u(i,j-1);
        if(G(i,j)>3&&u(i,j)==0)
        uSobel(i,j) = 0; 
        end
    end
end
xl=one;%左上顶点坐标确定
yu=two;
%240,320
for i=1:m
    for j=1:n
        if(uSobel(i,j)==0)
            if((yu+xl)>(i+j))
                xl=j;
                yu=i;
            end
        end
    end
end

uSobel = ones(one,two);
for i = 2:m-1  %sobel边缘检测
    for j = 2:n - 1
        G(i,j) = -u(i-1,j-1)-u(i-1,j)-u(i,j-1)-u(i,j)+u(i+1,j-1)+u(i-1,j+1)+u(i+1,j+1)+u(i,j+1)+u(i+1,j);
        if(G(i,j)>3&&u(i,j)==0)
        uSobel(i,j) = 0; 
        end
    end
end
xr=0;
yd=0;%右下顶点坐标确定
for i=1:one
    for j=1:two
        if(uSobel(i,j)==0)
            if((yd+xr)<=(i+j))
                yd=i;
                xr=j;
            end
        end
    end
end

uSobel = ones(one,two);
for i = 2:m-1 %sobel边缘检测
    for j = 2:n - 1
        G(i,j) = u(i-1,j-1)-u(i-1,j)+u(i,j-1)-u(i,j)+u(i+1,j-1)-u(i-1,j+1)+u(i+1,j+1)-u(i,j+1)+u(i+1,j);
        if(G(i,j)>3&&u(i,j)==0)
        uSobel(i,j) = 0; 
        end
    end
end
x1=two;%左下顶点坐标确定
y1=0;
for i=1:one
    for j=1:two
        if(uSobel(i,j)==0)
            if((x1-y1)>=(j-i))
                y1=i;
                x1=j;
            end
        end
    end
end

new_s=ones(16,87);
left_up=[xl,yu];
right_down=[xr,yd];
left_down=[x1,y1];
krow1=((right_down(2)-left_down(2))/87);
krow2=((left_down(2)-left_up(2))/16);
kcol1=((right_down(1)-left_down(1))/87);
kcol2=((left_down(1)-left_up(1))/16);
for i=1:16
    for j=1:87
        row=floor(i*krow2+j*krow1+yu);
        col=floor(j*kcol1+i*kcol2+xl);
        new_s(i,j)=p(row,col);
    end
end
%imshow(p);
imshow(new_s);