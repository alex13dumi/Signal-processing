t = linspace(0,1,10^7);
x = 0.86 * (t.^ 2) - 2.05 * t + 0.97;
T = 1;
err = 1/(10 ^ 7);
s = 0;
for i=1:10 ^ 7
    s = s + err * x(i);
end
cc = s / T 