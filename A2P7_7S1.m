clc;
clear;

%f = 4.*x-1.8.*x.^2+1.2.*x.^3-0.3.*x.^4

func = @(x) 4.*x-1.8.*x.^2+1.2.*x.^3-0.3.*x.^4;
r = 0:0.1:4;
plot(r,func(r));
grid on;
%Maximum seems to be around x = 2.3
a=2;
b=4;
Es = 0.01;
Ea = 100;
while(Ea>Es)
    gr = 1.618;
    d = (gr-1)*(b-a);
    X1 = b-d;
    X2 = a+d;
    if(func(X1)>func(X2))
        Xopt = X2;
        b = X2;
        d = (gr-1)*(b-a);
        X2 = a+d;
    else 
        Xopt = X1;
        a = X1;
        d = (gr-1)*(b-a);
        X1 = b-d;
    end
    Ea = abs((2-gr)*((b-a)/Xopt));
end
 disp(Xopt);