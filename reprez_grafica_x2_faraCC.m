%x2(t) 
T_2=1;
t = linspace(0,1,2);
x = 0.86*t.^2-2.05*t+0.97;
v=ones(1,37);
x2=x'*v;
x2=x2(:);
T2=linspace(0,37*T_2,(T_2+1)*37);
T2=T2(:);
plot(T2,x2-0.231,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('x_{2}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Graphical representation of x_{2}(t) on 37T','fontweight','bold','fontsize',14, 'FontName', 'Times New Roman');
