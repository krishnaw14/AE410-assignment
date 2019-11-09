function dydt = pure_pursuit(t,y)
    r = sqrt((y(1)-y(3))^2 + (y(2)-y(4))^2 );
    Vtheta = 300*sin(2*pi/3 - y(5));
    dydt = [500*cos(y(5)); 500*sin(y(5)); 300*cos(2*pi/3); 300*sin(2*pi/3); Vtheta/r];
end