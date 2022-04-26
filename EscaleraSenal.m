%%ESCALERA
%%SEÑAL ESCALON UNITARIO

t=-10:0.2:10;
Esc=FuncionEscalon(t,0)+-13*FuncionEscalon(t,-1)+3*FuncionEscalon(t,-3);
plot(t,Esc)
