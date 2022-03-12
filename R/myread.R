#' myread
#'
#' @param dird the directory string
#' @param csv the CSV file you wish to open
#'
#' @return the CSV data to be stored in a variable when opened
#' @export
#'
#' @examples
#' \dontrun{myread("/Users/cameronbristol/Desktop/OU/MATH4753/Lab4/", "SPRUCE.csv")}
myread=function(dird, csv){
  fl=paste(dird,csv,sep="")
  read.table(fl,header=TRUE,sep=",")
}
