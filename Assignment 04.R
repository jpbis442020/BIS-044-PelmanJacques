library(readr)
used_cars_data <- read_csv("archive/used_cars_data.csv")
View(used_cars_data)
############################################

# Looking at what we got
class(used_cars_data)
typeof(used_cars_data)
str(used_cars_data)


summary(used_cars_data $ year)
summary(used_cars_data $ highway_fuel_economy)