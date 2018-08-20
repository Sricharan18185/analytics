?women
x = 1:100
x
y = seq(1,100, by=2)
#Datastructures










#array----

#vectors
v1 = 1:100 #creating vector from 1 to 100
v2 = c(1,3,5,7,9)
class(v1)
v3 = c('a', 'charan', 'vijay')
class(v3)
v3     #print a vector.
v4 = c(TRUE, FALSE, T, F)
class(v4)
mean(v1)
median(v1)
hist(v1)
hist(women$height)
mean(women$height)
sd(v2)
var(v2)
v2[v2>=4]
x = rnorm(60, mean=60, sd=10)
plot(x)
hist(x)
plot(density(x))
abline(v=60)
abline(h=0.01)
hist(x, freq=F)
line(density(x))
hist(x, breaks=10, col=1:10)
length(x)
sd(x)
?sample


x1 = LETTERS[5:21]
x1
set.seed(1234)
y1 = sample(x1)
y1
set.seed(123)
(y2=sample(x1, size=4))
gender = sample(c('M', 'F'), size=60)
gender = sample(c('M', 'F'), size=60, replace=TRUE)
gender
gender = sample(c('M', 'F'), size=100000, replace=TRUE, prob=c(.6,.4))
(t1=table(gender))
prop.table(t1)
pie(t1, col=1:2)
barplot(t1, col=1:2, horiz=T)




#matrixs----
m1 = matrix(1:24, nrow=4)
m1
m2 = matrix(1:24, ncol = 6, byrow=T)
m2  
(x=trace(runif(60,60,100)))#error
plot(density(x))
(m4 = matrix(x, ncol=6))
?traceOff
m4[m4> 67 & m4 < 86]
m4[8:10, 1:2]







#dataframe----
(rollno = 1:60)
paste('student', 1:60, sep='-')
(name=paste('student1', 1:60, sep='_'))
name[c(15:20)]
name[c(1:10, 20:25)]
rev(name)
(gender=sample(c('Male', 'Female'), size=60, prob=c(.4,.6), replace=T))
(course=sample(c('BBA', 'MBA', 'FPM'), size=60, prob=c(.2,.7,.1), replace=T))
(marks1 = ceiling(rnorm(60, mean=65, sd=7)))
(marks2 = ceiling(rnorm(60, mean=60, sd=11)))


(grades = sample(c('A', 'B', 'C'), size=60, replace=T))
students = data.frame(rollno, gender, course, marks1, marks2, grades)
class(students)
summary(students)
students[students$gender == 'Male'& students$grades == 'B' & students$course == "MBA", c('rollno', 'gender', 'marks1', 'course')]
barplot(table(students$course), ylim=c(0,50), col=1:4)
text(1:3, table(students$course)+5, table(students$course))
str(students)
?str
nrow(students)
dim(students)
head(students)
tail(students)
head(students, n=7)

##avg marks scored by each gender in marks1
#gender marks1
aggregate(students$marks1, by=list(students$gender), FUN=mean)
aggregate(students$marks2, by=list(students$course, students$gender), FUN=min)


