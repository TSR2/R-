
x1=c(-1.9,-6.9,5.2,5.0,7.3,6.8,0.9,-12.5,1.5,3.8,0.2,-0.1,0.4,2.7,2.1,-4.6,-1.7,-2.6,2.6,2.8)
##濕度差
x2=c(0.2,0.4,2.0,2.5,0,12.7,-5.4,-2.5,1.3,6.8,6.2,7.5,14.6,8.3,0.8,4.3,10.9,13.1,12.8,10)
##溫度差
data=data.frame(x1=x1,x2=x2,group=rep(c(1,2),c(10,10)))
plot(x1,x2)
text(x1,x2,data$group,adj=-0.5)

plot(x1-mean(x1),x2-mean(x2),pch=21,bg=data$group+1)
legend("topleft",legen=c("雨天","晴天"),fill=c(2,3))
library(MASS)
ld=lda(data$group~x1+x2)
names(ld)
ld
z=predict(ld)
z
table(z$class,data$group)
abline(0,0.098/0.2296)
p=c(x1=8.1,x2=2.0)

predict(ld,data.frame(x1=c(8.1,3.9),x2=c(2.0,2.8)))

