clc;
clear;


t = linspace(-5, 50, 1000);

vt = (0:1:999);

for (x = 1:1:1000)
    vt(x) = piecewise(t(x));
end

plot(t, vt)
xlabel("Time (s)");
ylabel("Velocity (m/s)");


function v = piecewise(t)

if((t>=0 && t<8))
    v = (10*(t^2))-(5*t);
elseif ((t>=8 && t<16))
    v = (624-3*t);
elseif ((t>=16 && t<26))
    v = (36*t+(12*((t-16)^2)));
elseif (t>=26)
    v = (2136*exp(-0.1*(t-26)));
else 
    v = 0;
end

end

