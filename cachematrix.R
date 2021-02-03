## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
  
  #Initialize
  a <- NULL
  
  # set matrix
  set <- function(y) {
    m <<- y
    a <<- NULL
  }
  
  # get matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  
  # set the inverse of the matrix
  setInverse <- function(inverse) {
    a <<- inverse
  }
  
  # get the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse property
    a
  }
  
  ## Return the list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  
}