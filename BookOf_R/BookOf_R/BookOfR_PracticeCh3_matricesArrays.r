
# Chapter 3 Book of R - Matrices and Arrays

## To Create a Matrix in R

A <- matrix(data=c(-3,2,893,0.17),nrow=2,ncol=2)
A

## You must make sure that the length of each vector matches both nrow and ncol

## You can elect not supply nrow, ncol when calling matrix
## in which R's default behavior is to return a single column matrix

matrix(data=c(-3,2,893,0.17))

## Notice how R fills the matrix with the data

## Filling Direction

matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE) #Default

matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)

## Row and Column Bindings

rbind(1:3,4:6)
cbind(c(1,4),c(2,5),c(3,6))

## Matrix Dimensions

mymat <- rbind(c(1,3,4),5:3,c(100,20,90),11:13)
mymat

dim(mymat)
nrow(mymat)
ncol(mymat)
dim(mymat)[2]

## Subsetting

A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
A

A[3,2]

## Row, Column and Diagonal Extractions

A[,2]
A[1,]

A[2:3,]
A[,c(3,1)]
A[c(3,1),2:3]

diag(x=A)

## Omitting and Overwriting

A[,-2]
A[-1,3:2]
A[-1,-2]
A[-1,-c(2,3)]
B <- A
B
B[2,] <- 1:3
B
B[c(1,3),2] <- 900
B
B[,3] <- B[3,]
B
B[c(1,3),c(1,3)] <- c(-7,7)
B
B[c(1,3),2:1] <- c(65,-65,88,-88)
B
diag(x=B) <- rep(x=0,times=3)
B

## Matrix Operations and Algebra/ Matrix Transpose

A <- rbind(c(2,5,2),c(6,1,4))
A
t(A)
t(t(A))

## Identity Matrix 3.3.2

A <- diag(x=3)
A

## 3.3.3 Scalar Multiple of a Matrix

A <- rbind(c(2,5,2),c(6,1,4))
a <- 2
a*A

## 3.3.4 Matrix Addition and Subtraction

A <- cbind(c(2,5,2),c(6,1,4))
A
B <- cbind(c(-2,3,6),c(8.1,8.2,-9.8))
B
A-B

## 3.3.5 Matrix Multiplication

A <- rbind(c(2,5,2),c(6,1,4))
dim(A)
B <- cbind(c(3,-1,1),c(-3,1,5))
dim(B)
A%*%B
B%*%A

## Matrix Inversion

A <- matrix(data=c(3,4,1,2),nrow=2,ncol=2)
A 
solve(A)
A%*%solve(A)

## 3.4 Multidimensional Arrays/3.4.1 Definition

AR <- array(data=1:24,dim=c(3,4,2))
AR
BR <- array(data=rep(1:24,times=3),dim=c(3,4,2,3))
BR

## 3.4.2 Subsets,Extractions and Replacements

AR[2,,2]
AR[2,c(3,1),2]
AR[1,,]
BR[2,1,1,3]
BR[2,1,1,3]
BR[1,,,1]
BR[,,2,]
BR[3:2,4,,]
BR[2,,1,]
