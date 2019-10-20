num =[400]
dnum = [1 12 400]
system = tf(num,dnum)
omega1 = sqrt (dnum(3))
zeta = dnum(2)/(2*omega1)
step (system)