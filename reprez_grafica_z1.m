%z1(t) 
T_1 = 0.5;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v = ones(1,3*2);
for i=1:3*2
   if mod(i,2) == 0
       v(i)=-v(i);
   end
end
z1 = x(:);
z1 = z1*v;
z1 = z1(:);
T1 = linspace(0,3*T_1,300*2);
size(T1)
size(z1)
figure(3);
plot(T1,z1,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('z_{1}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Graphical representation of z_{1}(t)','fontweight','bold','fontsize',16, 'FontName', 'Times New Roman');