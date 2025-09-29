
# Chapter 3 Book of R - Matrices and Arrays

## To Create a Matrix in R

A <- matrix(data=c(-3,2,893,0.17),nrow=2,ncol=2)
A

## You must make sure that the length of each vector matches both nrow and ncol

## You can elect not supply nrow, ncol when calling matrix
## in which R's default behavior is to return a single column matrix

matrix(data=c(-3,2,893,0.17))

## Notice how R fills the matrix with the data