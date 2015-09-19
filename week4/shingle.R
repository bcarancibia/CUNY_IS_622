make.list.from.intervals <- function(x)
{
  if (ncol(x) != 2) stop("x must be matrix with 2 columns")
  ans <- vector(mode = "list", length = nrow(x))
  for (i in seq_len(nrow(x))) ans[[i]] <- x[i,]
  ans
}


shingle <-
  function(x, intervals=sort(unique(x)))
  {
    if (ncol(as.matrix(intervals))==1)
      intervals <- cbind(intervals, intervals, deparse.level = 0)
    else if (ncol(as.matrix(intervals)) > 2)
      stop("bad value of 'intervals'")
    attr(x, "levels") <- make.list.from.intervals(intervals)
    class(attr(x, "levels")) <- "shingleLevel"
    class(x) <- "shingle"
    x
  }
