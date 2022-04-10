# P1_Probstat_A_5025201221

## 1

> a

Digunakan fungsi `dgeom(x, prob)` dengan nilai x adalah 3 dan nilai prob adalah 0.20 untuk mendapatkan hasil distribusi geometrik.

> b

Karena menggunakan data random, maka digunakan fungsi `rgeom(n, prob)` dengan nilai n adalah 10000 dan nilai prob adalah 0.20. Kemudian dicari mean apabila hasil fungsi `rgeom(n, prob)` adalah 3, sehingga bentuk script adalah seperti ini:

```r
mean(rgeom(n = 10000, prob = p) == 3)
```

> c

Didapat bahwa hasil perhitungan 1a adalah 0.1024 dan hasil perhitungan 1b adalah 0.1017

![hasil](https://cdn.discordapp.com/attachments/910899681893171280/962709223475658752/unknown.png)

Berikut adalah hasil proses berjalannya *script*.

> d

Proses penggambaran histogram dilakukan dengan script berikut:

```r
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 gagal Sebelum Sukses Pertama",
       subtitle = "Geometrik(.2)",
       x = "Kegagalan Sebelum Sukses Pertama (x)",
       y = "Peluang") 
```

![Histogram](https://media.discordapp.net/attachments/910899681893171280/962374861093765130/unknown.png)

Berikut adalah histogram soal 1d

Catatan: apabila gagal dilakukan proses *run*, maka perlu dilakukan instalasi *library* `dplyr` dan `ggplot2`

![dplyr](https://media.discordapp.net/attachments/910899681893171280/962363483763138560/unknown.png)

![ggplot2](https://media.discordapp.net/attachments/910899681893171280/962363366502989874/unknown.png)

Berikut adalah proses instalasi kedua library tersebut. Script diatas di dapat dari internet dengan tautan sebagai berikut: https://rpubs.com/mpfoley73/458721

> e

Rata-rata atau *mean* dari distribusi geometrik adalah ![mean](https://latex.codecogs.com/svg.image?\frac{1-p}{p}), dan variansi didapat dari ![variance](https://latex.codecogs.com/svg.image?\frac{1-p}{p^2}).

## 2

> a

Digunakan fungsi `dbinom(k, n, p)` dengan parameter k adalah 4, parameter n adalah 20, dan parameter p adalah 0.20 untuk mencari peluang ditemukan 4 pasien sembuh.

> b

Penggambaran grafik histogram dijalankan dengan *script* berikut:

```r
Probabilitas <- dbinom(0:20,20,0.2)

Frekuensi <- 0:20

plot(Frekuensi, Probabilitas, type='h', main = 'Histrogram')
```

Dengan histogramnya adalah sebagai berikut:

![histogram](https://cdn.discordapp.com/attachments/910899681893171280/962713690128400394/unknown.png)

> c

Rata-rata atau *mean* dari distribusi binomial adalah ![mean](https://latex.codecogs.com/svg.image?n&space;p), dan variansi didapat dari ![variance](https://latex.codecogs.com/svg.image?np(1-p)).

## 3

> a

Digunakan fungsi `ppois(q, lambda, lower.tail, log)` dengan parameter q adalah 6, parameter lambda adalah 4.5, parameter lower.tail diisi *false*, dan parameter log dibiarkan saja sehingga bentuk *script* menjadi seperti ini:

```r
ppois(6, 4.5, FALSE)
```

> b

Penggambaran grafik histogram dijalankan dengan *script* berikut:

```r
hist(rpois(365, 6), main = 'Histogram')
```

Dengan histogramnya adalah sebagai berikut:

![histogram](https://media.discordapp.net/attachments/910899681893171280/962718864368603196/unknown.png)

> c

Peluang terjadinya kelahiran 6 bayi dalam satu hari adalah 0.1689494.

![peluang](https://cdn.discordapp.com/attachments/910899681893171280/962719741909299240/unknown.png)

Adapun dalam waktu satu tahun terdapat kemungkinan ada sekitar 60 kejadian kelahiran 6 bayi dalam satu hari.

> d

Rata-rata atau *mean* dan variansi atau *variance* dari distribusi Poisson adalah ![mean_and_variance](https://latex.codecogs.com/svg.image?\lambda&space;).


## 4

> a

Fungsi probabilitas dari distribusi Chi-Square adalah `pchisq(q, df)` dengan nilai q adalah 2 dan nilai df adalah 10.

> b

Penggambaran grafik histogram dijalankan dengan *script* berikut:

```r
hist(rchisq(100, 10),  xlab = "X", ylab = "V", main = "Histogram")
```

Dengan histogramnya adalah sebagai berikut:

![histogram](https://media.discordapp.net/attachments/910899681893171280/962722935238459473/unknown.png)

> c

Rata-rata atau *mean* dari distribusi Chi_Square adalah ![mean](https://latex.codecogs.com/svg.image?V), dan variansi didapat dari ![variance](https://latex.codecogs.com/svg.image?2).

## 5

> a

Digunakan fungsi `dexp(x_dexp, rate)` dengan nilai x_dexp adalah 1 dan nilai rate adalah 3.

> b

Berikut terlampir *screenshot* histogram untuk semua kasus:

![10](https://cdn.discordapp.com/attachments/910899681893171280/962725554069598308/unknown.png)

![100](https://cdn.discordapp.com/attachments/910899681893171280/962725614446583859/unknown.png)

![1000](https://cdn.discordapp.com/attachments/910899681893171280/962725659707314236/unknown.png)

![10000](https://cdn.discordapp.com/attachments/910899681893171280/962726805792505907/unknown.png)

> c

Rata-rata atau *mean* dan variansi atau *variance* dari distribusi eksponensial didapat dari *script* berikut:

```r
# mean

mean(rexp(100, 3))

#variance

sd(rexp(100, 3))^2
```
## 6

> a

Fungsi probabilitasi didapat dari *script* berikut:

```r
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
```

> b

Penggambaran grafik histogram dijalankan dengan *script* berikut:

```r
hist(data, 50, main = "5025201221_Naufal Faadhilah_Probstat_A_DNhistogram")
```

Dengan histogramnya adalah sebagai berikut:

![histogram](https://cdn.discordapp.com/attachments/910899681893171280/962728444213461062/unknown.png)

> c

Variansi atau *variance* dari distribusi normal didapat dari *script* berikut:

```r
(sd(data)) ^ 2
```
