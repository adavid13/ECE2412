clc;
clear;


%f = x.^3-6.*x.^2+11.*x-6.1;
%fp = 3.*x.^2-12.*x+11;

func = @(x) x.^3-6.*x.^2+11.*x-6.1;
Xr1 = fzero(func,0);
Xr2 = fzero(func,2);
Xr3 = fzero(func,3);
disp(Xr1);
disp(Xr2);
disp(Xr3);