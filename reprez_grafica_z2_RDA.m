%z2(t) 
T_2=1;
t = linspace(0,1,4);
x = 0.86*t.^2-2.05*t+0.97;
v = ones(1,37);
for i=1:37
   if mod(i,2) == 0
       v(i)=-v(i);
   end
end
z2=x'*v;
z2=z2(:);
for i = 1:148
    if z2(i) < 0
        z2(i) = -z2(i);
    end
end
T2=linspace(0,37*T_2,(T_2+1)*37*2);
T2=T2(:);
plot(T2,z2,'r','LineWidth',1.5);
grid on;
grid minor;
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 14, 'FontName', 'Times New Roman');
ylabel('z_{2}(t)','fontweight','bold','fontsize', 14, 'FontName', 'Times New Roman');
title({'Graphical representation of z_{2}(t) on 37T';'RDA'});
