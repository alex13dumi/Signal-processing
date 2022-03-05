T_2=1;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v=ones(1,3*2);
for i=1:3*2
   if mod(i,2) == 1
       v(i)=-v(i);
   end
end
y2=x'*v;
y2=y2(:);
T2=linspace(0,3*T_2,(T_2+1)*3*100);
T2=T2(:);
figure(2);
plot(T2,y2,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('y_{2}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Graphical representation of y_{2}(t)','fontweight','bold','fontsize',14, 'FontName', 'Times New Roman');
