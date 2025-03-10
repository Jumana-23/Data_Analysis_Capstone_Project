# data upload 
data <-read.csv("social_media_usage.csv")
head(data)

# calculated engagement according to standard social media analysis 
data$engagement <- (data$Posts_Per_Day+data$Likes_Per_Day+data$Follows_Per_Day)/data$Daily_Minutes_Spent 
head(data)
# mapped average engagement on barplot 
library(ggplot2)
ggplot(data, aes(x=App, y=engagement, color=App))+geom_bar(stat = "summary", fun = "mean")+ labs(title = "Average Engagment per Social Media Platform", x="App", y="Avg. Engagement")
# all of the correlations calculated below do not show any significant relationship between all the attributes 
cor(data$Posts_Per_Day,data$engagement)
cor(data$Likes_Per_Day,data$engagement)
cor(data$Follows_Per_Day,data$engagement)
cor(data$Daily_Minutes_Spent,data$engagement)

cor(data$Posts_Per_Day,data$Likes_Per_Day)
cor(data$Posts_Per_Day,data$Follows_Per_Day)
cor(data$Posts_Per_Day,data$Daily_Minutes_Spent)

cor(data$Daily_Minutes_Spent, data$Likes_Per_Day)
cor(data$Daily_Minutes_Spent, data$Follows_Per_Day)

cor(data$Likes_Per_Day, data$Follows_Per_Day)
