gausRight = [plot(exp(-0.4*(x - t + 2)^2), (-4, 8), ymin=-1, ymax=1.2) for t in sxrange(0, 8, 0.1)]
gausLeft = [plot(-0.3*exp(-14.0*(x + t - 6)^2), (-4, 8), color="black") for t in sxrange(0, 8, 0.1)]
gausBoth = [plot(exp(-0.4*(x - t + 2)^2) - 0.3*exp(-14.0*(x + t - 6)^2), (-4, 8), color="red") for t in sxrange(0, 8, 0.1)]
animation = animate(gausRight)
animation += animate(gausLeft)
animation += animate(gausBoth)
animation.show(delay=10)


# cosinesRight = [plot(cos(2.0*x - t), (-15, 15), ymin=-2, ymax=2, figsize=[12, 6]) for t in sxrange(0, 8, 0.1)]
# cosinesLeft = [plot(cos(2.0*x + t), (-15, 15), color="black") for t in sxrange(0, 8, 0.1)]
# cosinesBoth = [plot(cos(2.0*x + t) + cos(2.0*x - t), (-15, 15), color="red") for t in sxrange(0, 8, 0.1)]
# an = animate(cosinesRight)
# an += animate(cosinesLeft)
# an += animate(cosinesBoth)
# an.show(delay=15)


# cosinesRight = [plot(cos(2.0*x - t), (-15, 15), ymin=-2, ymax=2, figsize=[12, 6]) for t in sxrange(0, 8, 0.1)]
# cosinesLeft = [plot(cos(2.4*x + t), (-15, 15), color="black") for t in sxrange(0, 8, 0.1)]
# cosinesBoth = [plot(cos(2.4*x + t) + cos(2.0*x - t), (-15, 15), color="red") for t in sxrange(0, 8, 0.1)]
# an = animate(cosinesRight)
# an += animate(cosinesLeft)
# an += animate(cosinesBoth)
# an.show(delay=15)
