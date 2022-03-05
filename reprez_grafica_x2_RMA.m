%x2(t) 
T_2=1;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v=ones(1,37);
x2=x'*v;
x2=x2(:);
for i = 1:3700
    if x2(i) < 0
        x2(i) = 0;
    end
end
T2=linspace(0,37*T_2,(T_2+1)*37*50);
T2=T2(:);
figure(3);
plot(T2,x2,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('x_{2}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title({'Graphical representation of x_{2}(t) on 37T';'RMA'});

