function [x] = U(t,d)
d=-d;
a=ones(1,length(t));
b=t<d;
a(b)=0;
x=a;
end

