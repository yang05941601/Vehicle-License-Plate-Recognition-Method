%shibie
result=[];
for j=3:1:7
   res=test_nerve(w1,w2,b1,b2,data(:,j));
   for i=1:length(res)
       if res(i)>0.1
           result=[result,all_words(i)];
       end
    end
end
%shibie
% result=['z','z','z','z','z','z','z'];
% pdf=0.1;
% for j=3:1:7
%    res=test_nerve(w1,w2,b1,b2,data(:,j));
%    for i=1:length(res)
%        while(result(j)=='z')
%            if res(i)>pdf
%                result(j)=all_words(i);
%            else
%                pdf=pdf-0.1;
%            end
%        end
%     end
% end