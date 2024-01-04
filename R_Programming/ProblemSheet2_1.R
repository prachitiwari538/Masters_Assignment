cars <- as.list(mtcars)
str(cars)

result <- list(mean_mpg=vector(mode="numeric", length=1),
               mean_disp=vector(mode="numeric", length=1))
str(result)

result$mean_mpg <- mean(cars$mpg)
result$mean_disp <- mean(cars$disp)
str(result)

mean(cars$mpg)
mean(cars$disp)
