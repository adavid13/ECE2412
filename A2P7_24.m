%f = 4.*x+2.*y+x.^2-2.*x.^4+2.*x.*y-3.*y.^2;

func = @(xy) -(4.*xy(1)+2.*xy(2)+xy(1).^2-2.*xy(1).^4+2.*xy(1).*xy(2)-3.*xy(2).^2);
%r = -100:0.1:100;
%plot(r,func(r,r));
%grid on;
%maximum seems to be around x=1
Xmin = fminsearch(@(xy) func(xy),[1,0.5]);
disp(Xmin);