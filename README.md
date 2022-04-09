# P1_Probstat_A_5025201221

## 1

> a

Digunakan fungsi `dgeom(x, prob)` dengan nilai x adalah 3 dan nilai prob adalah 0.20 untuk mendapatkan hasil distribusi geometrik

> b

Karena menggunakan data random, maka digunakan fungsi `rgeom(n, prob)` dengan nilai n adalah 10000 dan nilai prob adalah 0.20. Kemudian dicari mean apabila hasil fungsi `rgeom(n, prob)` adalah 3, sehingga bentuk script adalah seperti ini:

```r
mean(rgeom(n = 10000, prob = p) == 3)
```

> c

Didapat bahwa hasil perhitungan 1a adalah 0.1024 dan hasil perhitungan 1b adalah 0.1017

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
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability") 
```

Catatan: apabila gagal dilakukan proses *run*, maka perlu dilakukan instalasi *library* `dplyr` dan `ggplot2`

![dplyr](https://media.discordapp.net/attachments/910899681893171280/962363483763138560/unknown.png)

![ggplot2](https://media.discordapp.net/attachments/910899681893171280/962363366502989874/unknown.png)

Berikut adalah proses instalasi kedua library tersebut. Script diatas di dapat dari internet dengan tautan sebagai berikut: https://rpubs.com/mpfoley73/458721

> e

Rata-rata atau *mean* dari distribusi geometrik adalah $(1-p)/p$, dan variansi didapat dari $(1-p)/p^2$.
