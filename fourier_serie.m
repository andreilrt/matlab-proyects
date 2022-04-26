a=1; %Semianchura del pulso rectangular a<pi
n=7; %número de terminos
hold on
x=[-pi -a -a a a pi];
y=[0 0 1 1 0 0];
plot(x,y,'b','linewidth',1.5)
% x=linspace(-pi,pi,100);
% y=zeros(length(x),1);