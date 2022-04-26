function Is = CalculoIs(n,Prx,F)
e = 1.602176565e-19; % Constante de carga;
h = 6.62606957e-34; %Constante de plank;
Is = (n*e*Prx)/(h*F);
end

