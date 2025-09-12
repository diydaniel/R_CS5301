
# Q1
# At the end of the following code, how many unique levels are there in the factor x ?
  
  x <- factor(c("a","a","b","c"))
  x[1] <- "c"
  x<- droplevels(x)
  x
  
  #[1] a a b c
  # Levels: a b c
  
  # Step 2: Replace the 1st element with "c"
  # x[1] <- "c"
  # Step 3: Drop unused levels
  # x <- droplevels(x)
  # ✅ Final Answer There are 3 unique levels in the factor  x
  
# Q2 
# At the end of the following code, what is length(lst$numbers) ?
    
lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))

# lst$numbers = c(1, 2)
# lst$logical = TRUE
# lst$strings = c("a", "b", "c")
# lst$numbers <- seq(from=0,to=10,by=1)

# Step 2: Replace lst$numbers
lst$numbers <- seq(from = 0, to = 10, by = 1)
lst$numbers
length(lst$numbers)
# [1] 11

# Q3
# At the end of the following code, what is sum(lst$numbers) ?
  
lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))

lst$numbers <- c(2:3)
sum(lst$numbers)
# [1] 5

# Q4
# What is sum(x) at the end of the following code ?

y <- factor(c("1","2","2","4"))
x <- as.numeric(y)
  
sum(x)
# [1] 8

# Q5
# What is sum(x) at the end of the following code ?
  
y <- factor(c("1","2","2","4"))
x <- as.numeric(as.character(y))
sum(x)
# [1] 9

# Q6
# Which of the following R code will give an error ? 

matrix(c(1:10),nrow=3,ncol=3) ###
matrix(c(1:6),nrow=2,ncol=6)
matrix(c(1:4),nrow=1,ncol=4)
matrix(c(1:9),nrow=9,ncol=1)

# Q7
# Which of the following code will give a warning message ? 

x <- factor(c("a","a","b","c")) ###
x[1] <- "d" 

x <- factor(c("a","a","b","c"))
x[1] <- "b" 

x <- factor(c("a","a","b","c"))
x[1] <- "c" 

x <- factor(c("a","a","b","c"))
x[3] <- "a" 





