%x2(t) 
T_2=1;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v=ones(1,1);
x2=x(:);
x2=x*v;
x2=x2(:);

x2=x2.*x2;

err = 1/(100);
putere = 0;
for i=1:100
    putere = putere + err * x2(i);
end
putere 