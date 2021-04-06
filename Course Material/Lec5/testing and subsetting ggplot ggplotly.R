library(ggplot2)
library(plotly)
df <- data.frame(
  supp = rep(c("VC", "OJ"), each = 3),
  dose = rep(c("D0.5", "D1", "D2"), 2),
  len = c(6.8, 15, 33, 4.2, 10, 29.5)
)
p<-ggplot(subset(df, len >10), aes(x = dose, y = len))+
  geom_col(aes(fill = supp), width = 0.7) +
  scale_fill_viridis_d()
ggplotly(p)