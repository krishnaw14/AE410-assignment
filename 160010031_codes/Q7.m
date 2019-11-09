% Vm = 400;
y = [0; 0; 15000; 0; 15000; 0; 16.8699*pi/180];
t = 0; dt = 0.1;
outputs = [y]; t_values = [t]
while y[5] > 1
    dydt = PPN(t, y);
    t = t+dt;
    y = y + dydt*dt;
    append(outputs, y)
%     plot(y(1),y(2),'--',y(3),y(4),'-');
%     hold on
    disp(y(5));
end

% plot(y(:,1),y(:,2),'-',y(:,3),y(:,4),'-');
title('PPN Guidance (Initial Heading angle = 56.8699)')
xlabel('x')
ylabel('y')
xlim([0, 16000])
% legend('Missile','Target')
% saveas(gcf,'plots/q4_K=2.png')
