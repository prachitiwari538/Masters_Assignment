set.seed(100)
rn <- sample(1:6,30,replace=T)
rn

n5 <- sum(rn==5)
n5

n5_locs <- which(rn==5)
n5_locs