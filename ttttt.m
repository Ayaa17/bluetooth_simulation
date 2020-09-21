clc;
clear;

N=10;   %¸Ë¸m¼Æ¶q

pro=zeros(100,1);
for j=1:100
    hit=0;
for i=1:1500;
    X=rand(1,N);
    A1=floor(mod((X(1,1)*100000),79));
    A2=floor(mod((X(1,2)*100000),79));
   
         if(A1==A2)
        hit=hit+1;
         end             
end    
pro(j,1)=hit/1500*100

end


