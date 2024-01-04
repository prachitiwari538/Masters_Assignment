set.seed(100)
data <- sample(1:9)
data

ml <- matrix(data, nrow = 3, ncol = 3, dimnames = list(c("R1","R2","R3"),c("C1","C2","C3")))
ml

nrow(ml)

ncol(ml)

dim(ml)