import numpy as np 
import matplotlib.pyplot as plt 
import os 
from scipy.optimize import fsolve

os.makedirs('plots', exist_ok=True)

def get_cmap(n, name='hsv'):
    '''Returns a function that maps each index in 0, 1, ..., n-1 to a distinct 
    RGB color; the keyword argument name must be a standard mpl colormap name.'''
    return plt.cm.get_cmap(name, n)

def f(gamma_M):
	# Part A equation
	Vr = 173.205 - 400*np.cos(gamma_M-np.pi/6)
	Vtheta = 100 - 400*np.sin(gamma_M-np.pi/6)
	return Vtheta**2 - 2*Vr**2


print('----------Solving for PART A----------')
gamma_M_lower = fsolve(f, np.pi/9)[0]
gamma_M_upper = fsolve(f, np.pi/2)[0]
print('Required Range of gamma (in degrees): ({}, {})'.format(gamma_M_lower*180/np.pi, gamma_M_upper*180/np.pi))


print('----------Solving for PART B----------')
N = 3
cmap = get_cmap(100)

Vtheta0_values = np.linspace(-10, 10, 1000)

i = 0 
for c in np.linspace(0, 100, 10):
	Vr0_values = -np.sqrt(0.5*Vtheta0_values**2 + 0.5*c)
	plt.plot(Vtheta0_values, Vr0_values, c = cmap(i), alpha = 0.5)
	arrow_1 = Vtheta0_values[100], Vr0_values[100], Vtheta0_values[101]-Vtheta0_values[100], Vr0_values[101]-Vr0_values[100]
	arrow_2 = Vtheta0_values[-100], Vr0_values[-100], -Vtheta0_values[-99]+Vtheta0_values[-100], -Vr0_values[-99]+Vr0_values[-100]
	plt.arrow(*arrow_1, shape='full', lw=0, length_includes_head=True, head_width=0.22)
	plt.arrow(*arrow_2, shape='full', lw=0, length_includes_head=True, head_width=0.22)
	i+=1

plt.xlabel("$V_{\\theta_0}$")
plt.ylabel('$V_{r_0}$')
plt.title('Initial Condition for Capturability')
plt.savefig('plots/q2_part_b.png')

print('Plot saved: plots/q2_part_b.png ')

