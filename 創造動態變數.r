create=function(s,n,data){
  for (i in 1:n){
    x=paste(s,i,sep="")
    assign(x,data)
  }
  for (i in 1:n){
    x=paste(s,i,sep="")
    print(get(x))
  }
  
}


for (i in 1:10){
	x=sprintf("x%i",i)
	assign(x,rnorm(20))
	}
for (i in 1:10){
	x=sprintf("x%i",i)
	print(get(x))
	}
r=sprintf("x%i",1:10)
get(r[1])