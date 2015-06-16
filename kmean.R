data(iris)
summary(iris)
data2=iris[,1:2]
data1=iris[,3:4]
model=kmeans(x=data1,centers = 3)
names(model)
model[1]
table(iris[,5],model$cluster)
plot(data1,pch=21,bg=model$cluster)
