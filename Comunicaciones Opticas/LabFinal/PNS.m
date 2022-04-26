function Pns = PNS(DF,Is,Id,RL)
e = 1.602176565e-19; % Constante de carga;
Pns = 2*e*DF*(Is+Id)*RL;
end

