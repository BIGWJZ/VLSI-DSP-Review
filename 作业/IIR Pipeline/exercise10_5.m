p1=0.3+0.4i;
p2=0.3-0.4i;
den=round(conv([1 0 0 0 0 0 0 0 0 -p1^9],[1 0 0 0 0 0 0 0 0 -p2^9])*1e10)/1e10;
num1=round(conv([1 p1 p1*p1 0 0 0 0],[1 p2 p2*p2 0 0 0 0])*1e10)/1e10;
zplane(num1,den);
num2=round(conv([1 0 0 p1^3 0 0 p1^6],[1 0 0 p2^3 0 0 p2^6])*1e10)/1e10;
%zplane(num2,den);
num=conv(num1,num2);
%zplane(num,den);