## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix function. 
##
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x=matrix(), ...) {
  
  ## returns the cache if it exists
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  ## if no cache exists, compute the inverse
  matrix<-x$get()
  m<-solve(matrix, ...)
  ## cache this calculation
  x$setinverse(m)
  ## return the inverse
  m
}