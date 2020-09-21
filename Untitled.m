clc;
clear;

N=25;   %¸Ë¸m¼Æ¶q
Collision=zeros(100,1);
for time=1:100  
    total=0;
    X=rand(1500,N);
    Mod=mod(floor(X*10000),79);
    for ch1=1:1500;
        T=tabulate(Mod(ch1,:));
        [A B]=size(T);
        hit=0;
        for ch2=1:A
            if(T(ch2,2)>=2)
                hit=1;
            end
        end
        total=total+hit;
    end
    Collision(time,1)=total/(1500)  


end
% Collision(time)=total/(1500)  




