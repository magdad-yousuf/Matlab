num = [1 6 0]
denum = [1 0 3 5 10]
sys = tf(num, denum)
z = zero(sys)
p = pole(sys)
pzmap(sys)