function mat2txt(x,i)
file=[num2str(i),'.txt'];
fid=fopen(file,'w'); 
%x=ones(14,10);
for i=1:1:14
    for j=1:1:10
        if(j==10)
            fprintf(fid,'%s\r\n',num2str(x(i,j)));
        else
            fprintf(fid,'%s ',num2str(x(i,j)));
        end
    end
end
fclose(fid);

