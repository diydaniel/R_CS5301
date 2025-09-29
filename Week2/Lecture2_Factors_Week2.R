
gender <- factor(c("male", "female", "female", "male"))
gender1 <- gender[c(1,4)]

y <- c("4.1", "4.1", "5.2", "5.2")
x <- factor(y)
str(x)
as.numerica(as.character(x))


## Accessing entries of a list
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1

typeof(list1[3])
typeof(list1[[3]])

typeof(list1[[3]][1])
typeof(list1[[3]][[1]])

typeof(list1[[3]][2])
typeof(list1[[3]][[2]])




## Another example of list
card <- list("ace", "hearts", 1)
card

card[[1]] # is a character string
card[1] # is a list

## Another Example of list with names
# Lets make a list
lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))
lst
# $numbers
# $logical
# $strings




# Accessing entries of a list with names
lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))
lst

typeof(lst$numbers)

typeof(lst[1])

typeof(lst$numbers)

typeof(1st["numbers"])

typeof(lst["numbers"])

typeof(lst[["numbers"]])

# Access the entries of each sublist by using $ sign
lst$numbers

names(lst)

# Modify a Sublist in R
lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))
lst$numbers

# Modify the first item in "numbers"
lst$numbers[1] <- 3
lst$numbers

lst$numbers[2] <- 0
lst$numbers

# Modifying "numbers'
lst$numbers <- c(1,2,3,5,6)
lst$numbers

# Replacing the first sublist by character vector
lst$numbers <- c("this","hello","are")
lst$numbers

## Adding a Sublist
lst[["score"]] <- c(100,80,50)
lst

# Removing the "score" sublist. Use NULL
lst[["score"]] <- NULL
lst

# Matrices
## You can convert a vector into a matrix (2D Array)

die <- c(1,2,3,4,5,6)
die

dim(die) <- c(2,3) # Orgnaize the data column-wise
die

dim(die) # Checking the dimensions of the matrix

nrow(die) # Checking the number of rows of the matrix

ncol(die) # Checking the number of columns of the matrix

# Error b/c you have 6 items, this product "c(2,4)" requires min 8
die <- c(1,2,3,4,5,6)
dim(die) <- c(2,4)

m <- matrix(die)
m

m <- matrix(die,nrow=2,ncol=3)
m

die <- c(1,2,3,4,5,6)
m <- matrix(die,nrow=2)# or m <-matrix(c(1,2,3,4,5,6),nrow=2)
m

m1 <- matrix(die,nrow=2,byrow=TRUE)
m1

# Construct a Diagonal Matrix
diag(c(1,-1,0))

# Extract the diagonal elements of a matrix
x <- matrix(seq(from=1,to=9,by=1),3,3)
x
diag(x)

# Accessing matrix elements
## How to access individual items
m[rowindex,colindex]

m[1,1] # first row, first column

m[1,2] # first row, second column

m[1,3] # first row, third column

m[2,2] # second row, second column

m[1,1:3] # first row and cols = 1,2,3

m[,1:3] # all rows and col = 1,2,3

m[,1:2] # all rows and first 2 columns

# Simple Matrix Operations
## Element wise matrix multiplication

m
m1
m*m1

# Computing Column & Row Sums
M <- matrix(seq(from=1,to=10,by=1),nrow=2,byrow=TRUE)
M

## Use colSums and rowSums
colSums(M)

rowSums(M)

## An indirect way of computing sum of each row is:
sum(M[1,])

sum(M[2,])

## Transpose of a Matrix [flips the matrix]
m
m_transpose <- t(m)
m_transpose

dim(m)
dim(m_transpose)

m1 <- matrix(c(2,3,-2,1,2,2,4,6,-4),3,3)
m2 <- matrix(c(1,3,2,1,4,2),3,2)
m1
m2

dim(m1)
dim(m2)























































