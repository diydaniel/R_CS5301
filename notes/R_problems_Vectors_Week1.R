x <- c(20:100)
print(x)

x <- c(20:60)
print(x)
M <- mean(x)
print(M)




x <- c(51:91)
S <- sum(x)
print(x)
print(S)

x <- c(-50:50)
print(x)
random_nums <- sample(x,10)
print(random_nums)

nums <- c(10, 20, 30, 40, 50, 60)
print(nums)
MAX <- max(nums)
MIN <- min(nums)
print(MAX)
print(MIN)


nums <- c(10, 20, 30, 40, 50, 60)
print(summary(nums))

nums = c(1, 2, 2, 3, 4, 4, 5, 6)
u<-unique(nums)
print(u)
table(nums)

x <- c(10,20,30)
y <- c(20,10,40)
z = x + y
z

x <- c(10, 20, 30, 25, 9, 26)
x
sorted_x_asc <- sort(x)
sorted_x_asc
x

sorted_x_desc <- sort(x,decreasing=TRUE)
sorted_x_desc

x <- c(10, 20, 30, 25, 9, 26)
IS <- is.element(25,x)
print(IS)

IS <- is.element(35,x)
print(IS)

x <- c(10, 20, 30, 25, 9, 26)
y <- c(10, 20, 40, 20, 91, 26)

common_x_y <- intersect(x,y)
common_x_y

x <- c(10, 20, 30, 25, 9, 26)
y <- c(10, 20, 40, 20, 91, 26)

diff_x_y <- setdiff(x,y)
diff_x_y

diff_y_x <- setdiff(y,x)
diff_y_x


x <- c(10, 20, 30, 25, 9, 26)
rev_x <- rev(x)
print("reversed items")
rev_x

x <- seq(from = 10, to = -10, by = -2)
print(x)

runif(1)
runif(4)

runif(3, min=0, max=100)

x <- runif(3, min=0, max=100)
x
floor(x)

x <- c(1,2,3,4,10)
sample(x,4,replace=TRUE)














