format rat
M=6;
N=2;
a=[4/3 -5/12];
den=[1 -4/3 5/12];
r=zeros(1,M);
r(1,1)=1;
for i=1:M-1
    for k=1:N
        if (i-k)>=0
            r(1,i+1)=r(1,i+1)+a(1,k)*r(1,i-k+1);
        end
    end
end
num=r;
num(1,M+N)=0;
den=round(conv(den,r)*1e8)/1e8;  
sys=tf(num,den,1);
zplane(num,den);
