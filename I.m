function [X] = I(t,d)
d=-d;
A=zeros(1,length(t));
B=t==d;
A(B)=inf;
X=A;
end
