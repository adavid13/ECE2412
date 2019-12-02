clc;
clear;

x = 0:(pi/24):(3*(pi/4));
f = cos(x);

cos = 1-((x.^2)/fc(2))+((x.^4)/fc(4))-((x.^6)/fc(6))+((x.^8)/fc(8));

plot(x,f,x,cos,'k--');
legend("Exact","Approximation");



function[j] = fc(n)
j = factorial(n);
end