makeVector <- function(x = numeric()) {
  
  m <- NULL
  
  ## set the value of the vector
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## get the value of the vector
  get <- function() x
  
  ## set the value of the mean
  setmean <- function(mean) m <<- mean

  ## get the value of the mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}