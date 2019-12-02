clc;
clear;

%f = 4.*x-1.8.*x.^2+1.2.*x.^3-0.3.*x.^4

func = @(x) 4.*x-1.8.*x.^2+1.2.*x.^3-0.3.*x.^4;
X1 = 1.75;
X2 = 2;
X3 = 2.5;
for i = 1:5
    Xopt = X2-0.5*((((X2-X1)^2)*(func(X2)-func(X3))-((X2-X3)^2)*(func(X2)-func(X1)))/((X2-X1)*(func(X2)-func(X3))-(X2-X3)*(func(X2)-func(X1))));
    if(func(X2)>func(Xopt))
        X3 = X2;
        X2 = Xopt;
    elseif (func(X2)<func(Xopt))
       X1 = X2;
       X2 = Xopt;
    end
end