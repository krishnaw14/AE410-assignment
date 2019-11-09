import numpy as np 
import os 
import matplotlib.pyplot as plt 

N = 2.5
Vm = 500
Vt = 300; 

def PPN(y):
	x_m = y[0];
	y_m = y[1];
	x_t = y[2];
	y_t = y[3];
	theta = y[4];
	gamma_m = y[5];
	r = y[6];
	x_dot = Vm*np.cos(gamma_m)
	y_dot = Vm*np.sin(gamma_m)
	theta_dot = (Vt*np.sin(90-theta)-Vm*np.sin(gamma_m-theta))/r
	gamma_m_dot = N*theta_dot
	r_dot = Vt*np.cos(90-theta)-Vm*np.cos(gamma_m-theta)
	dydt = np.array([x_dot, y_dot, 0, Vt,theta_dot, gamma_m_dot, r_dot])
	return dydt

y = np.array([0, 0, 15000, 0, 0, 56.8699*np.pi/180, 15000])
t = 0
dt = 0.001
output_values = []
while y[-1] > 0.0001:
	output_values.append(y.copy())
	dydt = PPN(y)
	y += dt*dydt
	t += dt
output_values = np.array(output_values)
plt.plot(output_values[:, 0], output_values[:, 1], label='theta = 56.89 deg')

print(t)

y = np.array([0, 0, 15000, 0, 0, 16.8699*np.pi/180, 15000])
dt = 0.001
output_values = []
t = 0
while y[-1] > 0.001:
	output_values.append(y.copy())
	dydt = PPN(y)
	y += dt*dydt
	t += dt
output_values = np.array(output_values)

print(t)
plt.plot(output_values[:, 0], output_values[:, 1], label='theta = 16.89 deg')

plt.legend()
plt.title('PPN Guidance')
plt.xlabel('x')
plt.ylabel('y')
plt.show()

