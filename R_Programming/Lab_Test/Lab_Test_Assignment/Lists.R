l <- list(a=1:10,
          b=rep(c(T,F),5),
          c=list(d=2:4,
                 e="Hello"))

l1 <- l[1:2]
str(l1)

v1 <- l[[2]]
v1

v2 <- l[["c"]]$e
v2

names(l) <- LETTERS[1:3]
str(l)