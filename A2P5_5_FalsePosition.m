clc;
clear;


x = -0.7:0.1:5;
f = -12-21.*x+(18.*(x.^2))-(2.75.*(x.^3));
func = @(xr) -12-21.*xr+(18.*(xr.^2))-(2.75.*(xr.^3));
%bisection method
for period = 0:2  
   I1 = -1;
   I2 = 0;
   Xrn = I2-((func(I2)*(I1-I2))/(func(I1)-func(I2)));
   Es = 0.01;
   Ea = 100;
   n=0;
while (Ea>Es)
    n=n+1;
    if (func(I1)*func(Xrn)<0)
        I2 = Xrn;
    else
        I1 = Xrn;
    end
    Xro = Xrn;
    Xrn = I2-((func(I2)*(I1-I2))/(func(I1)-func(I2)));
    Ea = abs((Xrn-Xro)/Xrn);
end
Xm = Xrn;
end
disp("The root between -1 and 0 is: " + Xm); 