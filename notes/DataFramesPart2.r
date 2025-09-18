c(1,2,3) + c(2,3,0)

# Data Frames Lecture Part 2

## Logical Operators and subsetting

1<2
2==2

a <- c(1,2,3)
b <- c(1,3,2)
a == b
a > b
a !=b
1 !=1
2 !=3
3!=2

# %in% tests whether the values on the left are in the vector on the right

1 %in% c(1,2,3)
4 %in% c(1,2,3)

c(1,2) %in% c(1,3,4,0)
c(1,2,-1) %in% c(1,3,4,0)

deck <- read.table("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/deck-1.csv",sep=",",header=T)

head(deck)

# deck$face == "ace"  # compares each item in column "face" to "ace"
deck$face == "ace"

length(deck$face)

# Show all in this vector
deck$face

# Count how many items in the column equals to “ace”
sum(deck$face == "ace")


x <- sample(1:100,size=50, replace=TRUE)
x

x == 4
sum(x == 4)
sum(x == 10)
x == 1
sum(x < 1)
sum(x < 25)

Roll <- sample(1:6,1000,replace=TRUE)
sum(Roll == 1)
1000/6

# Logical subsetting

deck$value[deck$face == "ace"]
deck$face == "ace"
sum(deck$face == "ace")

# Logical subsetting to change values

## Modify the value column to 14 if it's corresponding face column is "ace"
deck$value[deck$face == "ace"] <- 14

match(TRUE, deck$face == "ace")

deck[deck$face == "ace",]
deck1 <- deck[deck$face == "ace",]
deck1

# Boolean operators
# &, |, xor, !, any, all

a <- c(1, 2, 3) 
b <- c(1, 2, 3) 
c <- c(1, 2, 4)

a == b
b == c
a == b & b == c
(a == b) & (b == c)

a == b
## TRUE TRUE TRUE # Elementwise comparison
b == c #Elementwise comparison
##TRUE  TRUE FALSE
a == b | b == c #compares two logical vectors
##  TRUE  TRUE TRUE

a == b
## TRUE TRUE TRUE # Element wise comparison
!(a==b)# negates the logical vector
##FALSE  FALSE FALSE
!(b==c)# negates the logical vector
##FALSE  FALSE TRUE

queenOfSpades <- deck$face == "queen" & deck$suit == "spades"
queenOfSpades

# Extract rows where the value column is greater than 2 or face column is “ace”
deck[deck$value >= 2  | deck$face == "ace",]

# Extract rows where the value column is between 5 and 10
deck[deck$value >= 5 & deck$value <= 10,]

# Extract rows where the value column is Not! between 5 and 10
deck[!(deck$value >= 5 & deck$value <= 10),]

# Return logical value for indices Not! between 5 and 7
!(deck$value >= 5 & deck$value <= 7)

# Missing values can cause problems
test <- c(NA, 1:50)
sum(test)
# remove the missing indices
sum(test,na.rm=TRUE)

# Checking for missing values
c(1,2,3, NA) == NA
is.na(NA) # True
is.na(c(1,2,3,NA)) # FALSE FALSE FALSE FALSE

# Removing NA from vector
x <- c(1,2,3,NA)
is.na(x)

x[!is.na(x)] # ! Negates TRUE

sum(is.na(x))
sum(!is.na(x))

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, NA, 9, 20, 14.5, 13.5, 8, NA),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
exam_data

# Remove rows with missing values in score column
exam_data[!is.na(exam_data$score),]

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, NA, 9, 20, 14.5, 13.5, 8, NA),
  attempts = c(1, 3, NA, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
exam_data

# Remove rows with missing values in score column and attempts column
exam_data[is.na(exam_data$score) | is.na(exam_data$attempts), ] # returns rows with NA
exam_data[!(is.na(exam_data$score) | is.na(exam_data$attempts)), ] # returns data frame with NA rows

exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', NA),
  score = c(12.5, 9, 16.5, NA, 9, 20, 14.5, 13.5, 8, NA),
  attempts = c(1, 3, NA, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', NA, 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
exam_data

# use this to remove missing values for entire data frame
complete.cases(exam_data)
exam_data[complete.cases(exam_data), ]

# Numeric data missing
df <- data.frame(col1=c(1:3,NA,0,NA),col2=c(NA,4,0:3))
df

df[is.na(df)] <- -1
df

#
deck1 <- read.table("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/deck_with_missingValue.csv",sep=",",header=T)
deck1

head(deck1)
head(is.na(deck1$value))
head(is.na(deck1$suit))
?read.table # Looking for: na.strings = "NA"

# specifies: na.strings=c("", ",",".","NA")
deck1 <- read.table("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/deck_with_missingValue.csv",sep=",",header=T, na.strings=c("", ",",".","NA"))

head(deck1)
is.na(deck1$suit)

deck1 <- read.table("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/deck_with_missingValue.csv",sep=",",header=T, na.strings=c("", ",","."))           

head(deck1)
is.na(deck1$suit)

deck2 <- read.table("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/deck_with_missingValue1.csv",sep=",",header=T, stringsAsFactors = FALSE)           
str(deck2)

# takes the value vector as an integer instead of character
deck2 <- read.table("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/deck_with_missingValue1.csv",sep=",",header=T, stringsAsFactors = FALSE, na.strings=c("."))           
str(deck2)
head(deck2)

# Dealing with Excel spreadsheet in R... Add one of these packages
## xlsx -- Java dependent
## openxlsx -- Java independent

library(openxlsx)
?read.xlsx
openxlsx::read.xlsx()
