%x1(t) 
T_1 = 0.5;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v = ones(1,1);
x1 = x(:);
x1 = x1*v;
x1 = x1(:);

x1=x1.*x1;
err = 1/(100);
putere = 0;
for i=1:100
    putere = putere + err * x1(i);
end
putere 