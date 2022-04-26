N1=0; %Lateral y angular
n=0;  %Lateral y angular
y=0;  %Lateral
a1=0; %Lateral, longitudinal, diametros
a2=0; %diametros
NA1=0;%Angular, Longitudinal, Apertura
NA2=0;%Apertura
no=0; %Angular
s=0;  %Longitudinal
n0=0; %Longitudinal
alpha=0; %PerdidasL
L=0; %PerdidasL

function [LT] = PerdidasL(alpha, L) 
    LT = alpha*L;
end

function [LT] = Lateral(N1, n, y, a1) 
    L1 = ((16*(N1/n)^2)/(1+(N1/n))^4)*(1/pi)*((2*acos(y/(2*a1)))-((y/a1)*sqrt(1-(y/(2*a1))^2)));
    L2 = ((16*(n/N1)^2)/(1+(n/N1))^4)*(1/pi)*((2*acos(y/(2*a1)))-((y/a1)*sqrt(1-(y/(2*a1))^2)));
    LT = -10*log10(L1+L2);
end

function [LT] = Angular(N1, n, NA1, no)
    delta = ((NA1/N1)^2)/2;
    no = (no*pi)/180;
    L = ((16*(N1/n)^2)/(1+(N1/n))^4)*(1-(no/(pi*N1*sqrt(2*delta))));
    LT = -10*log10(L);
end

function [LT] = Longitudinal(NA1, n0, s, a1)
    LT = -10*log10(1-((s*NA1)/(4*a1*n0)));
end

function [LT] = Diametros(a1, a2)
    if a1>a2 
        LT = -10*log10((a2/a1)^2)
    else
        LT = -10*log10((a1/a2)^2)
    end
end

function [LT] = Aperturas(NA1, NA2)
    if NA1>NA2 
        LT = -10*log10((NA2/NA1)^2)
    else
        LT = -10*log10((NA1/NA2)^2)
    end
end

function [LT] = PerdidasT(V, i)
    LT=0;
    i = i+1;
    while(i>0)
        LT = LT + V(i);
        i = i-1;
    end
end

function [Ps] = PotenciaSalida(Pe,L)
    Dbpe = 10*log10(Pe);
    Dbps = Dbpe + L;
    Ps = 10^(Dbps/10);
end
