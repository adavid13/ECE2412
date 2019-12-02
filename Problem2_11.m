clc;
clear;

t = 0:1:70;
c1 = 4.84*exp(-0.034.*t);

c2 = [3.4, 2.6, 1.6, 1.3, 1.0, 0.5];
t2 = 10:10:60;

subplot(2,1,1)
plot(t,c1,'g--');
xlabel("Time (min)");
ylabel("Concentration (ppm)");

subplot(2,1,2)
plot(c2,t2,'r d','MarkerFaceColor','r');
xlabel("Time (min)");
ylabel("Concentration (ppm)");

