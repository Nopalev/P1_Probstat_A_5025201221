# 1a

p = 0.20
n = 3
dgeom(x = n, prob = p)

# 1b

mean(rgeom(n = 10000, prob = p) == 3)

# 1d

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

# 1e

# mean
(1-p)/p

#variance

(1-p)/(p*p)