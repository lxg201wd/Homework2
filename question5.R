
dat <- sample(1:6, 6000,replace = TRUE)

m <- matrix(
  data = dat,
  nrow = 1000,
  byrow = TRUE
)

# mean vector
mean_v <- apply(m, 1,mean)

# hist
hist(mean_v)

# avg
mean(mean_v)

# var
var(mean_v)
