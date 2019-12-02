clc; 
clear;
%f = sin(x^(1/2)-x);
func = @(x) sin(x^(1/2));
Es = 0.0001;
Ea = 100;
Xo = 0.5;
while(Ea>Es)
    Xn = func(Xo);
    Ea = abs((Xn-Xo)/Xn);
    Xo = Xn;
end
