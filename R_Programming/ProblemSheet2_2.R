install.packages("repurrrsive")
library(repurrrsive)

str(sw_people)
has_height <- c()
sw_people1 <- list()
for(i in seq_along(sw_people)) {
  if(sw_people[[i]]$height != "unknown") {
    has_height[length(has_height) + 1] <- as.numeric(sw_people[[i]]$height)
    sw_people1[length(sw_people1) + 1] <- sw_people[i]
  }
}
sum(has_height)
length(sw_people1)

#problem sheet question 3
characters <- c()
for(i in seq_along(sw_people1)) {
  if(as.numeric(sw_people[[i]]$height >= 225)) {
    characters[length(characters) + 1] <- sw_people[[i]]$name
  }
}
characters
