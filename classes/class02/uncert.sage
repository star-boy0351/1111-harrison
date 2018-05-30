def uncertainty(function, *vars):
  expr = 0
  for v in vars:
    delta = var("d%s" % v)
    expr += pow(derivative(function, v)*delta, 2)
  expr = sqrt(expr)
  return expr


PI = var("PI")
r, h, area, volume = var("r, h, area, volume")

area = PI*r^2 + PI*r*sqrt(r^2 + h^2)
dA = uncertainty(area, r, h)
print dA
print dA(r=2.1, dr=0.05, h=4.4, dh=0.1, PI=3.14159)

print ""

volume = (1/3)*PI*h*r^2
dV = uncertainty(volume, r, h)
print dV
print dV(r=2.1, dr=0.05, h=4.4, dh=0.1, PI=3.14159)
