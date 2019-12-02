clc;
clear;

disp(e(0.25));
%e = @(x) 1;

function n = e(x)
%prev = e(x);
for i = 1:5
    term = ((x^i)/(fc(i)));
    n = 1+term;
    %pres = e(x);
end
end

%for i = 1:5
 %   term = @(i) ((x.^i)./fc(i));
  %  e(i) = e(i)+term(i);
%end


function[j] = fc(n)
j = factorial(n);
end
