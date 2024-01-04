my_lapply <- function(x,f) {
  #create output list vector
  o <- vector(mode = "list", length = length(x))
  
  #loop though the entire input list
  for(i in seq_along(x)) {
    o[[i]] <- f(x[[i]])
  }
  #return the output list
  o
}

l_in <- list(1:4, 11:14, 21:24)
l_out <- my_lapply(l_in, mean)
l_out