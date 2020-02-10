# question6

birthday <- function(n){
  return(pbirthday(n, 365, 2))
}


# plot
p <- c()

for(n in 1: 50){
  p[n] <- birthday(n)
}

plot(p, xlab = "Number of people", ylab="Match Probability")