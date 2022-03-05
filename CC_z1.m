%z1(t) 
T_1 = 0.5;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
for i = 1:100
    if i%2==1
        x(i)=x(i);
    else x(i)=-x(i);
    end
end
functie = @(x) -0.86*x.^2+2.05*x+0.97;
CC = integral(functie,0,T_1)*1/T_1

