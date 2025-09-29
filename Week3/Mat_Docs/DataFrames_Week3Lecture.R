
# Creating a data frame
df <- data.frame(face = c("ace", "two", "six"),suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df

df <- data.frame(c("ace", "two", "six"),c("clubs", "clubs", "clubs"),c(1, 2, 3))
df

# set - stringsAsFactors=FALSE
df <- data.frame(face = c("ace", "two", "six"),suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3), stringsAsFactors = FALSE)
df
str(df)

# How many rows and columns in my data frame?
dim(df)
nrow(df)
ncol(df)

# What are the column names?
colnames(df)

# What are the row names?
row.names(df)

# How to change column names
colnames(df) <- c("col1","col2","col3")
df

# How to change row names
row.names(df) <- c("row1","row2","row3")
df

# data frame practice
df <- data.frame(c1=c(1,2,3,4),c2=c(4,5,6,7))
df

# Other ways to Load a file to a data frame from command prompt

# Use read.table
# if the columns are separated by a “,”
deck <- read.table("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/deck_WEEK2.csv", header=TRUE, sep=",")
deck

# if the columns are separated by a tab 
deck <- read.table(“deck.csv”, header=TRUE, sep=“\t”)

# if header is absent in the file
deck <- read.table(“deck.csv”, header=FALSE, sep=“\t”)

#if the first column in the file is row names
deck <- read.table(“deck.csv”, header=FALSE, sep=“\t”,row.names=1)

write.table(deck, "/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/deck_WEEK2.txt", sep="/t")

deck[1, 1]

deck[1, c(1, 2, 3)]

new <- deck[1, c(1, 2, 3)]
new
typeof(new)

deck[c(1, 1), c(1, 2, 3)]

deck[c(2, 1), c(1, 2, 3)]

head(deck)

deck[1:2, 1]
deck[1:2, 1, drop=FALSE]


df <- data.frame(face = c("ace", "two", "six"),suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df


df <- data.frame(c1=c(1,2,3,4),c2=c(4,5,6,7))
df
rowSums(df)

colSums(df)

x <- df[1,]
typeof(x)

deck[-(2:52), 1:3]

deck3 <- deck[c(2, 1, 3:52), ]
deck3

random <- sample(1:52, size = 52) #randomize
random

deck[random, ]

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James'),
  score = c(12.5, 9, 16.5, 12),
  attempts = c(1, 3, 2, 3),
  qualify = c('yes', 'no', 'yes', 'no')
)
exam_data
order(exam_data$score)
order(exam_data$score,decreasing=TRUE)
I <- order(exam_data$score)

new_exam_data <- exam_data[I,]
new_exam_data

# Modfifying Data Frame
df <- data.frame(face = c("ace", "two", "six"),suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df

df$test <- df$face
df

df$value <- c(1,10,0)
df

df$test <- NULL
df

df1 <- data.frame(col1=c(1,2,3),col2=c(10,0,0),row.names = c("r1","r2","r3"))
df2 <- data.frame(col3=c(1,2,3),col4=c(10,0,0),row.names = c("Row1","Row2","Row3"))
df1
df2

# Adding columns using cbind
cbind(df1,df2)

# make row names for both data frames the same
row.names(df2) <- row.names(df1)
df2

# Combining data frame/adding rows to a data frame using rbind
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)


new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)
exam_data

rbind(exam_data,new_exam_data)

new_exam_data1 <- data.frame(
  name1 = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)
new_exam_data1

cbind(exam_data, new_exam_data1)
# will Err because they do not have the same col names
rbind(exam_data, new_exam_data1)

colnames(exam_data)
colnames(new_exam_data1)

df <- data.frame(face = c("ace", "two", "six"),suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3),stringsAsFactors = FALSE)
df
str(df)
# adding a single row to data frame
df[4,] <- c("seven","clubs",5)
df

df <- data.frame(face = c("ace", "two", "six"),suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df
str(df)

# add row
df[4,] <- c("seven","clubs",5)
df

df <- data.frame(face = c("ace", "two", "six"),suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df

# Changing a subset of colums
deck$value
deck$value[c(13,26,23)]
deck$value[c(1,2)] <- 0
head(deck)
deck$value <- 0
deck
deck$value <- 1
deck

# end - Main take aways are reading from a file and write to a file
# Next - Logical subsetting and missing values and handle excel spreadsheets