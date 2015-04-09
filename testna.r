testna=function(x){
  p1=which(is.na(x))
  p2=which(x==" ")
  p3=which(x==".")
  pp1=rbind(p1%%nrow(x),p1%/%nrow(x)+1)
  pp1[2,which(pp1[1,]==0)]=pp1[2,which(pp1[1,]==0)]-1
  pp1[1,which(pp1[1,]==0)]=nrow(x)
  pp1=t(pp1)
  colnames(pp1)=c("x","y")
  
  pp2=rbind(p2%%nrow(x),p2%/%nrow(x)+1)
  pp2[2,which(pp2[1,]==0)]=pp2[2,which(pp2[1,]==0)]-1
  pp2[1,which(pp2[1,]==0)]=nrow(x) 
  pp2=t(pp2)
  colnames(pp2)=c("x","y")
  pp3=rbind(p3%%nrow(x),p3%/%nrow(x)+1)
  pp3[2,which(pp3[1,]==0)]=pp3[2,which(pp3[1,]==0)]-1
  pp3[1,which(pp3[1,]==0)]=nrow(x)
  pp3=t(pp3)
  colnames(pp3)=c("x","y")
  
  return(list(pp1,pp2,pp3))
}
