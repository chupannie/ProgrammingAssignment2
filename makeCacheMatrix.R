## This function creates a special "matrix" object that can cache its inverse.
##
## Matrix inversion is usually a costly computation and their may be some benefit 
## to caching the inverse of a matrix rather than compute it repeatedly 
##
## x - the matrix is assumed to be invertible

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  ## set the value of the matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## get the value of the matrix
  get <- function() x
  
  ## set the inverse of the matrix
  ## solve(X) returns the inverse of a matrix
  
  setinverse <- function(inverse) m <<- inverse
  
  ## get the inverse of the matrix
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}