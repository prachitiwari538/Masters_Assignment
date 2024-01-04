install.packages("ggplot2")
library(ggplot2)
library(aimsir17)
library("magrittr")
library(dplyr)

observations
str(observations)

#QUESTION 1
observation1 <- observations %>% filter(station %in% c("DUBLIN AIRPORT","MACE HEAD"),month==2, day %in% c(22,23))
observation1

ggplot(observation1, aes(x = date, y = wdsp, color = station)) + geom_point() + geom_line() +
  labs(title = "Wind Speed Plot",subtitle = "February 2017",
       x = "Time",y = "Wind Speed",
       color = "station") + theme(legend.position = "top")

#QUESTION 2
top5 <- observations %>% arrange(desc(rain)) %>% slice(5:1)
top5

#QUESTION 3
observations
temp21 <- observations %>% filter(station %in% c("PHOENIX PARK", "VALENTIA OBSERVATORY"), month==6, day==21) %>% select(hour, station, temp) %>% arrange(hour)
temp21

#QUESTION 4
temp21 <- observations %>% filter(station %in% c("PHOENIX PARK","VALENTIA OBSERVATORY"),month==6, day==21) %>%  
          select(hour, station, temp) %>% arrange(hour) %>% group_by(station) %>% 
          mutate(DailyMaxTempS=max(temp,na.rm=T), DiffDailyMax = temp - DailyMaxTempS)
temp21

ggplot(temp21, aes(x=hour, y = DiffDailyMax, color = station)) + geom_point() + geom_line()+ geom_hline(yintercept = max(temp21$DiffDailyMax)) + theme_void() +theme(legend.position = "bottom")

#QUESTION 5
observation2 <- observations %>% filter(station %in% c("DUBLIN AIRPORT","NEWPORT")) %>% group_by(station, hour) %>% summarize(total_rainfall = sum(rain, na.rm = TRUE))
observation2

ggplot(observation2, aes(x = hour, y = total_rainfall, fill = station)) + geom_bar(stat = "identity", position = "dodge") +
      labs(x = "hour",y = "TotalRain",fill = "Weather Station")  + theme(legend.position = "top")


