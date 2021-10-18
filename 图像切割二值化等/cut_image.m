%function y=cut_image()
p=trans_image2();
mid=zeros(14,10,7);
for k=1:7
    for i=1:1:14
        for j=1:1:10
            if(k>=3&&k<7)
            t=j+5; 
            else if(k<3)
            t=j+1;
            else if(k==7)
            t=j+5;
                   
                end
                end
            end
            mid(i,j,k)=p(i+1,t+(k-1)*12);            
        end
    end
end
% for i=3:1:7
%     mat2txt(mid(:,:,i),i);
% end
subplot(3,3,1);
imshow(mid(:,:,1));
subplot(3,3,2);
imshow(mid(:,:,2));
subplot(3,3,3);
imshow(mid(:,:,3));
subplot(3,3,4);
imshow(mid(:,:,4));
subplot(3,3,5);
imshow(mid(:,:,5));
subplot(3,3,6);
imshow(mid(:,:,6));
subplot(3,3,7);
imshow(mid(:,:,7));
subplot(3,3,8);
imshow(p);
data=[];
for i=1:7
    mid_dat=stack2rol(mid(:,:,i));
    data=[data,mid_dat];
end