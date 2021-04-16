library(nycflights13)
library(ggplot2)
library(plotly)
library(tidyverse)
library(dplyr)
#View(flights)

df <- flights
#View(df)

#1
df<- na.omit(df)
#View(df)

#2
CIDF <- df %>% 
  group_by(flight) %>%
  summarise(cost_index=n()*(mean(arr_delay)/mean(distance)))
df <- merge(df,CIDF, by= "flight")

#3
df <- df%>%
  arrange(desc(arr_delay))
df <- df[1:50,]
df <- select(df, flight, distance, arr_delay, cost_index)
#4
delay_mat <- data.matrix(df)
#View(delay_mat)
#5
delay_heatmap <- heatmap(delay_mat, Rowv=NA, Colv=NA, col = heat.colors(256), 
                                        scale="column", margins=c(5,10))