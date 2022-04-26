function [LLat] = Lateral(n1, n2, y, a1) 
nlat = ((16*(n1/n2)^2)/(1+(n1/n2))^4)*(1/pi)*((2*acos(y/(2*a1)))-((y/a1)*sqrt(1-(y/(2*a1))^2)));
LLat = -10*log10(nlat);
end

