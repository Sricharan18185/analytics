#dplyr
library(dplyr)
students %>% group_by(course, gender) %>% summarise((mean(marks1)))
students %>% group_by(course, gender) %>% summarise(mean(marks1), min(marks2), max(marks2)) 
%>% arrange(desc(mean(marks1)))##error

students %>% arrange(desc(marks1)) %>% filter(gender == 'Male') %>% top_n(n=1)
students %>% sample_frac(0.2)
sample_frac(students, 0.1, replace = FALSE)
sample_n(students, 5, replace = FALSE)                  
students %>% sample_n(3)
students %>% arrange(desc(course), gender, marks1)
students %>% arrange(course, grades, marks1) %>% select(course, grades, marks1)
