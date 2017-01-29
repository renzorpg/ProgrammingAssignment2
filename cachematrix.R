## Creating a functions that can calculate inverse of a matrix (must be always invertible)

## This functions creates a list with four values: set matrix values, get them, set inverse matrix values, and get them.

makeCacheMatrix <- function(x = matrix()) {
  invert <- NULL
  set <- function(y) {
    x <<- y
    invert <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invert <<- inverse
  getinverse <- function() invert
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## This function gives you the values of the inverse matrix

cacheSolve <- function(x, ...) {
  invert <- x$getinverse()
  if(!is.null(invert)) {
    return(invert)
  }
  
  data <- x$get()
  invert <- solve(data)
  x$setinverse(invert)
  invert
}
