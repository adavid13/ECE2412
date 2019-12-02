clc;
clear;

x=0.7;

sin1 = x;
err1 = ((sin(x)-sin1)/sin(x));

sin2 = x-((x.^3)/fc(3));
err2 = ((sin(x)-sin2)/sin(x));

sin3 = x-((x.^3)/fc(3))+((x.^5)/fc(5));
err3 = ((sin(x)-sin3)/sin(x));

sin4 = x-((x.^3)/fc(3))+((x.^5)/fc(5))-((x.^7)/fc(7));
err4 = ((sin(x)-sin4)/sin(x));

sin5 = x-((x.^3)/fc(3))+((x.^5)/fc(5))-((x.^7)/fc(7))+((x.^9)/fc(9));
err5 = ((sin(x)-sin5)/sin(x));

sin6 = x-((x.^3)/fc(3))+((x.^5)/fc(5))-((x.^7)/fc(7))+((x.^9)/fc(9))-((x.^11)/fc(11));
err6 = ((sin(x)-sin6)/sin(x));

sin7 = x-((x.^3)/fc(3))+((x.^5)/fc(5))-((x.^7)/fc(7))+((x.^9)/fc(9))-((x.^11)/fc(11))+((x.^13)/fc(13));
err7 = ((sin(x)-sin7)/sin(x));

sin8 = x-((x.^3)/fc(3))+((x.^5)/fc(5))-((x.^7)/fc(7))+((x.^9)/fc(9))-((x.^11)/fc(11))+((x.^13)/fc(13))-((x.^15)/fc(15));
err8 = ((sin(x)-sin8)/sin(x));






function[j] = fc(n)
j = factorial(n);
end