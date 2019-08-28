multiply <- function(x, y) {
  if (class(x) != "numeric" | class(y) != "numeric")
    stop("x and y must both be numeric")
  x * y
}

multiply(2, 3)
multiply(c(2, 3), 3)
multiply(2, "three")
length(multiply(c(1, 2, 3), c(4, 5, 6)))
