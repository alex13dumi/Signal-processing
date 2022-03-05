%y3(t)
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
T_3=2;
a = linspace(0,1,100);

for i=1:400
    if i > 200
        a(i) = 0;
    end
    if i < 200
        a = x;
    end    
end
y3 = a'* ones(1,1);
for i = 1:1
    for k = 1:200*2
        y3(k,i) = y3(k,i)*((-1)^(i));
    end
end
y3 = y3(:);

y3=y3.*y3;
err = 1/(100);
putere = 0;
for i=1:100
    putere = putere + err * y3(i);
end
putere