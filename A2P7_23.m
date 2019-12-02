clc;
clear;

%f = 2.*y.^2-2.25.*x.*y-1.75.*y+1.5.*x^2

func = @(xy) 2.*xy(2).^2-2.25.*xy(1).*xy(2)-1.75.*xy(2)+1.5.*xy(1).^2;
ran = -20:0.1:20;
dom = -20:0.1:20;
%plot(ran,func(ran,dom));
%grid on;
% minimum at about x = 0.7
Xmin = fminsearch(@(xy) func(xy),[0.5,-0.5]);
disp(Xmin);