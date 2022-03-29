#' mynbin
#'
#' @param n number of elements in 1 iteration
#' @param iter number of iterations to run
#' @param a lower bound of uniform distribution
#' @param b upper bound of uniform distribution
#'
#' @return a random uniform distribution with theoretical distribution plotted for reference
#' @export
#'
#' @examples
#' myclt(n=50,iter=10000,a=5,b=10)
myclt=function(n,iter,a=0,b=5){
  y=runif(n*iter,a,b)
  data=matrix(y,nr=n,nc=iter,byrow=TRUE)
  sm=apply(data,2,sum)
  h=hist(sm,plot=FALSE)
  hist(sm,col=rainbow(length(h$mids)),freq=FALSE,main="Distribution of the sum of uniforms")
  curve(dnorm(x,mean=n*(a+b)/2,sd=sqrt(n*(b-a)^2/12)),add=TRUE,lwd=2,col="Blue")
  sm
}
