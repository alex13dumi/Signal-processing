%x1(t) 
T_1 = 0.5;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v = ones(1,37);
x1 = x(:);
x1 = x1*v;
x1 = x1(:);
for i = 1:3700
    if x1(i) < 0
        x1(i) = -x1(i);
    end
end
T1 = linspace(0,37*T_1,3700);
plot(T1,x1,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('x_{1}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title({'Graphical representation of x_{1}(t) on 37T';'RDA'});

