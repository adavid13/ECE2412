clc;
clear;


%f = x.^3-6.*x.^2+11.*x-6.1;
%fp = 3.*x.^2-12.*x+11;

func = @(x) x.^3-6.*x.^2+11.*x-6.1;
Xro = 3.5;
delt = 0.01;
for i = 1:3
   Xrn = Xro-((delt*Xro*func(Xro))/(func(Xro+delt*Xro)-func(Xro))); 
   Xro = Xrn;
end   
disp(Xrn);