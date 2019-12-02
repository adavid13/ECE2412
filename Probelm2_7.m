clc;
clear;

z = -5:0.1:5;
f = (1/(sqrt(2*pi))*exp(-(z.^2)/2));


plot(z,f);
xlabel("Range (z)");
ylabel("Frequency (f)");