set.seed(100)
N=5

Day1 <- rnorm(N,5,2)
Day2 <- rnorm(N,7,3)
Day3 <- rnorm(N,12,4)
Day4 <- rnorm(N,14,2)
Day5 <- rnorm(N,10,3)

temps <- cbind(Day1,Day2,Day3,Day4,Day5)
temps <- matrix(temps,nrow=5,ncol=5,dimnames=list(c("Galway","Dublin","Cork","Limerick","Sligo"),c("Day1","Day2","Day3","Day4","Day5")))

is.matrix(temps)
temps

col <- apply(temps,1,max)
col

temps_2 <- cbind(temps,Max_Temp=col)
colnames(temps_2)[5] <- "Max_Temp" 
temps_2
