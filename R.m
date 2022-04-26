function [X] = R(t,d)
d=-d;
A=t-d;
B=t<d;
A(B)=0;
X=A;
end
