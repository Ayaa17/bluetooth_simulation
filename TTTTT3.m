clear;
clc;
hit=0   %碰撞次數
counter=zeros(1,79); %裝置計數器
for j=1:100     %模擬次數
for n=1:1600%跳頻次數
for i=1:10      %40個裝置跳頻序列
G( 1, i)=mod((10*(n-1)+i),79)+1;
G( 2, i)=mod((10*(n-1)+10+i),79)+1;
G( 3, i)=mod((10*(n-1)+20+i),79)+1;
G( 4, i)=mod((10*(n-1)+30+i),79)+1;
counter(G( 1, i))=counter(G( 1, i))+1;
counter(G( 1, i))=counter(G( 2, i))+1;
counter(G( 1, i))=counter(G( 3, i))+1;
counter(G( 1, i))=counter(G( 4, i))+1;
end
G
T=tabulate(G(:));
if(max(T(:,2))>1)   %有無碰撞
display('HIT')
hit=hit+1;
end
end
end
C=counter/n/j*100;
hit;
% figure ;
% plot(C)
% title('channel 機率') ; 
% xlabel('channel') ;
% ylabel('機率') ;
% Threshold=30; %機率

% for a=1:79;
% if(C(a)>Threshold)
% display('裝置:')
% display(a)
% end
% end
