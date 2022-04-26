function[coeficientes]=num_coeficientes(entrada)
i=1;
    while i>0
        coeficientes=entrada;
        mo=mod(coeficientes,2);
        if mo~=0
            i=0;
        else
            i=i+1;
        end
    end
    coeficientes=(coeficientes-1)/2;
end









