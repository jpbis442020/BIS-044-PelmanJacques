df<-read.csv("USvideos.csv")
trendingdatecol<-as.data.frame(df$trending_date)
View(trendingdatecol)
if (!require("tidyverse")) install.packages("tidyverse")
library(tidyverse)
DF1 <- df %>% separate(col=publish_time,into=c("PDate", "PTime"),"T",extra="merge")
View(DF1)
datecol<-as.data.frame(DF1$PDate)
View(datecol)
timecol<-as.data.frame(DF1$PTime)
View(timecol)
#str_to_title(timecol)
#View(timecol)
#df %>% str_replace("title", "Title")
#dfdone <- df %>%
#  str_replace_all("title", "Title")
#view(dfdone)

#DF_replaced <- mutate(df,title=replace(title,title=="title","Title"))
#View(DF_replaced)
DF_replaced <- mutate(df,title=str_to_title(title,title=="title"))
View(DF_replaced)
