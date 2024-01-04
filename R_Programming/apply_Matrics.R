set.seed(100)
grades <- sample(30:90, 15, replace = T)
results <- matrix(grades, nrow = 5)
rownames(results) <- paste0("St-",1:5)
colnames(results) <- paste0("Sub-",1:3)
results

max_gr_subject <- apply(results,2,function(x)max(x))
max_gr_subject

max_gr_subject <- apply(results,1,function(x)max(x))
max_gr_subject