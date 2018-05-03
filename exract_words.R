library(tidytext) 
library(ggplot2)
library(RColorBrewer)
library(wordcloud)
library(tm)
library(twitteR)
library(ROAuth)
library(plyr)
library(stringr)
library(base64enc)
library(dplyr)
library(tidyr)
library(rtweet)
#Select only useful attributes
tweets_0413 <- data_20180413_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0414 <- data_20180414_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0415 <- data_20180415_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0416 <- data_20180416_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0417 <- data_20180417_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0418 <- data_20180418_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0419 <- data_20180419_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0420 <- data_20180420_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0421 <- data_20180421_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0422 <- data_20180422_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0423 <- data_20180423_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0424 <- data_20180424_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0425 <- data_20180425_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0426 <- data_20180426_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0427 <- data_20180427_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0428 <- data_20180428_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0429 <- data_20180429_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0430 <- data_20180430_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0501 <- data_20180501_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 

tweets_0502 <- data_20180502_DF %>% 
  select(id, statusSource, text, created, favoriteCount, retweetCount ) %>% 
  extract(statusSource, "source", "Twitter for (.*?)<") 


#extract words from each tweet
reg <- "([^A-Za-z\\d#@']|'(?![A-Za-z\\d#@ ]))" 

tweet_words_0413 <- tweets_0413 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0414 <- tweets_0414 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0415 <- tweets_0415 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0416 <- tweets_0416 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0417 <- tweets_0417 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 
tweet_words_0422 <- tweets_0422 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0418 <- tweets_0418 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0419 <- tweets_0419 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0420 <- tweets_0420 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0421 <- tweets_0421 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0422 <- tweets_0422 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0423 <- tweets_0423 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0424 <- tweets_0424 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0425 <- tweets_0425 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0426 <- tweets_0426 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0427 <- tweets_0427 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0428 <- tweets_0428 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 


tweet_words_0429 <- tweets_0429 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0430 <- tweets_0430 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0501 <- tweets_0501 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

tweet_words_0502 <- tweets_0502 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text, token = "regex", pattern = reg) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 




#visulaize the word counts
bp.words.0413 <- tweet_words_0413 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0414 <- tweet_words_0414 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0415 <- tweet_words_0415 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()



bp.words.0416 <- tweet_words_0416 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()
bp.words.0417 <- tweet_words_0417 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()
bp.words.0418 <- tweet_words_0418 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()
bp.words.0419 <- tweet_words_0419 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()
bp.words.0420 <- tweet_words_0420 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()
bp.words.0421 <- tweet_words_0421 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()
bp.words.0422 <- tweet_words_0422 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0423 <- tweet_words_0423 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0424 <- tweet_words_0424 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0425 <- tweet_words_0425 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0426 <- tweet_words_0426 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0427 <- tweet_words_0427 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0428 <- tweet_words_0428 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0429 <- tweet_words_0429 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0430 <- tweet_words_0430 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0501 <- tweet_words_0501 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()

bp.words.0502 <- tweet_words_0502 %>% 
  count(word, sort = TRUE) %>% 
  head(20) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(word, n)) + 
  geom_bar(stat = "identity") + 
  ylab("Occurrences") + 
  coord_flip()
#wordcloud
library(wordcloud)
library(twitteR)

#install.packages("extrafont")
library(extrafont)
#font_import()

test<-userTimeline("Bitcoin", n=100)
str(test[[1]])

tweetTexts<-unlist(lapply(test, function(t) { t$text}))

#### wordcloud

# library(webshot)
# library(wordcloud2) 
# library(htmlwidgets)
wordcloud(tweet_words_0413$word, min.freq = 20,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
wordcloud(tweet_words_0413$word, min.freq = 20,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))



#### playing with the settings 
#wordcloud(tweet_words_0414$word, min.freq=20, vfont=c("script", "plain"))
#wordcloud(tweet_words_0414$word, min.freq=20, vfont=c("gothic italian", "plain"))



#search_tweets
##Returns Twitter statuses matching a user provided search query. 
#ONLY RETURNS DATA FROM THE PAST 6-9 DAYS. 
#To return more than 18,000 statuses in a single call, set "retryonratelimit" to TRUE.
## search for 5000 tweets using the rstats hashtag
?search_tweets()
tweets0424_0502 <- search_tweets(
  "Bitcoin", n = 18,000, type = "popular") #only got 5/1 and 5/2