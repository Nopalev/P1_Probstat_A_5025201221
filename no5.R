# 5a

set.seed(1)
rnorm(1)
dexp(1, 3)

# 5b

hist(rexp(10, 3), main = "10 Bilangan Random")
hist(rexp(100, 3), main = "100 Bilangan Random")
hist(rexp(1000, 3), main = "1000 Bilangan Random")
hist(rexp(10000, 3), main = "10000 Bilangan Random")

# 5c

# mean

mean(rexp(100, 3))

#variance

sd(rexp(100, 3))^2
