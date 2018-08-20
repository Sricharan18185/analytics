#Basic Stats

x = ceiling(rnorm(10000, mean = 60, sd = 20))
mean(x)
sd(x)
median(x)
mode(x)
table(x)
sort(table(x), decreasing = T)

install.packages('modeest')
library(modeest)
mlv(x,method = 'shorth')
quantile(x)
quantile(x, seq(.1,1,by=.1))
quantile(x, seq(.01,1,by=.01))
table(x)

install.packages('e1071')
library(e1071)

plot(density(x))
e1071::skewness(x)  #apply skewness
kurtosis(x)
sd(x) : var(x)

cov(women$weight, women$height)
cor(women$height, women$height)
?cor

stem(x)
