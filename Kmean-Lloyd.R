require(fields)

Kmean <- function(X,K) {
  rand<-sample(1:nrow(X),K)
  Ctr<-X[rand,]
  #one can combine these two steps into one single step as following.
  # C <- X[sample.int(nrow(X),size = K, replace = FALSE),] 
  cor_new <- rep(0,nrow(X)) 
  cor_old <- rep(-1,nrow(X))
  findmean<-function(i){
    ave<-apply(subset(X,cor_new==i),2,mean)
    ave
  }
  #the following is the update rule. It gets two cor_old and cor_new
  #and update cor_old, and update cor_new with the minimum distances. 
  while(any(cor_new!=cor_old)) {    
    cor_old <- cor_new
    cor_new <- apply(rdist(X,Ctr),1,which.min)
    Ctr <- t(sapply(1:K,findmean))
  }
  return(list(cluster=cor_new, centers=Ctr))
}

X <- as.matrix(read.csv("hw3-cluster.csv",header=F)) 
dimnames(X)[[2]]<-NULL

nstart <- 200 
K <- 5
Allcenters <- c()

for(i in 1:nstart) {
  cs <- Kmean(X,K) 
  Allcenters <- rbind(Allcenters,cs$centers) 
}

plot(X,col=8,pch=20,xlab="x_cor",ylab="y_cor",main="Kmean clustering") 
points(Allcenters)