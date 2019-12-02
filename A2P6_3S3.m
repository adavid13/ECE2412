clc;
clear;


%f = x.^3-6.*x.^2+11.*x-6.1;
%fp = 3.*x.^2-12.*x+11;

func = @(x) x.^3-6.*x.^2+11.*x-6.1;
Xro = 2.5;
Xrc = 3.5;
for i = 1:3
    Xrn = Xrc-(((func(Xrc))*(Xro-Xrc))/((func(Xro))-(func(Xrc))));
    Xro = Xrc;
    Xrc = Xrn;
end   
disp(Xrc);