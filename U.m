function [X] = U(t,d)
d=-d;
A=ones(1,length(t));
B=t<d;
A(B)=0;
X=A;
end

