install.packages("pryr")
library(pryr)
x <- c(1,2,3)
y <- c(3,4,5)
z <- x*y
pryr::where("x")
pryr::where("y")
pryr::where("z")

where("min")
where("max")
