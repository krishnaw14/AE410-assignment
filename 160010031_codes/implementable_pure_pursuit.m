function dydt = implementable_pure_pursuit(t,y)
    Vt = 200;
    K = 50;
    
    Vm = y(7);
    
    r = sqrt((y(1)-y(3))^2 + (y(2)-y(4))^2 );
    Vtheta = Vt*sin(2*pi/3 - y(5)) - Vm*sin(y(6) - y(5));
    theta_dot = Vtheta/r;
    
    gamma_m_dot = theta_dot - (y(6)-y(5))*(K/Vm);
    
    dydt = [Vm*cos(y(6)); Vm*sin(y(6)); Vt*cos(2*pi/3); Vt*sin(2*pi/3); theta_dot; gamma_m_dot; 0];
end