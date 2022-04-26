function [coeficientes] = num_coef(l)
i=l;
while i>0
    coeficientes = entrada;
    mo = mod(coeficientes,2);
    if mo~=0
        i=0
    else
        i=i+1;
    end;
end

