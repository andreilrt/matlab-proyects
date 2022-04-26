function [x] = Impulso(t,d)
d=-d;
a=zeros(1,length(t));
b=find(t==d);
a(b)=1;
x=a;
end

