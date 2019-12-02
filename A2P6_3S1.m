clc;
clear;

x = 0:0.1:4;
f = x.^3-6.*x.^2+11.*x-6.1;
%fp = 3.*x.^2-12.*x+11;
plot(x,f);
grid on;
