newEnv <- new.env()
ls()
newEnv$x <- 1
newEnv$y <- "Hello"
newEnv$z <- 1:10
ls()
search()
ls(newEnv)