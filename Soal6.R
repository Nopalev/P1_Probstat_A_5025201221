# 6a

n = 100
mean = 50
standardeviasi = 8

set.seed(1)
data <- rnorm(n, mean, standardeviasi)
summary(data)

x1 = runif(1, min = min(data), max = mean)
x2 = runif(1, min = mean, max = max(data))

pnorm(x1, mean, standardeviasi)
pnorm(x2, mean, standardeviasi)

pnorm(x1, mean, standardeviasi) - pnorm(x2, mean, standardeviasi)
plot(data)

# 6b

hist(data, 50, main = "5025201221_Naufal Faadhilah_Probstat_A_DNhistogram")

# 6c

(sd(data)) ^ 2