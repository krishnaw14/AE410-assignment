delta = 0;
y0 = [0; 0; 5000; 0; 0; pi/4; delta];

[t,y] = ode45(@deviated_pursuit, [0 11], y0); 
plot(y(:,1),y(:,2),'--',y(:,3),y(:,4),'-');
title('Implementable Deviated Pursuit Guidance (delta=0)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q5_delta=0.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

delta = pi/12;
y0 = [0; 0; 5000; 0; 0; pi/4; delta];

[t,y] = ode45(@deviated_pursuit, [0 11], y0); 
plot(y(:,1),y(:,2),'--',y(:,3),y(:,4),'-');
title('Implementable Deviated Pursuit Guidance (delta= 15 deg)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q5_delta=15.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

delta = pi/3;
y0 = [0; 0; 5000; 0; 0; pi/4; delta];

[t,y] = ode45(@deviated_pursuit, [0 14.7], y0); 
plot(y(:,1),y(:,2),'--',y(:,3),y(:,4),'-');
title('Implementable Deviated Pursuit Guidance (delta= 60 deg)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q5_delta=60.png')
