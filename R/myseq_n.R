#' Recursive Sequence of x and n
#'
#' This function takes as input a vector x containing the first three numeric elements of this sequence and a positive integer n denoting the final element of the sequence to calculate and returns element n.
#'
#' @param x integer
#' @param n integer
#'
#' @return an integer n
#' @export myseq_n
#'
#' @examples myseq_n(x = c(2, 3, 3), n = 3)
myseq_n <- function(x, n) {
  stopifnot(length(x) == 3 & is.numeric(x))
  stopifnot(n > 0 & as.integer(n))
  seqvec<-vector(mode="integer",length=n)
  for(i in seq_along(seqvec)){
    if(i <= 3){
      seqvec[i] <- x[i]}
    else {seqvec[i]=seqvec[i-1] +(seqvec[i-3] - seqvec[i-2])/i}}
  return(seqvec[n])
}
