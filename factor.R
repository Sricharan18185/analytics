#factors
names(students)
students$gender = factor(students$gender)
summary(students$gender)
students$grades = factor(students$grades, ordered=T, levels=c('C', 'A', 'B'))
summary(students$grades)

students

write.csv(students, './Data/iimtrichy.csv')
students2 = read.csv('./Data/iimtrichy.csv')
head(students2)
