library(MASS)
w=rnorm(1000)
p=rnorm(100)
fitdistr(w,"normal")
ks.test(w,pnorm)


v=c(45,19,6,43)
m=matrix(v,2)
m=t(m);m
pp=chisq.test(m)
pp
p=binom.test(n=100,x=20,p=0.22,"t",0.1)
p
poi


