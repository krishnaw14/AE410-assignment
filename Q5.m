Vm = 400;
Vt = 200;
delta = 0;
y0 = [0; 0; 5000; 0; 0; pi/4; delta];

[t,y] = ode45(@deviated_pursuit, [0 11], y0); 

theta_values = y(:, 5);
r_values = sqrt((y(:,1)-y(:,3)).^2 + (y(:,2)-y(:,4)).^2 );
theta_dot = ( Vt*sin(2*pi/3 - theta_values) - Vm*sin(delta) )./r_values;
a_m_values = Vm*theta_dot - 50*(y(:,6) - y(:,5) - delta);

plot(y(:,1),y(:,2),'-',y(:,3),y(:,4),'-');
title('Implementable Deviated Pursuit Guidance (delta=0)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q5_delta=0.png')

plot(t,a_m_values);
title('Implementable Deviated Pursuit Guidance (delta=0): Lateral Acceleration plot')
xlabel('time')
ylabel('lateral acceleration')
saveas(gcf,'plots/q5__lat_acc_delta=0.png')

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

delta = pi/12;
y0 = [0; 0; 5000; 0; 0; pi/4; delta];

[t,y] = ode45(@deviated_pursuit, [0 11], y0); 

theta_values = y(:, 5);
r_values = sqrt((y(:,1)-y(:,3)).^2 + (y(:,2)-y(:,4)).^2 );
theta_dot = ( Vt*sin(2*pi/3 - theta_values) - Vm*sin(delta) )./r_values;
a_m_values = Vm*theta_dot - 50*(y(:,6) - y(:,5) - delta);

plot(y(:,1),y(:,2),'-',y(:,3),y(:,4),'-');
title('Implementable Deviated Pursuit Guidance (delta= 15 deg)')
xlabel('x')
ylabel('y')
saveas(gcf,'plots/q5_lat_acc_delta=15.png')

plot(t,a_m_values);
title('Implementable Deviated Pursuit Guidance (delta= 15 deg): Lateral Acceleration plot')
xlabel('time')
ylabel('lateral acceleration')
saveas(gcf,'plots/q5__lat_acc_delta=15.png')
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  
delta = pi/3;
y0 = [0; 0; 5000; 0; 0; pi/4; delta];

[t,y] = ode45(@deviated_pursuit, [0 14.29], y0); 

theta_values = y(:, 5);
r_values = sqrt((y(:,1)-y(:,3)).^2 + (y(:,2)-y(:,4)).^2 );
theta_dot = ( Vt*sin(2*pi/3 - theta_values) - Vm*sin(delta) )./r_values;
a_m_values = Vm*theta_dot - 50*(y(:,6) - y(:,5) - delta);

plot(y(:,1),y(:,2),'-',y(:,3),y(:,4),'-');
title('Implementable Deviated Pursuit Guidance (delta= 60 deg)')
xlabel('x')
ylabel('y')
legend('Missile','Target')
saveas(gcf,'plots/q5_lat_acc_delta=60.png')


plot(t,a_m_values);
title('Implementable Deviated Pursuit Guidance (delta= 60 deg): Lateral Acceleration plot')
xlabel('time')
ylabel('lateral acceleration')
saveas(gcf,'plots/q5__lat_acc_delta=60.png')
