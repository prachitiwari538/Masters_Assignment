set.seed(100)
ans <- table(sample(x=c("Adult", "Elderly", "Young"), size=1000, prob = c(.40,.30,.30), replace = T))
ans
pop <- prop.table(ans)
pop