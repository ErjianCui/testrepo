library(sf)
library(tidyverse)
library(here)
library(dplyr)
library(readr)

#upload csv file
All_Data <- read_csv("E:/r/data/week4/HDR23-24_Composite_indices_complete_time_series.csv")

#提取需要信息
Gii_data <- All_Data %>%
  dplyr::select(contains("iso3"),
               contains("country"),
               contains("gii"))
#查看数据形式
class(Gii_data$gii_2011)
#添加新列
Diff_inequality <- Gii_data %>%
  mutate(Gii_Diff = gii_2019 - gii_2010)
print(Diff_inequality)