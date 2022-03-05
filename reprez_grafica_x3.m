%x3(t) 
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
T_3 = 2;   
a = linspace(0,1,100);

for i=1:400
    if i > 200
        a(i) = 0;
    end
    if i < 200
        a = x;
    end    
end
x3 = a'* ones(1,3);
x3 = x3(:);
T3 = linspace(0, 3 * T_3, 1200);
figure(1);
plot(T3,x3,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('x_{3}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Graphical representation of x_{3}(t)','fontweight','bold','fontsize',16, 'FontName', 'Times New Roman');
