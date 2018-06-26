# te = emission time
# tt = travel time
# d = distance traveled by the wave
# v = velocity of wave
# velocity of source
# x, y, t, v, vs, te, tt, d = var("x, y, t, v, vs, te, tt, d")
# print solve([t == te + tt, d^2 == (x - vs*te)^2 + y^2, tt == d/v], te, tt, d)


def amp(x, y, t, v, vs, w):
  if sqrt(x*x + y*y) > v*t:
    return 0.0
  else:
    te = (t*v^2 - vs*x - sqrt(t^2*v^2*vs^2 - 2*t*v^2*vs*x + v^2*x^2 + (v^2 - vs^2)*y^2))/(v^2 - vs^2)
    return cos(w*te)

x, y = var("x, y")
v = 2.0
vs = 0.0
w = 6.5
ripples = [density_plot(lambda x, y: amp(x, y, t, v, vs, w), (x, -9, 9), (y, -9, 9), figsize=[6, 6], interpolation='sinc', plot_points=400, cmap="jet") for t in sxrange(0, 9.5, 0.1)]
animation = animate(ripples)
animation.show(delay=10)

