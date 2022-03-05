%x1(t) 
T_1 = 0.5;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v = ones(1,3);
x1 = x(:);
x1 = x1*v;
x1 = x1(:);
T1 = linspace(0,3*T_1,300);
figure(1);
plot(T1,x1,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('x_{1}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Reprezentare grafica a semnalului x_{1}(t) pe 3 de perioade','fontweight','bold','fontsize',14, 'FontName', 'Times New Roman');