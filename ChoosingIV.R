mtcars
library(caret)
install.packages('caret')
install.packages('olsrr')
#partition the data into train and test set
nrow(mtcars)
index = sample(x=1:nrow(mtcars), size = .7 * nrow(mtcars))
index
train = mtcars[index,]
nrow(train)
test = mtcars[-index,]
nrow(test)


library(olsrr)
fit = lm(mpg ~ disp + hp + wt + qsec, data = train)
k = ols_step_all_possible(fit)
plot(k)
summary(lm(mpg ~ wt, data = train))
summary(lm(mpg ~ wt + hp, data = train))

install.packages('gvlma')

library(gvlma)
gvmodel = gvlma(fit)
gvmodel
summary(fit)

finalmodel = lm(mpg ~ wt + hp, data = train)

gvmodel = gvlma(finalmodel)
gvmodel


(predictedvalues = predict(finalmodel))