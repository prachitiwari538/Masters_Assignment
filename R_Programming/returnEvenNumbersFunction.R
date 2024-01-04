set.seed(200)
v <- sample(1:20, 10)
v

get_even1 <- function(value) {
  v[v%%2 == 0]
}

v1 <- get_even1(v)
v1