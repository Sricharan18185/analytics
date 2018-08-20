install.packages('gsheet')
library(gsheet)
url = 'https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=216113907'
denco = as.data.frame(gsheet2tbl(url))
head(denco)
library(dplyr)
denco %>% count(custname, sort=TRUE)
denco %>% group_by(custname) %>% summarise(n = n()) %>% arrange(desc(n))
write.csv(denco, './Data/denco.csv')
