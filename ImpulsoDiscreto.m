function[x]=ImpulsoDiscreto(n,p)
A=zeros(1,length(n));
B=n==p;
A(B)=1;
x=A;
end