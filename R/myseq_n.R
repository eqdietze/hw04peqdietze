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
