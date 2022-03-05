T_2=1;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v=ones(1,1);
for i=1:1
   if mod(i,2) == 1
       v(i)=-v(i);
   end
end
y2=x'*v;
y2=y2(:);

y2=y2.*y2;
err = 1/(100);
putere = 0;
for i=1:100
    putere = putere + err * y2(i);
end
putere