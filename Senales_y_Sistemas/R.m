function [x] = rampa(t,d)
d=-d;
a=t-d;
b=find(t<d);
a(b)=0;
x=a;
end

