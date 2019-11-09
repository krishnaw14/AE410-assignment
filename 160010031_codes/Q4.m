Vt = 200;

Vm = 400;
y0 = [0; 0; 5000; 0; 0; pi/4; Vm];

[t,y] = ode45(@implementable_pure_pursuit, [0 11], y0); 
plot(y(:,1),y(:,2),'-',y(:,3),y(:,4),'-');
title('Implementable Pure Pursuit Guidance (K=2)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q4_K=2.png')

theta_values = y(:, 5);
r_values = sqrt((y(:,1)-y(:,3)).^2 + (y(:,2)-y(:,4)).^2 );
theta_dot = ( Vt*sin(2*pi/3 - theta_values) - Vm*sin(y(:,6) - y(:,5)) )./r_values;
a_m_values = Vm*theta_dot - 50*(y(:,6) - y(:,5));

plot(t(1: length(t)-20),a_m_values(1: length(t)-20));
title('Implementable Pure Pursuit Guidance (K=2): Lateral Acceleration plot')
xlabel('time')
ylabel('lateral acceleration')
saveas(gcf,'plots/q4_lat_acc_K_2.png')

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

theta_values = y(:, 5);
r_values = sqrt((y(:,1)-y(:,3)).^2 + (y(:,2)-y(:,4)).^2 );
theta_dot = ( Vt*sin(2*pi/3 - theta_values) - Vm*sin(y(:,6) - y(:,5)) )./r_values;
a_m_values = Vm*theta_dot - 50*(y(:,6) - y(:,5));

plot(t(1: length(t)-20),a_m_values(1: length(t)-20));
title('Implementable Pure Pursuit Guidance (K=1): Lateral Acceleration plot')
xlabel('time')
ylabel('lateral acceleration')
saveas(gcf,'plots/q4_lat_acc_K_1.png')

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

theta_values = y(:, 5);
r_values = sqrt((y(:,1)-y(:,3)).^2 + (y(:,2)-y(:,4)).^2 );
theta_dot = ( Vt*sin(2*pi/3 - theta_values) - Vm*sin(y(:,6) - y(:,5)) )./r_values;
a_m_values = Vm*theta_dot - 50*(y(:,6) - y(:,5));

plot(t(1: length(t)-20),a_m_values(1: length(t)-20));
title('Implementable Pure Pursuit Guidance (K=1): Lateral Acceleration plot')
xlabel('time')
ylabel('lateral acceleration')
saveas(gcf,'plots/q4_lat_acc_K_half.png')




