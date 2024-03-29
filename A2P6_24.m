clc;
clear;

%C = s.^3+9.*s.^2+26.*s+24;

%N = s.^4+15.*s.^3+77.*s.^2+153.*s+90;

numer = @(s) s.^3+9.*s.^2+26.*s+24;
denom = @(s) s.^4+15.*s.^3+77.*s.^2+153.*s+90;
n1 = [1,9,26,24];
a = roots(n1);
n2 = [1,15,77,153,90];
b = roots(n2);
G = @(s) (((s+a(1))*(s+a(2))*(s+a(3)))/((s+b(1))*(s+b(2))*(s+b(3))*(s+b(4))));
disp(G(0));

