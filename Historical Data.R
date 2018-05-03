#resource: https://finance.yahoo.com/quote/BTC-USD/history?p=BTC-USD
#resource2: https://coinmarketcap.com/currencies/bitcoin/historical-data/
#resource3: https://coinmarketcap.com/all/views/all/

historicalPrice <- read.csv("BTC-USD.csv")
historicalPrice$Date <- as.Date(format(historicalPrice$Date))


#select only price
historicalPrice2 <- historicalPrice[,1:5]

## price plot
ts.price <- ggplot(historicalPrice2, aes(x=Date)) + 
  geom_line(aes(y=Open, col="Open")) + 
  geom_line(aes(y=High, col="High")) + 
  geom_line(aes(y=Low, col="Low")) + 
  geom_line(aes(y=Close, col="Close")) + 
  labs(title="Bitcoin Price", 
       subtitle="From 4/1/2018 to 5/2/2018", 
       caption="Source: Yahoo Finance", 
       y="USD", 
       color=NULL) +  # title and caption
  scale_x_date(date_breaks = "1 day", date_labels = "%m-%d")+
  scale_color_manual(labels = c("Open", "High","Low","Close"), 
                     values = c("Open"="#ADD8E6", "High"="#FFC0CB","Low"="#FFD700","Close"="#8B4513" )) +  # line color
  theme(axis.text.x = element_text(angle = 90, vjust=0.5, size = 8),  # rotate x axis text
        panel.grid.minor = element_blank())  # turn off minor grid

ts.price
#select only volume
historicalPrice3 <- historicalPrice[,c(1,7)]

## volume plot
ts.volume <- ggplot(historicalPrice3, aes(x=Date)) + 
  geom_line(aes(y=Volume, col="Volume")) + 
  labs(title="Bitcoin Trading Volume", 
       subtitle="From 4/1/2018 to 5/2/2018", 
       caption="Source: Yahoo Finance", 
       y="USD", 
       color=NULL) +  # title and caption
  scale_x_date(date_breaks = "1 day", date_labels = "%m-%d")+
  theme(axis.text.x = element_text(angle = 90, vjust=0.5, size = 8),  # rotate x axis text
        panel.grid.minor = element_blank())  # turn off minor grid

ts.volume


library(ggplot2)
library(lubridate)
theme_set(theme_bw())





library(ggplot2)
library(reshape2)
meltdf <- melt(historicalPrice2,id="Date")
ggplot(meltdf,aes(x=Date,y=value,colour=variable,group=variable)) + geom_line()


ggplot(historicalPrice, aes(Date, Close)) + geom_line() +
  scale_x_date(date_labels = "%d-%b")