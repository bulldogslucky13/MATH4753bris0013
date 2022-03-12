#' mynbin
#'
#' @param y number of trials until the rth success is returned
#' @param r determined number of success
#' @param p probability of a success per trial
#'
#' @return a negative binomial distribution
#' @export
#'
#' @examples
#' mynbin(y=10, p=0.4, r=3)
mynbin=function(y,r,p){
  choose(y-1,r-1)*p^r*(1-p)^(y-r)
}
