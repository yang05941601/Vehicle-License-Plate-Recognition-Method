clear,clc
all_words='0123456789';
z=eye(10);%�ԽǾ���

x=[];
y=[];
for i = 1:10
    if(i==1)
        for j = 1:85
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%����
                y = [y,z(:,i)];%��ǩ�������һ�г���1��Ϊ0����10�г���1��Ϊ9

            end
        end
    elseif(i==2)
        for j = 1:67
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
     elseif(i==3)
        for j = 1:100
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
     elseif(i==4)
        for j = 1:100
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
     elseif(i==5)
        for j = 1:13
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
     elseif(i==6)
        for j = 1:77
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
     elseif(i==7)
        for j = 1:100
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
     elseif(i==8)
        for j = 1:100
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
     elseif(i==9)
        for j = 1:100
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
     elseif(i==10)
        for j = 1:76
            try
                name = ['/Users/a123/Documents/MATLAB/chepai_data/',all_words(i),num2str(j-1),'.txt'];
                a = textread(name);
                a = a(1:14,1:10);           
                b = stack2rol(a);            
                x = [x,b];%?????
                y = [y,z(:,i)];%??��????????��???????????1?����??0????34??????1?����??Z
            end
        end
    end
end

