library(plyr)
library(stringr)
library(dplyr)
library(tidyr)
library(rtweet)

top30user_0416_0422 <- djt %>%
  arrange(desc(retweet_retweet_count)) %>%
  slice(1:30) 

top30user_0422_0428 <- djt2 %>%
  arrange(desc(retweet_retweet_count)) %>%
  slice(1:30) 

top60user_data <- rbind(lookup_users(top30user_0416_0422$user_id),lookup_users(top30user_0422_0428$user_id))

top60user_data <- top60user_data %>%
  arrange(desc(retweet_retweet_count))


#find out these popular youtubers' tweets and the relations between price and volume