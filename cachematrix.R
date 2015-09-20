## Put comments here that give an overall description of what your
## functions do
#Computing the inverse of a square matrix can be done with the solve function in R.

#######
#######

## Write a short comment describing this function
# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


makeVector <- function(x = numeric()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    inver <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) inver <<- inverse
  getinverse <- function() inver
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function
#cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cachemean <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inver <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <- mean(data, ...)
  x$setmean(inver)
  inver
}
