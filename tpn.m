function dydt = tpn(t, y)
    
    x = y(1);
    y_ = y(2);
    
    r = sqrt((x-10000)^2 + (y_)^2 );

    Vm = y(3);
    theta = y(4);
    gamma_m = y(5);
    N = y(6);
    
    c = N*400*cos(pi/4);
    
    x_dot = Vm*cos(gamma_m);
    y_dot = Vm*sin(gamma_m);
%     r_dot = -Vm*cos(gamma_m-theta);
    
    theta_dot = -Vm*sin(gamma_m-theta)/r;
    Vm_dot = c*theta_dot*sin(gamma_m-theta);
    gamma_m_dot = c*theta_dot*cos(gamma_m-theta)/Vm;
    N_dot = 0;
    
    
    
    dydt = [x_dot; y_dot; Vm_dot; theta_dot; gamma_m_dot; N_dot];
end