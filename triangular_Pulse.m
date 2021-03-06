%triangular
N=21;
t1 = linspace(0,4*N,1000);
t2 = linspace(0,6*N,1000);
t3 = linspace(0,5*N,1000);
v1 = 8*triangularPulse(t1-N) - 15*triangularPulse(t1-2*N) + 7*triangularPulse(t1-3*N);
v2 = 5*triangularPulse(t2-N) + 9.*( (t2-3*N)/N + 1 ) .* ( triangularPulse(t2-2*N)-triangularPulse(t2-3*N) ) + 9.*( (t2-3*N)/(-N)+1 ) .* ( triangularPulse(t2-3*N)-triangularPulse(t2-4*N) ) - 5*triangularPulse(t2-5*N);
v3 = (t3-N).*(triangularPulse(t3-1)-triangularPulse(t3-N)) + 7.*triangularPulse(t3-2*N) - 9.*(t3-5).*(triangularPulse(t3-3*N)-triangularPulse(t3-4*N));
subplot(311);
plot(t1,v1,'r','LineWidth',3);
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 16, 'FontName', 'Times New Roman');
ylabel('v_{1}(t)','fontweight','bold','fontsize', 16, 'FontName', 'Times New Roman');
title('Graphical representation of v_{1}(t)','fontweight','bold','fontsize',16, 'FontName', 'Times New Roman');
grid on;
grid minor;
hline = refline(0, 0);
hline.Color = 'k';
subplot(312);
plot(t2,v2,'r','LineWidth',3);
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 16, 'FontName', 'Times New Roman');
ylabel('v_{2}(t)','fontweight','bold','fontsize', 16, 'FontName', 'Times New Roman');
title('Graphical representation of v_{2}(t)','fontweight','bold','fontsize',16, 'FontName', 'Times New Roman');
grid on;
grid minor;
hline = refline(0, 0);
hline.Color = 'k';
subplot(313);
plot(t3,v3,'r','LineWidth',3);
xlabel('t[ms]', 'fontweight', 'bold', 'fontsize', 16, 'FontName', 'Times New Roman');
ylabel('v_{3}(t)','fontweight','bold','fontsize', 16, 'FontName', 'Times New Roman');
title('Graphical representation of v_{3}(t)','fontweight','bold','fontsize',16, 'FontName', 'Times New Roman');
grid on;
grid minor;
hline = refline(0, 0);
hline.Color = 'k';