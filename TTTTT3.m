clear;
clc;
hit=0   %�I������
counter=zeros(1,79); %�˸m�p�ƾ�
for j=1:100     %��������
for n=1:1600%���W����
for i=1:10      %40�Ӹ˸m���W�ǦC
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
if(max(T(:,2))>1)   %���L�I��
display('HIT')
hit=hit+1;
end
end
end
C=counter/n/j*100;
hit;
% figure ;
% plot(C)
% title('channel ���v') ; 
% xlabel('channel') ;
% ylabel('���v') ;
% Threshold=30; %���v

% for a=1:79;
% if(C(a)>Threshold)
% display('�˸m:')
% display(a)
% end
% end
