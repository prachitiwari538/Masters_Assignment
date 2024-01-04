test <- c(1:10,NA,12:20)
test

v_sum <- function(x) {
  return(list(Size=length(x),
              Min=min(x,na.rm=T),
              Max=max(x,na.rm=T),
              Mean=mean(x,na.rm=T),
              NAs=sum(is.na(x))
              ))
}

res <- v_sum(test)
str(res)