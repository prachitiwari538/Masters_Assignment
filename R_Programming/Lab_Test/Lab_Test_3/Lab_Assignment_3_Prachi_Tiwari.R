#loading the required libraries
library(aimsir17)
library(purrr)
library(dplyr)
library(ggplot2)
library(tidyr)

#display the dataset
observations

#Question 1

#using filter() to Filter three stations from the tibble observation
a17 <- observations %>%
  filter(station %in% c("DUBLIN AIRPORT", "MACE HEAD", "VALENTIA OBSERVATORY"))

a17

a17 %>%
  select(station) %>%
  pull() %>%
  unique()

#Question 2

#Added new column 'season' using case_when()
a17 <- a17 %>%
  mutate(season = case_when(
    month %in% c(11, 12, 1) ~ "Winter",
    month %in% c(2, 3, 4) ~ "Spring",
    month %in% c(5, 6, 7) ~ "Summer",
    month %in% c(8, 9, 10) ~ "Autumn",
  )) %>% select(station, season, date, wdsp, msl)

a17

#Question 3

#used group_by to group 2 columns 'station' and 'season' 
a17_n <- a17 %>%
  group_by(station, season) %>%
  nest(data = c(date, msl, wdsp))

a17_n

#Question 4

#calculating correlation coefficent between wdsp and msl using mutate and map_dbl 
a17_n <- a17_n %>% mutate(Correlation = map_dbl(data, ~{
  cor(.$wdsp,.$msl,use="complete.obs")
})) %>% arrange(Correlation)

a17_n

#Question 5

#Displayng absolute values of the correlation
ggplot(a17_n,aes(x=station,y=abs(Correlation),fill=season))+
  geom_col(position="dodge")