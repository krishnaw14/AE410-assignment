function dydt = PPN(t, y)
    
    x_m = y(1);
    y_m = y(2);
    x_t = y(3);
    y_t = y(4);
    theta = y(5);
    gamma_m = y(6);
    
    r = sqrt((x_m-x_t)^2 + (y_m-y_t)^2);

    N = 50;
    Vm = 500; Vt = 200; 
    
    x_dot = Vm*cos(gamma_m);
    y_dot = Vm*sin(gamma_m);
    
    theta_dot = (Vt*sin(90-theta)-Vm*sin(gamma_m-theta))/r;
    gamma_m_dot = N*theta_dot;
    
    r_dot = Vt*cos(90-theta)-Vm*cos(gamma_m-theta);
    
    dydt = [x_dot; y_dot; 0; Vt; r_dot; theta_dot; gamma_m_dot];
end