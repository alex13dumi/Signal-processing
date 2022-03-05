%z1(t) 
T_1 = 0.5;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v = ones(1,37);
for i=1:37
   if mod(i,2) == 0
       v(i)=-v(i);
   end
end
z1 = x(:);
z1 = z1*v;
z1 = z1(:);
for i = 1:3700
    if z1(i) < 0
        z1(i) = -z1(i);
    end
end
T1 = linspace(0,37*T_1,3700);
plot(T1,z1,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('z_{1}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title({'Graphical representation of z_{1}(t) on 37T';'RDA'});
