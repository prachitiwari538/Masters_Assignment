set.seed(100)
v <- sample(1:6, 10, replace = T)
v

n_six <- 0
for (i in seq_along(v)) {
  n_six <- n_six + as.integer(v[i] == 6)
}
n_six