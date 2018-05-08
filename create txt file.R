library(twitteR)
library(SnowballC)
library(tm)
library(dplyr)

# helper functions
removeHashTags <- function(x) gsub("#\\S+", " ", x)
removeTwitterHandles <- function(x) gsub("@\\S+", " ", x)
removeURL <- function(x) gsub("http:[[:alnum:]]*", " ", x)
removeApostrophe <- function(x) gsub("'", "", x)
removeNonLetters <- function(x) gsub("[^a-zA-Z\\s]", " ", x)
removeSingleChar <- function(x) gsub("\\s\\S\\s", " ", x)


####   4/13   ####

corpus_0413 <- Corpus(VectorSource(data_20180413_DF$text))

# remove twitter handles and hashtags
corpus_0413  <- tm_map(corpus_0413 , content_transformer(removeHashTags))
corpus_0413 <- tm_map(corpus_0413 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0413  <- tm_map(corpus_0413 , content_transformer(removeURL)) 
corpus_0413  <- tm_map(corpus_0413 , content_transformer(removeApostrophe))
corpus_0413  <- tm_map(corpus_0413 , content_transformer(removeNonLetters))
corpus_0413  <- tm_map(corpus_0413 , content_transformer(tolower))
corpus_0413 <- tm_map(corpus_0413, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0413_df <- data.frame(text = sapply(corpus_0413, as.character), stringsAsFactors = FALSE)
text_0413 <- paste(text_0413_df$text,collapse=" ") 
write.table(text_0413, "text_0413.txt")

####   4/14   ####

corpus_0414 <- Corpus(VectorSource(data_20180414_DF$text))

# remove twitter handles and hashtags
corpus_0414  <- tm_map(corpus_0414 , content_transformer(removeHashTags))
corpus_0414 <- tm_map(corpus_0414 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0414  <- tm_map(corpus_0414 , content_transformer(removeURL)) 
corpus_0414  <- tm_map(corpus_0414 , content_transformer(removeApostrophe))
corpus_0414  <- tm_map(corpus_0414 , content_transformer(removeNonLetters))
corpus_0414  <- tm_map(corpus_0414 , content_transformer(tolower))
corpus_0414 <- tm_map(corpus_0414, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0414_df <- data.frame(text = sapply(corpus_0414, as.character), stringsAsFactors = FALSE)
text_0414 <- paste(text_0414_df$text,collapse=" ") 
write.table(text_0414, "text_0414.txt")

####   4/15   ####

corpus_0415 <- Corpus(VectorSource(data_20180415_DF$text))

# remove twitter handles and hashtags
corpus_0415  <- tm_map(corpus_0415 , content_transformer(removeHashTags))
corpus_0415 <- tm_map(corpus_0415 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0415  <- tm_map(corpus_0415 , content_transformer(removeURL)) 
corpus_0415  <- tm_map(corpus_0415 , content_transformer(removeApostrophe))
corpus_0415  <- tm_map(corpus_0415 , content_transformer(removeNonLetters))
corpus_0415  <- tm_map(corpus_0415 , content_transformer(tolower))
corpus_0415 <- tm_map(corpus_0415, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0415_df <- data.frame(text = sapply(corpus_0415, as.character), stringsAsFactors = FALSE)
text_0415 <- paste(text_0415_df$text,collapse=" ") 
write.table(text_0415, "text_0415.txt")

####   4/16   ####

corpus_0416 <- Corpus(VectorSource(data_20180416_DF$text))

# remove twitter handles and hashtags
corpus_0416  <- tm_map(corpus_0416 , content_transformer(removeHashTags))
corpus_0416 <- tm_map(corpus_0416 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0416  <- tm_map(corpus_0416 , content_transformer(removeURL)) 
corpus_0416  <- tm_map(corpus_0416 , content_transformer(removeApostrophe))
corpus_0416  <- tm_map(corpus_0416 , content_transformer(removeNonLetters))
corpus_0416  <- tm_map(corpus_0416 , content_transformer(tolower))
corpus_0416 <- tm_map(corpus_0416, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0416_df <- data.frame(text = sapply(corpus_0416, as.character), stringsAsFactors = FALSE)
text_0416 <- paste(text_0416_df$text,collapse=" ") 
write.table(text_0416, "text_0416.txt")

####   4/17   ####

corpus_0417 <- Corpus(VectorSource(data_20180417_DF$text))

# remove twitter handles and hashtags
corpus_0417  <- tm_map(corpus_0417 , content_transformer(removeHashTags))
corpus_0417 <- tm_map(corpus_0417 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0417  <- tm_map(corpus_0417 , content_transformer(removeURL)) 
corpus_0417  <- tm_map(corpus_0417 , content_transformer(removeApostrophe))
corpus_0417  <- tm_map(corpus_0417 , content_transformer(removeNonLetters))
corpus_0417  <- tm_map(corpus_0417 , content_transformer(tolower))
corpus_0417 <- tm_map(corpus_0417, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0417_df <- data.frame(text = sapply(corpus_0417, as.character), stringsAsFactors = FALSE)
text_0417 <- paste(text_0417_df$text,collapse=" ") 
write.table(text_0417, "text_0417.txt")

####   4/18   ####

corpus_0418 <- Corpus(VectorSource(data_20180418_DF$text))

# remove twitter handles and hashtags
corpus_0418  <- tm_map(corpus_0418 , content_transformer(removeHashTags))
corpus_0418 <- tm_map(corpus_0418 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0418  <- tm_map(corpus_0418 , content_transformer(removeURL)) 
corpus_0418  <- tm_map(corpus_0418 , content_transformer(removeApostrophe))
corpus_0418  <- tm_map(corpus_0418 , content_transformer(removeNonLetters))
corpus_0418  <- tm_map(corpus_0418 , content_transformer(tolower))
corpus_0418 <- tm_map(corpus_0418, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0418_df <- data.frame(text = sapply(corpus_0418, as.character), stringsAsFactors = FALSE)
text_0418 <- paste(text_0418_df$text,collapse=" ") 
write.table(text_0418, "text_0418.txt")

####   4/19   ####

corpus_0419 <- Corpus(VectorSource(data_20180419_DF$text))

# remove twitter handles and hashtags
corpus_0419  <- tm_map(corpus_0419 , content_transformer(removeHashTags))
corpus_0419 <- tm_map(corpus_0419 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0419  <- tm_map(corpus_0419 , content_transformer(removeURL)) 
corpus_0419  <- tm_map(corpus_0419 , content_transformer(removeApostrophe))
corpus_0419  <- tm_map(corpus_0419 , content_transformer(removeNonLetters))
corpus_0419  <- tm_map(corpus_0419 , content_transformer(tolower))
corpus_0419 <- tm_map(corpus_0419, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0419_df <- data.frame(text = sapply(corpus_0419, as.character), stringsAsFactors = FALSE)
text_0419 <- paste(text_0419_df$text,collapse=" ") 
write.table(text_0419, "text_0419.txt")

####   4/20   ####

corpus_0420 <- Corpus(VectorSource(data_20180420_DF$text))

# remove twitter handles and hashtags
corpus_0420  <- tm_map(corpus_0420 , content_transformer(removeHashTags))
corpus_0420 <- tm_map(corpus_0420 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0420  <- tm_map(corpus_0420 , content_transformer(removeURL)) 
corpus_0420  <- tm_map(corpus_0420 , content_transformer(removeApostrophe))
corpus_0420  <- tm_map(corpus_0420 , content_transformer(removeNonLetters))
corpus_0420  <- tm_map(corpus_0420 , content_transformer(tolower))
corpus_0420 <- tm_map(corpus_0420, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0420_df <- data.frame(text = sapply(corpus_0420, as.character), stringsAsFactors = FALSE)
text_0420 <- paste(text_0420_df$text,collapse=" ") 
write.table(text_0420, "text_0420.txt")

####   4/21   ####

corpus_0421 <- Corpus(VectorSource(data_20180421_DF$text))

# remove twitter handles and hashtags
corpus_0421  <- tm_map(corpus_0421 , content_transformer(removeHashTags))
corpus_0421 <- tm_map(corpus_0421 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0421  <- tm_map(corpus_0421 , content_transformer(removeURL)) 
corpus_0421  <- tm_map(corpus_0421 , content_transformer(removeApostrophe))
corpus_0421  <- tm_map(corpus_0421 , content_transformer(removeNonLetters))
corpus_0421  <- tm_map(corpus_0421 , content_transformer(tolower))
corpus_0421 <- tm_map(corpus_0421, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0421_df <- data.frame(text = sapply(corpus_0421, as.character), stringsAsFactors = FALSE)
text_0421 <- paste(text_0421_df$text,collapse=" ") 
write.table(text_0421, "text_0421.txt")

####   4/22   ####

corpus_0422 <- Corpus(VectorSource(data_20180422_DF$text))

# remove twitter handles and hashtags
corpus_0422  <- tm_map(corpus_0422 , content_transformer(removeHashTags))
corpus_0422 <- tm_map(corpus_0422 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0422  <- tm_map(corpus_0422 , content_transformer(removeURL)) 
corpus_0422  <- tm_map(corpus_0422 , content_transformer(removeApostrophe))
corpus_0422  <- tm_map(corpus_0422 , content_transformer(removeNonLetters))
corpus_0422  <- tm_map(corpus_0422 , content_transformer(tolower))
corpus_0422 <- tm_map(corpus_0422, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0422_df <- data.frame(text = sapply(corpus_0422, as.character), stringsAsFactors = FALSE)
text_0422 <- paste(text_0422_df$text,collapse=" ") 
write.table(text_0422, "text_0422.txt")

####   4/23   ####

corpus_0423 <- Corpus(VectorSource(data_20180413_DF$text))

# remove twitter handles and hashtags
corpus_0423  <- tm_map(corpus_0423 , content_transformer(removeHashTags))
corpus_0423 <- tm_map(corpus_0423 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0423  <- tm_map(corpus_0423 , content_transformer(removeURL)) 
corpus_0423  <- tm_map(corpus_0423 , content_transformer(removeApostrophe))
corpus_0423  <- tm_map(corpus_0423 , content_transformer(removeNonLetters))
corpus_0423  <- tm_map(corpus_0423 , content_transformer(tolower))
corpus_0423 <- tm_map(corpus_0423, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0423_df <- data.frame(text = sapply(corpus_0423, as.character), stringsAsFactors = FALSE)
text_0423 <- paste(text_0423_df$text,collapse=" ") 
write.table(text_0423, "text_0423.txt")

####   4/24   ####

corpus_0424 <- Corpus(VectorSource(data_20180424_DF$text))

# remove twitter handles and hashtags
corpus_0424  <- tm_map(corpus_0424 , content_transformer(removeHashTags))
corpus_0424 <- tm_map(corpus_0424 , content_transformer(removeTwitterHandles))
# other cleaning transformations
corpus_0424  <- tm_map(corpus_0424 , content_transformer(removeURL)) 
corpus_0424  <- tm_map(corpus_0424 , content_transformer(removeApostrophe))
corpus_0424  <- tm_map(corpus_0424 , content_transformer(removeNonLetters))
corpus_0424  <- tm_map(corpus_0424 , content_transformer(tolower))
corpus_0424 <- tm_map(corpus_0424, removeWords, c("http","bitcoin","blockchain","crypto","btc","https","cryptocurrency"))
text_0424_df <- data.frame(text = sapply(corpus_0424, as.character), stringsAsFactors = FALSE)
text_0424 <- paste(text_0424_df$text,collapse=" ") 
write.table(text_0424, "text_0424.txt")
