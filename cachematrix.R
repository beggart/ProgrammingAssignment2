## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  #initialize
  a <- NULL
  
  # set matrix
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  
  # get matrix
  get <- function() {
    ## Return the matrix
    x
  }

  # set the inverse of the matrix
  setInverse <- function(inverse) {
    a <<- inverse
  }
  
  # get the inverse of the matrix
  getInverse <- function() {
    ## return the inverse property
    a
  }
  
  ## return the list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  ## give cache if it is there
  if( !is.null(m) ) {
    message("cached data available:")
    return(m)
  }
  
  #get the matrix
  data <- x$get()
  
  ## calculate the inverse using matrix multiplication
  m <- solve(data) %*% data
  
  ## set the inverse to the object
  x$setInverse(m)
  
  ## return the matrix
  m

}