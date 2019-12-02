clc;
clear;


%f = x.^3-6.*x.^2+11.*x-6.1;
%fp = 3.*x.^2-12.*x+11;

func = @(x) x.^3-6.*x.^2+11.*x-6.1;
deriv = @(x) 3.*x.^2-12.*x+11;
Xro = 3.5;
for i = 1:3
    Xrn = Xro-(func(Xro)/(deriv(Xro)));
    Xro = Xrn;
end   