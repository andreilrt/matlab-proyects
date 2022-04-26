function [y] = Convolucion(x,h,t)
if(length(x)==length(h))
 if(length(h)==length(t))
     n=(max(t)-min(t))/length(t);
     y=n*conv(x,h,'same');
  end
 end
end

