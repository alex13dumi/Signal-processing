%x3(t) 
T_3=2;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v=ones(1,37);
x3=x'*v;
x3=x3(:);
for i = 1:3700
    if x3(i) < 0
        x3(i) = 0;
    end
end
size(x3)
T3=linspace(0,37*T_3,3700);
T3=T3(:);
size(T3)
size(x3)
figure(1);
plot(T3,x3,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('x_{3}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title({'Graphical representation of x_{3}(t) on 37T';'RMA'});

