# SWC R Intro

getwd()

# comparing things
1 == 1
1 < 1
1 != 2
x <- 1/40 #assign value to variable, enter "<-" using " 'alt' + '-' " inserts assignment operator
x
x <- 100
x < -100
ls() # list objects in the environment
rm(x) #remove object in parentheses
x
mass <- 47.5
age <- 122
mass <- mass * 2.3
age <- age - 20
mass 
age
mass > age
?ls
??plotting

# read in cat data
cats <-  read.csv("data/feline_data.csv")
cats

# pull one data column
cats$coat
cats$weight + 2
cats$coat + cats$weight
typeof(cats$coat)
typeof(cats$weight)
typeof(1L) #integer
typeof(1 + 1i) #complex
typeof(FALSE) #logical
typeof('banana') #character

combo_vector <-  c(2,4,5)

quiz_vector_1 <- c(2, 6, '3')
typeof(quiz_vector_1)
quiz_vector_2 <- c('a', TRUE)
typeof(quiz_vector_2)
quiz_vector_3 <- c(0, TRUE) 
typeof(quiz_vector_3)
quiz_vector_4 <- c(NA,0, TRUE)
typeof(quiz_vector_4)

rm(quiz_vector_4)

combo_vector <- c(2,4,5)
typeof(combo_vector)
as.character(combo_vector)
logical_Vector <- c(1,0,0,1)
typeof(logical_Vector)
as.logical(logical_Vector)
typeof(logical_Vector)

cats <- read.csv("data/feline_data.csv")
cats <- read.csv("data/feline_data.csv")
cats$coat
cats <- read.csv("data/feline_data.csv")
cats$coat
cats <- read.csv("data/feline_data.csv")
cats$coat
cats$likes_string
cats <- read.csv("data/feline_data.csv")
cats$coat
cats <- read.csv("data/feline_data.csv")

#factors
str(cats$coat)

levels(cats$coat)
cats$coat
factor(cats$coat, levels = c("tabby","calico","black"))
str(cats$coat)
levels(cats$coat)
typeof(cats$coat)


#lists
list-example <-  list(c(1,2,3), "a", TRUE)
remove(list-example)
list_example <-  list(c(1,2,3), "a", TRUE)
list_example

#matrix
matrix(1:12)
matrix(1:12, ncol=2)
matrix(1:12, ncol=2, byrow=TRUE)



#dataframes
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
#gapminder is data on contries (year, population size, continent, life expectation, gdp per capita)
str(gapminder)
#head(gapminder)
count.fields(gapminder$country)

colnames(gapminder)

#subsetting
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x
x[1]
x[5]
x[c(2,3)]
x[1:4]
x[c(1, 2, 1)]
x[-2]
x[-c(2,3)]#remove column 2 and 3
x[c('a', 'b')]
x[-c('a', 'b')]#doesn't work, R thinks we've created a characters and there's no negative of a character
names(x)
y <- x[-c(2,3)]
y
names (x) != c('a','b')
names (x) != c('a')
typeof(gapminder$pop)
names (x) != c('a','b')
!names(x) %n% c('a', 'c')
x[!names(x) %in% c('a', 'c')]
!names(x) %in% c('a', 'c')
!names(x) %in% c('a', 'b')
x[!names(x) %in% c('a', 'c')]
x > 7
x
x[c('b', 'c', 'd')]
x[!names(x) %in% c('a','e')]
x[c(4>x>7)]
x>7
x[x>7]


head(gapminder$pop)
head(gapminder[3])
head(gapminder[["pop"]])
gapminder[1:3,] #extracts rows 1-3 then comma with nothing after comma meaning all of the columns
x[2:4]
x[c(2,3,4)]
head(gapminder$year[1957,])
gapminder$year[1957,]     
gapminder[2 == 1957,]

head(gapminder$year[2,])
gapminder[gapminder$year == 1957,]

gapminder[,-1:4]
gapminder[,-c(1:4)]
