Vm = 400;
y0 = [0; 0; 5000; 0; 0; pi/4; Vm];

[t,y] = ode45(@implementable_pure_pursuit, [0 11], y0); 
plot(y(:,1),y(:,2),'-',y(:,3),y(:,4),'-');
title('Implementable Pure Pursuit Guidance (K=2)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q4_K=2.png')

% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Vm = 200;
y0 = [0; 0; 5000; 0; 0; pi/4; Vm];

[t,y] = ode45(@implementable_pure_pursuit, [0 300], y0); 
plot(y(:,1),y(:,2),'o',y(:,3),y(:,4),'-');
title('Implementable Pure Pursuit Guidance (K=1)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q4_K=1.png')

% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Vm = 100;
y0 = [0; 0; 5000; 0; 0; pi/4; Vm];

[t,y] = ode45(@implementable_pure_pursuit, [0 400], y0); 
plot(y(:,1),y(:,2),'o',y(:,3),y(:,4),'-');
title('Implementable Pure Pursuit Guidance (K=0.5)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q4_K=half.png')




