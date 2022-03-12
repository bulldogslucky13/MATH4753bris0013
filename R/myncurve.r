#' myncurve
#'
#' @param mu mean value
#' @param sigma standard defiation value
#' @param a upper bound of lower tail problem
#'
#' @return a normal distribution graph with probability place on it
#' @export
#'
#' @examples
#' myncurve(mu=10,sigma=5, a=6)
myncurve = function(mu, sigma, a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xcurve=seq(mu-3*sigma, a,length=1000)
  ycurve=dnorm(xcurve,mean=mu,sd=sigma)
  polygon(c(mu-3*sigma,xcurve,a),c(0,ycurve,0),col="Red")
  prob=pnorm(a,mean=mu,sd=sigma)
  prob=round(prob,4)
  text(x=(a-(mu-3*sigma))/2, y=max(ycurve)/2, paste("Area = ", prob, sep=""))
}
