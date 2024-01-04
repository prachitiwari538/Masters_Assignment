set.seed(100)
#generate random numbers
n1 <- runif(n=10)
#show the minimum the usual way
min(n1)
n1 |> min()
n1 |> min() |> round(3)
