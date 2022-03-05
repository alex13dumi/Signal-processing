%z3(t) 
T_3=2;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
a = linspace(0,1,100);
for i=1:400
    if i > 200
        a(i) = 0;
    end
    if i < 200
        a = x;
    end    
end
z3 = a'*ones(1,3*2);
for i = 1:3*2
    for k = 1:200*2
        z3(k,i) = z3(k,i)*((-1)^(i+1));
    end
end
z3 = z3(:);
size(z3)
size(T3)
T3 = linspace(0 ,3 * T_3, 2400);
figure(3);
plot(T3,z3,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('z_{3}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Graphical representation of z_{3}(t)','fontweight','bold','fontsize',16, 'FontName', 'Times New Roman');
