N = 7
set.seed(100)
#Sample with replacement, 100 numbers, with 20% of 1
v <- sample(0:1, N^2, replace = T, prob = c(0.6,0.4))
v
#Create matrix of 10X10
m <- matrix(v,nrow=N)
#Set the row and column names
rownames(m) <- paste0("P-",1:N)
colnames(m) <- rownames(m)

# set the diagonal to zero and dislay
diag(m) <- 0
m

#Include the igraph library
install.packages("igraph")
library(igraph)

# create the igraph data structure and display
g1 <- graph_from_adjacency_matrix(m)
g1

#Plot the graph
plot(g1,vertex.size=20,vertex.color="red")
