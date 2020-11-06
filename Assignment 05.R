df<-read.csv("USvideos.csv")
trendingdatecol<-as.data.frame(df$trending_date)
View(trendingdatecol)
if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)
DF1 <- df %>% separate(col=publish_time,into=c("PDate", "PTime"),"T",extra="merge")
timecol2 <- timecol %>% separate(col=`DF1$PTime`,into=c("PTimee"), "000")
view(timecol2)
View(DF1)

datecol<-as.data.frame(DF1$PDate)
View(datecol)
timecol<-as.data.frame(DF1$PTime)
View(timecol)

DF_replaced <- mutate(df,title=str_to_title(title,title=="title"))
View(DF_replaced)

