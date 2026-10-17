library(tidyverse)

# I had delicious arepas for dinner

library(scales)

hist_p <-diamonds |> 
  ggplot(aes(x = carat)) +
  geom_histogram(binwidth = 0.05, fill = "gray30", color = "white") +
  scale_y_continuous(labels = comma) +
  labs(
    title = "Histogram of Carat (Weight) among 50,000 Diamonds",
    subtitle = "Carats just at or above meaningful numbers are very common",
    caption = "diamonds dataset from ggplot2 package",
    x = "Carat",
    y = "Number"
  ) +
  theme_grey()
  ggsave(plot = hist_p, filename = "diamonds.png")
  