#' Plot of n and output from myseq_n function
#'
#' This function creates a geom_line plot where x = n and y = the output from the myseq_n function.
#'
#' @param df
#'
#' @return a line plot
#' @export myplot_n
#' @importFrom ggplot2 ggplot aes geom_line xlab ylab
#' @examples myplot_n(my_data)
myplot_n <- function(df) {
  funvec <- vector(mode = "integer", length = nrow(df))
  for(i in seq_along(funvec))
  {df$output[i] <- myseq_n(x = c(df$x[i], df$y[i], df$z[i]), n = df$n[i])}
  ggplot2::ggplot() +
    ggplot2::geom_line(ggplot2::aes(x = df$n, y = df$output)) +
    ggplot2::xlab("n") +
    ggplot2::ylab("output")
}
