N_values = [0.25; 0.5; 1; 2; 3; 50];
time_values = [45; 45; 55; 54; 44; 36];

for i=1:length(N_values)
    
    N = N_values(i);
    t = time_values(i);

y0 = [0; 0; 400; 0; pi/4; N];

[t,y] = ode45(@tpn, [0 t], y0); 
plot(y(:,1),y(:, 2),'-');

hold on
end

plot(10000, 0, '.', 'MarkerSize', 25);

title('TPN Guidance')
xlabel('x');
ylabel('y');
legend('N=0.25','N=0.5', 'N=1', 'N=2', 'N=3', 'N=50', 'target', 'Location','NorthWest');
saveas(gcf,'plots/q6.png');
clf();

% N = 100000; t = 30;
% y0 = [0; 0; 400; 0; pi/4; N];
% [t,y] = ode45(@tpn, [0 t], y0); 
% plot(y(:,1),y(:, 2),'-');
% plot(10000, 0, '.', 'MarkerSize', 25);
% axis([0, 10000, 0, 10])
% 
% title('TPN Guidance (N = 100000)')
% xlabel('x');
% ylabel('y');
% 
% saveas(gcf,'plots/q6_inf.png')