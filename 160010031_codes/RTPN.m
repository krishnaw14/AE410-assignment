function dydt = RTPN(t, y)
    
    x_m = y(1);
    y_m = y(2);
    x_t = y(3);
    y_t = y(4);
    
    
    r = sqrt((x_m - x_t)^2 + (y_m - y_t)^2 );

    Vm = y(5);
    theta = y(6);
    gamma_m = y(7);
    
    N = 2.5;
    Vt = 300;
    
    
    x_dot = Vm*cos(gamma_m);
    y_dot = Vm*sin(gamma_m);
%     r_dot = -Vm*cos(gamma_m-theta);
    
    Vr = Vt*cos(90-theta) -Vm*cos(gamma_m-theta);
    c = N*Vr;
    
   
    
    theta_dot = (Vt*sin(90-theta) -Vm*sin(gamma_m-theta))/r;
    Vm_dot = c*theta_dot*sin(gamma_m-theta);
    gamma_m_dot = -c*theta_dot*cos(gamma_m-theta)/Vm;
    N_dot = 0;
    
    
    
    dydt = [x_dot; y_dot; 0; 300; Vm_dot; theta_dot; gamma_m_dot];
end 