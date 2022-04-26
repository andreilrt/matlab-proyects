%% 8QPSK
f = 1000;
t = 0:0.00001:0.001; 
wt = (2*pi*f.*t);
phi = (247.51*pi)/180;
b0 = sqrt(2).*sin(wt + phi);
suptitle("8 QPSK");
subplot(3,3,1);
plot(t,b0);
title("000");
phi = (202.48*pi)/180;
b1 = sqrt(2).*sin(wt + phi);
subplot(3,3,3);
plot(t,b1);
title("001");
phi = (292.48*pi)/180;
b2 = sqrt(2).*sin(wt + phi);
subplot(3,3,4);
plot(t,b2);
title("010");
phi = (337.51*pi)/180;
b3 = sqrt(2).*sin(wt + phi);
subplot(3,3,5);
plot(t,b3);
title("011");
phi = (112.48*pi)/180;
b4 = sqrt(2).*sin(wt + phi);
subplot(3,3,6);
plot(t,b4);
title("100");
phi = (157.51*pi)/180;
b5 = sqrt(2).*sin(wt + phi);
subplot(3,3,7);
plot(t,b5);
title("101");
phi = (67.51*pi)/180;
b6 = sqrt(2).*sin(wt + phi);
subplot(3,3,8);
plot(t,b6);
title("110");
phi = (22.48*pi)/180;
b7 = sqrt(2).*sin(wt + phi);
subplot(3,3,9);
plot(t,b7);
title("111");


%% 8QAM
phi = (255*pi)/180;
b0 = 0.765.*sin(wt + phi);
suptitle("8 QAM");
subplot(3,3,1);
plot(t,b0);
title("000");
b1 = 1.848.*sin(wt + phi);
subplot(3,3,3);
plot(t,b1);
title("001");
phi = (315*pi)/180;
b2 = 0.765.*sin(wt + phi);
subplot(3,3,4);
plot(t,b2);
title("010");
b3 = 1.848.*sin(wt + phi);
subplot(3,3,5);
plot(t,b3);
phi = (135*pi)/180;
title("011");
b4 = 0.765.*sin(wt + phi);
subplot(3,3,6);
plot(t,b4);
title("100");
b5 = 1.848.*sin(wt + phi);
subplot(3,3,7);
plot(t,b5);
title("101");
phi = (45*pi)/180;
b6 = 0.765.*sin(wt + phi);
subplot(3,3,8);
plot(t,b6);
title("110");
b7 = 1.848.*sin(wt + phi);
subplot(3,3,9);
plot(t,b7);
title("111");