t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
T_3=2;
a = linspace(0,1,100);

for i=1:400
    if i > 200
        a(i) = 0;
    end
    if i < 200
        a = x;
    end    
end
v=ones(1,3*2);
y3 = a'*v;
for i = 1:3*2
    for k = 1:200*2
        y3(k,i) = y3(k,i)*((-1)^(i));
    end
end
y3 = y3(:);
T3 = linspace(0 ,3 * T_3, 1200*2);
size(T3)
size(y3)
figure(2);
plot(T3,y3,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('y_{3}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Graphical representation of y_{3}(t)','fontweight','bold','fontsize',16, 'FontName', 'Times New Roman');
