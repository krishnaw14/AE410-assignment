function dydt = deviated_pursuit(t, y)

    Vm = 400;
    Vt = 200;
    gamma_t = 2*pi/3;
    K = 50;
    delta = y(7);
    
    r = sqrt((y(1)-y(3))^2 + (y(2)-y(4))^2 );
    Vtheta = Vt*sin(2*pi/3 - y(5)) - Vm*sin(y(6) - y(5));
    theta_dot = Vtheta/r;
    
    gamma_m_dot = theta_dot - (y(6)-y(5)-delta)*(K/Vm);
    
    dydt = [Vm*cos(y(6)); Vm*sin(y(6)); Vt*cos(gamma_t); Vt*sin(gamma_t); theta_dot; gamma_m_dot; 0];
end

