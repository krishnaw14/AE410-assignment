function dydt = implementable_pure_pursuit(t,y)
    Vm = 200;
    K = 5;
    r = sqrt((y(1)-y(3))^2 + (y(2)-y(4))^2 );
    Vtheta = Vm*sin(2*pi/3-y(5)) - 100*sin(y(6)-y(5));
    gamma_dot = Vtheta/r -(y(6)-y(5))*K;
    dydt = [Vm*cos(y(6)); Vm*sin(y(6)); 100*cos(2*pi/3); 100*sin(2*pi/3); Vtheta/r; gamma_dot];
end
