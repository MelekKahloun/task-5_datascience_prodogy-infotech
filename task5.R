library(tidyverse)
library(lubridate) 
library(ggplot2)
library(dplyr)
library(sf)
library(ggmap)

file_path <- "C:\\Users\\lenovo\\Downloads\\prodigy\\task 5\\RTA Dataset.csv"


data <- read.csv(file_path, sep=",", header=TRUE, stringsAsFactors=FALSE)


head(data)




str(data)

summary(data)



road_conditions <- table(data$Road_surface_type)
road_conditions

barplot(road_conditions, main="Accidents by Road Conditions", col="lightblue", las=2)

weather_conditions <- table(data$Weather_conditions)
weather_conditions

barplot(weather_conditions, main="Accidents by Weather Conditions", col="lightgreen", las=2)

accidents_by_hour <- table(data$Time)
accidents_by_hour

barplot(accidents_by_hour, main="Accidents by Time of Day", col="lightcoral", las=2, xlab="Hour of the Day", ylab="Number of Accidents")
