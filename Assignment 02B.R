# Data Frames
x <- 10:1
y <- -4:5
z <- c('Hockey', 'Football', 'Curling', 'Soccer', 'Rugby', 'Baseball', 'Golf', 'Basketball', 'Wrestling', 'Tennis')
theDF <- data.frame(x,y,z)
theDF

str(theDF)

theDF[1,2]
View(theDF)

# Using names
theDF$x
theDF$x[3]

# Editing names
names(theDF)<-c("Popularity", "Team Strength", "Sport")
View(theDF)

thesum=theDF[1,1]+theDF[2,1]+theDF[3,1]+theDF[4,1]+theDF[5,1]+theDF[6,1]+theDF[7,1]+theDF[8,1]+theDF[9,1]+theDF[10,1]
cat("the sum of popularity is:",thesum)