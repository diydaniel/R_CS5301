## In your submission text, code for each task should be clearly separated. Please use comments to indicate the code representing the task. 
## Any text which is not a part of the Code should be commented. Otherwise I won't be able to execute your code at my end.


# 1. Write R code to create a matrix (3 rows and 4 columns) that has the following entries as shown below 
# 10 	-10 	10 	-10
# 10 	-10 	10 	-10
# 10 	-10 	10 	-10

# Define the entries for one row
row_entries <- c(10, -10, 10, -10)

# Repeat the row 3 times to build the matrix
matrix3By4 <- matrix(rep(row_entries, 3), nrow = 3, byrow = TRUE)
matrix3By4

## 2. Write R code to create a matrix (with 10 rows and 3 columns) that satisfies the following criteria:
  
# each entry in column #1 of the matrix is random number between 0 and 10 (0 and 10 inclusive)
# each entry in column #2 of the matrix is random number between 10 and 20 (10 and 20 inclusive)
# each entry in column #3 of the matrix is random number between 20 and 30 (20 and 30 inclusive)
# Allow "replacement = TRUE" while randomly selecting the numbers. 

# Task 2: Create a 10x3 matrix with random numbers in specific ranges

# Column 1: random numbers between 0 and 10
col_One <- sample(0:10, 10, replace = TRUE)
col_One

# Column 2: random numbers between 10 and 20
col_Two <- sample(10:20, 10, replace = TRUE)
col_Two

# Column 3: random numbers between 20 and 30
col_Three <- sample(20:30, 10, replace = TRUE)
col_Three

# Combine into a matrix (10 rows, 3 columns)
matrix10By3 <- cbind(col_One, col_Two, col_Three)
matrix10By3

# Task 3: Compute the sum of all items in vector r of list x

# Define x
x <- list(y = 1:10, t = "Hello", f = "TT", r = 5:20)

# Access vector r inside of x and compute the sum
sumOf_r <- sum(x$r)
sumOf_r

# Task 4: Extract all elements except the 2nd element of the first vector in list b

# Define b
b <- list(a = 1:10, c = "Hello", d = "AA")

# Extract the first vector (b$a) and remove the 2nd element
resultOf <- b$a[-2]
resultOf

# Task 5: Create a list containing three vectors (each length 5) with specified ranges

# First vector: random numbers between 0 and 10
veckOne <- sample(0:10, 5, replace = TRUE)

# Second vector: random numbers between 10 and 20
veckTwo <- sample(10:20, 5, replace = TRUE)

# Third vector: random numbers between 20 and 30
veckThree <- sample(20:30, 5, replace = TRUE)

# Combine into a list
listOf <- list(first = veckOne, second = veckTwo, third = veckThree)
listOf



