## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function is make inverse matrix and cache it's 

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      set_inv <- function(solve) m <<- solve
      get_inv <- function() m
      list(set = set, get = get,
           set_inv = set_inv,
           get_inv = get_inv)
}


## Write a short comment describing this function
## This function is looking cache matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$get_inv()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$set_inv(m)
      m
}
