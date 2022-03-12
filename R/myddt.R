#' myddt
#'
#' @param df data set
#' @param SPECIES species to filter on
#'
#' @return makes a graph, prints data to the console
#' @export
#'
#' @examples
#' \dontrun{myddt(df = ddt, SPECIES = "CCATFISH")}
myddt <- function(df, SPECIES){
  x = "WEIGHT" # Set x and y values
  y="LENGTH"
  df1 <- df %>% filter(SPECIES=={{SPECIES}}) # Get the filtered value in dplyer
  write.csv(df1, file=paste(paste("LvsWfor",SPECIES,sep=""),".csv", sep=""),
            row.names=FALSE) # Write to the CSV file with no row names
  g <- ggplot(df1, aes_string(x=x,y=y)) + # Create the plot
    geom_point(aes_string(color = "RIVER" )) +
    geom_smooth(formula = y~x +I(x^2), method = "lm") +
    ggtitle("Cameron Bristol")
  print(g)
  print(df) # Print the required values
  print(df1)
  tab <- table(df$RIVER)/length(df$RIVER)
  print(tab)
}
