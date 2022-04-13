library(tidyverse)
setwd("C:/Users/Robey/Desktop/MA478 Proj/MA478-Project")

full <- read.csv(file = "used_cars_data.csv", stringsAsFactors = TRUE)

set.seed(222)
data <- full %>% 
  sample_n(round(nrow(full)*0.001))

data %>% write.csv("subset_used_cars_data.csv")
rm(full)
