install.packages("rtweet")
library(rtweet)
install.packages("ggplot2")
library(ggplot2)

## install devtools package if it's not already
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

## install dev version of rtweet from github
devtools::install_github("mkearney/rtweet")

## load rtweet package
library(rtweet)

## whatever name you assigned to your created app
appname <- "rtweet_token"

## api key (example below is not a real key)
key <- "XSYdquVuoAAPG4uz663QbYykU"

## api secret (example below is not a real key)
secret <- "UNNLx9ziQhGpLeWe3FwD7EHSuBliH9gp54da2A3L1532kvFNZ5"

## create token named "twitter_token"
twitter_token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret)

Sys.getenv("TWITTER_PAT")

## path of home directory
home_directory <- path.expand("~/")

## combine with name for token
file_name <- file.path(home_directory, "twitter_token.rds")

## save token to home directory
saveRDS(twitter_token, file = file_name)

cat(paste0("TWITTER_PAT=", file_name),
    file = file.path(home_directory, ".Renviron"),
    append = TRUE)

## search for 100000 tweets using the Bitcoin hashtag
rt_0422 <- search_tweets("#Bitcoin", n = 1000000, include_rts = FALSE)

## preview tweets data
rt_0422

## preview users data
users_data(rt_0422)

## plot time series (if ggplot2 is installed)
ts_plot(rt_0422)

## plot time series of tweets
ts_plot(rt_0422, "3 hours") +
  ggplot2::theme_minimal() +
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Frequency of #Bitcoin Twitter statuses",
    subtitle = "Twitter status (tweet) counts aggregated using three-hour intervals",
    caption = "\nSource: Data collected from Twitter's REST API via rtweet"
  )

## search for 250,000 tweets containing the word Bitcoin
rt2 <- search_tweets(
  "Bitcoin", n = 250000, retryonratelimit = TRUE
)
#Stream all tweets mentioning Bitcoin for a week.
# 04/16~04/22
## 04/22 Stream all tweets mentioning Bitcoin for a week (60 secs x 60 mins * 24 hours *  7 days)
stream_tweets(
  "Bitcoin",
  timeout = 60 * 60 * 24 * 7,
  file_name = "Bitcoin.json",
  parse = FALSE
)

## 04/22 read in the data as a tidy tbl data frame
djt <- parse_stream("Bitcoin.json")


# 04/22~04/28
## 04/28 Stream all tweets mentioning Bitcoin for a week (60 secs x 60 mins * 24 hours *  7 days)
stream_tweets(
  "Bitcoin",
  timeout = 60 * 60 * 24 * 7,
  file_name = "Bitcoin2.json",
  parse = FALSE
)
## 04/28 read in the data as a tidy tbl data frame
djt2 <- parse_stream("Bitcoin2.json")


#Text extraction
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
library(tidytext) 
library(ggplot2)

tweets_0416_0422 <- djt %>% 
  select(user_id, text, is_retweet, favorite_count, retweet_count,hashtags,quoted_text,retweet_text ) 

tweets_0416_0422 <- as.data.frame(tweets_0416_0422)

tweets_0422_0428 <- djt %>% 
  select(user_id, text, is_retweet, favorite_count, retweet_count,hashtags,quoted_text,retweet_text ) 

tweets_0422_0428 <- as.data.frame(tweets_0422_0428)


reg <- "([^A-Za-z\\d#@']|'(?![A-Za-z\\d#@ ]))" 

retweet_words_0416_0422 <- tweets_0416_0422 %>% 
  filter(!str_detect(retweet_text, '^"')) %>% 
  mutate(retweet_text = str_replace_all(retweet_text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, retweet_text) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

wordcloud(retweet_words_0416_0422$word, min.freq = 30,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


tweet_words_0416_0422 <- tweets_0416_0422 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 


wordcloud(tweet_words_0416_0422$word, min.freq = 30,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


retweet_words_0422_0428 <- tweets_0422_0428 %>% 
  filter(!str_detect(retweet_text, '^"')) %>% 
  mutate(retweet_text = str_replace_all(retweet_text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, retweet_text) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

wordcloud(retweet_words_0422_0428$word, min.freq = 30,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

tweet_words_0422_0428 <- tweets_0422_0428 %>% 
  filter(!str_detect(text, '^"')) %>% 
  mutate(text = str_replace_all(text, " https:// t.co/[A-Za-z\\d]+|&", "")) %>% 
  unnest_tokens(word, text) %>% 
  filter(!word %in% stop_words $word, 
         str_detect(word, "[az]")) 

wordcloud(tweet_words_0422_0428$word, min.freq = 30,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


## get user IDs of accounts followed by CNN
bitcoin_fds <- get_friends("Bitcoin")

## lookup data on those accounts
bitcoin_fds_data <- lookup_users(bitcoin_fds$user_id)




