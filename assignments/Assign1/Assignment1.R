x <- runif(5, min=1, max=10)
x

x <- sample(1:100,200, replace=TRUE)
x

A <- c(1,2,3,4,5,6,7)
x <- sample(A, 5,replace = TRUE)
x

A <- seq(from = 2, to = 20, by = 2)
x <- sample(A, 5)
x

x <- sample(1:100,200,replace=TRUE)
length(x)

a <- 0
b <- rep(a,1000)
b

x <- seq(from=3,to=20000,by=2)
x

x <- 1:20001
x

x <- seq(from=1000,to=2000,by=2)
sum(x)

x <- seq(from=1001, to=1999, by=2)
mean(x)

even_seq <- seq(from=258, to=456, by=2)
fifty_select <- sample(even_seq, size=50, replace=FALSE)
fifty_select

one_to_oneHundred <- seq(from=1, to=100)
one_to_oneHundred

V <- 1:100
V

x <- sample(V, size=100, replace=TRUE)
uniq_x <- unique(x)
uniq_x

y <- sample(V, size=100, replace=TRUE)
uniq_y <- unique(y)
uniq_y

z <- sample(V, size=100, replace=TRUE)
uniq_z <- unique(z)
uniq_z

all_uniq_vectors <- Reduce(union, list(uniq_x,uniq_y,uniq_z))
all_uniq_vectors

not_selected <- setdiff(V, all_uniq_vectors)
not_selected
