__author__  = "Nathan Andrew Harrison"
__license__ = "GPL-3.0"

# see Goldstein & Poole 3.7 and 3.11
#                       ^^^     ^^^^
#                       2 second order ODEs converted to 4 1st order ODEs


def orbit_plot(radius_i, vx_i, vy_i, force, stepsize, endpt, plotcolor):

  # variables
  theta, thetaPrime, radius, radiusPrime, time = var("theta, thetaPrime, radius, radiusPrime, time")
  theta_i = 0.0
  
  # calculations
  x_i = radius_i*cos(theta_i)
  y_i = radius_i*sin(theta_i)
  radiusPrime_i = 2.0*x_i*vx_i + 2.0*y_i*vy_i
  thetaPrime_i = ((vy_i*x_i - y_i*vx_i)/(x_i*x_i))/(pow(y_i/x_i, 2.0) + 1.0)
  
  sol = desolve_system_rk4([thetaPrime, -2.0*radiusPrime*thetaPrime/radius, radiusPrime, -force + radius*thetaPrime*thetaPrime], [theta, thetaPrime, radius, radiusPrime], ics=[0, theta_i, thetaPrime_i, radius_i, radiusPrime_i], ivar=time, end_points=[0, endpt], step=stepsize)
  
  
  pts = [[m*cos(k), m*sin(k)] for j, k, l, m, n in sol]
  
  return list_plot(pts, color=plotcolor)
