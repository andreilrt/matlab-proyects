function LAng = Angular(n1, n2, NA, Theta)
delta = ((NA/n1)^2)/2;
Theta = (Theta*pi)/180;
L1 = ((16*(n1/n2)^2)/(1+(n1/n2))^4)*(1-(Theta/(pi*n1*sqrt(2*delta))));
LAng = -10*log10(L1);
end

