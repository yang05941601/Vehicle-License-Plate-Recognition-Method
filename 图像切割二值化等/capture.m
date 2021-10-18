function image=capture()
p=get_image();
[m,n]=size(p(:,:,1));
one=m;two=n;
for i = 1:one
    for j =1:two
        r=double(p(i,j,1))/255;
        g=double(p(i,j,2))/255;
        b=double(p(i,j,3))/255;
        w=[r,g,b];
        v(i,j)=max(w);
        if(v(i,j)~=0)
            s(i,j)=(v(i,j)-min(w))/v(i,j);
        else
            s(i,j)=0;
        end
        if((v(i,j)-min(w))==0)
            h(i,j)=0;
        elseif(v(i,j)==r)
                h(i,j)=60*(g-b)/(v(i,j)-min(w));
        elseif(v(i,j)==g)
                h(i,j)=120+60*(b-r)/(v(i,j)-min(w));
        elseif(v(i,j)==b)
                h(i,j)=240+60*(r-g)/(v(i,j)-min(w));
        end
        if(h(i,j)<0)
            h(i,j)=h(i,j)+360;
        end
        h(i,j)=mod(h(i,j),360)/360;
    end
end
hsv(:,:,1)=h;
hsv(:,:,2)=s;
hsv(:,:,3)=v;
%imshow(hsv);
image=ones(one,two);
for i = 1:one
    for j = 1:two
        if((hsv(i,j,1)<0.8)&&(hsv(i,j,1)>0.4)&&hsv(i,j,2)>0.5)%蓝色部分输出为0，即黑色，其他全为1
            image(i,j)=0;
        end
    end
end
%imshow(image);
% u=image;
% for i = 2:239
%     for j = 2:319
%         sum=u(i,j)+u(i,j+1)+u(i,j-1)+u(i-1,j)+u(i-1,j-1)+u(i-1,j+1)+u(i+1,j-1)+u(i+1,j)+u(i+1,j+1);
%         if(sum<3)
%             image(i,j)=0;
%         else 
%             image(i,j)=1;
%         end
%     end
% end
% %figure;
% % imshow(image);
% u=image;
% for i = 2:239
%     for j = 2:319
%         sum=u(i,j)+u(i,j+1)+u(i,j-1)+u(i-1,j)+u(i-1,j-1)+u(i-1,j+1)+u(i+1,j-1)+u(i+1,j)+u(i+1,j+1);
%         if(sum<9)
%             image(i,j)=0;
%         else 
%             image(i,j)=1;
%         end
%     end
% end    
% figure;
% imshow(image);            
%             