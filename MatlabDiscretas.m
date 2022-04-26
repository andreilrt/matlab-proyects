usuarios = 0:200;
media = 50;
Mbps = 20000000;
poisson = poisspdf(usuarios,media);
TasaEnvio = Mbps./usuarios;
stem(TasaEnvio,poisson);xlabel('Tasa de envío');ylabel('Probabilidad');



