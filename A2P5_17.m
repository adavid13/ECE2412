clc;
clear;
e = 8.9*10^-12;
F = 1.25;
Q = 2*10^-5;
q = 2*10^-5;
a = 0.85;
func = @(x) ((1./(4.*pi.*e)).*((q.*Q.*x)./((x.^2+a.^2).^(3/2))))-F;
range = 0:0.1:3;
plot(range,func(range));
grid on;
%roots around x=0.245 and x=1.292
roots(1:2);
roots(1) = fzero(func,0.245);
roots(2) = fzero(func,1.292);
disp("Root: "+roots);
