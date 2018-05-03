#--- Step 1. Twitter Authentication for extracting tweets

#--- Step 2. Install and Load R Packages
# install.packages("RColorBrewer")
# install.packages("tm")
# install.packages("wordcloud")
# install.packages('base64enc')
# install.packages('ROAuth')
# install.packages('plyr')
# install.packages('stringr')
# install.packages('twitteR')

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


#--- Step 3. Getting a curl Certification
download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")

#--- Step 4. Setting up the Certification for Twitter
# Set constant requestURL
requestURL <- "https://api.twitter.com/oauth/request_token"
# Set constant accessURL
accessURL <- "https://api.twitter.com/oauth/access_token"
# Set constant authURL
authURL <- "https://api.twitter.com/oauth/authorize"

#--- Step 5. Authorization for the Twitter account
consumerKey <- "XSYdquVuoAAPG4uz663QbYykU"
consumerSecret <- "UNNLx9ziQhGpLeWe3FwD7EHSuBliH9gp54da2A3L1532kvFNZ5"
accessToken <- "799137467303600129-ZaH1GA9wEmtg7O3mhKzuDl1QOOQVaGd"
accessTokenSecret <- "8Ju19Xk1NKnNkC2uMNOLHDhkwFSsXWqEMLt7udFJH8iJv"

setup_twitter_oauth(consumerKey,
                    consumerSecret,
                    accessToken,
                    accessTokenSecret)

data_20180413 <- searchTwitter("Bitcoin",n=3000,since='2018-04-13', until='2018-04-14', lang=NULL)
data_20180414 <- searchTwitter("Bitcoin",n=3000,since='2018-04-14', until='2018-04-15', lang=NULL)
data_20180415 <- searchTwitter("Bitcoin",n=3000,since='2018-04-15', until='2018-04-16', lang=NULL)
data_20180416 <- searchTwitter("Bitcoin",n=3000,since='2018-04-16', until='2018-04-17', lang=NULL)
data_20180417 <- searchTwitter("Bitcoin",n=3000,since='2018-04-17', until='2018-04-18', lang=NULL)
data_20180418 <- searchTwitter("Bitcoin",n=3000,since='2018-04-18', until='2018-04-19', lang=NULL)
data_20180419 <- searchTwitter("Bitcoin",n=3000,since='2018-04-19', until='2018-04-20', lang=NULL)
data_20180420 <- searchTwitter("Bitcoin",n=3000,since='2018-04-20', until='2018-04-21', lang=NULL)
data_20180421 <- searchTwitter("Bitcoin",n=3000,since='2018-04-21', until='2018-04-22', lang=NULL)
data_20180422 <- searchTwitter("Bitcoin",n=3000,since='2018-04-22', until='2018-04-23', lang=NULL)
data_20180423 <- searchTwitter("Bitcoin",n=3000,since='2018-04-23', until='2018-04-24', lang=NULL)
data_20180424 <- searchTwitter("Bitcoin",n=3000,since='2018-04-24', until='2018-04-25', lang=NULL)
data_20180425 <- searchTwitter("Bitcoin",n=3000,since='2018-04-25', until='2018-04-26', lang=NULL)
data_20180426 <- searchTwitter("Bitcoin",n=3000,since='2018-04-26', until='2018-04-27', lang=NULL)
data_20180427 <- searchTwitter("Bitcoin",n=3000,since='2018-04-27', until='2018-04-28', lang=NULL)
data_20180428 <- searchTwitter("Bitcoin",n=3000,since='2018-04-28', until='2018-04-29', lang=NULL)
data_20180429 <- searchTwitter("Bitcoin",n=3000,since='2018-04-29', until='2018-04-30', lang=NULL)
data_20180430 <- searchTwitter("Bitcoin",n=3000,since='2018-04-30', until='2018-05-01', lang=NULL)
data_20180501 <- searchTwitter("Bitcoin",n=3000,since='2018-05-01', until='2018-05-02', lang=NULL)
data_20180502 <- searchTwitter("Bitcoin",n=3000,since='2018-05-02', until='2018-05-03', lang=NULL)


# more info about tweets--> data frame the initial data
data_20180413_DF <- twListToDF(data_20180413) 
data_20180414_DF <- twListToDF(data_20180414) 
data_20180415_DF <- twListToDF(data_20180415) 
data_20180416_DF <- twListToDF(data_20180416)
data_20180417_DF <- twListToDF(data_20180417)
data_20180418_DF <- twListToDF(data_20180418)
data_20180419_DF <- twListToDF(data_20180419) 
data_20180420_DF <- twListToDF(data_20180420) 
data_20180421_DF <- twListToDF(data_20180421) 
data_20180422_DF <- twListToDF(data_20180422) 
data_20180423_DF <- twListToDF(data_20180423) 
data_20180424_DF <- twListToDF(data_20180424)
data_20180425_DF <- twListToDF(data_20180425) 
data_20180426_DF <- twListToDF(data_20180426) 
data_20180427_DF <- twListToDF(data_20180427)
data_20180428_DF <- twListToDF(data_20180428) 
data_20180429_DF <- twListToDF(data_20180429) 
data_20180430_DF <- twListToDF(data_20180430)
data_20180501_DF <- twListToDF(data_20180501) 
data_20180502_DF <- twListToDF(data_20180502)

