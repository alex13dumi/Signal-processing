%z2(t) 
T_2=1;
t = linspace(0,1,100);
x = 0.86*t.^2-2.05*t+0.97;
v=ones(1,74);
for i=1:37*2
   if mod(i,2) == 0
       v(i)=-v(i);
   end
end
z2=x'*v;
z2=z2(:);
T2=linspace(0,37*T_2,7400);
size(T2)
size(z2)
T2=T2(:);
figure(3);
plot(T2,z2,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('z_{2}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title('Graphical representation of z_{2}(t) on 37T','fontweight','bold','fontsize',14, 'FontName', 'Times New Roman');
