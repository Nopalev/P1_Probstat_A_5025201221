# 2a

n = 20

p = 0.2

y <- dbinom(4,n,p)

print(y)

# 2b

Probabilitas <- dbinom(0:20,20,0.2)

Frekuensi <- 0:20

plot(Frekuensi, Probabilitas, type='h', main = 'Histrogram')

# 2c

# mean

n*p

#variance

n*p*(1-p)
