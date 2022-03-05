T_1 = 0.5;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v = ones(1,1);
for i=1:100
   if mod(i,2) == 1
       x(i)=-x(i);
   end
end
y1 = x(:);
y1 = y1*v;
y1 = y1(:);

y1=y1.*y1;
err = 1/(100);
putere = 0;
for i=1:100
    putere = putere + err * y1(i);
end
putere