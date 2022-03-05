%N=21
%x(t) = 0.86t^2-2.05t+0.97
t = linspace(-1,2,300);
x = 0.86*t.^2-2.05*t+0.97;
for i=1:300
    if((i<100) || (i>200))
        x(i) = 0;
    end
end
plot(t,x,'r','LineWidth',2);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('x(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Graphical representation of x(t)','fontweight','bold','fontsize',14, 'FontName', 'Times New Roman');