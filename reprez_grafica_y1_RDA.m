%y1(t) 
T_1 = 0.5;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v = ones(1,37);
for i=1:37
   if mod(i,2) == 1
       v(i)=-v(i);
   end
end
y1 = x(:);
y1 = y1*v;
y1 = y1(:);
for i = 1:3700
    if y1(i) < 0
        y1(i) = -y1(i);
    end
end
T1 = linspace(0,37*T_1,3700);
plot(T1,y1,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('y_{1}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title({'Graphical representation of y_{1}(t) on 37T';'RDA'});

