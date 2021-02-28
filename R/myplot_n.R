myplot_n <- function(df) {
  funvec <- vector(mode = "integer", length = nrow(df))
  for(i in seq_along(funvec))
  {df$output[i] <- myseq_n(x = c(df$x[i], df$y[i], df$z[i]), n = df$n[i])}
  ggplot() +
    geom_line(aes(x = df$n, y = df$output)) +
    xlab("n") +
    ylab("output")
}
