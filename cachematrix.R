## This is a function to cache an inverse of a matrix

## This function creates a list including four functions:
##  1. Set the value of the matrix
##  2. Set the value of the matrix
##  3. Set the inverse of the matrix
##  4. Get the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
        x<<- y
        inv<<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## This function calculates the inverse of a matrix 'x' if it cannot
## find a cached calculation

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)){
              message("getting cached data")
              return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
}


