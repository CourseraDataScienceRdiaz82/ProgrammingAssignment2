## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    solveMatrix <- NULL
    set <- function(y) {
        x <<- y
        solveMatrix <<- NULL
    }
    get <- function() x
    setSolve <- function(calculatedSolve) solveMatrix <<- calculatedSolve
    getSolve <- function() m
    list(set = set, get = get,
         setSolve = setSolve,
         getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$get()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setSolve(m)
    m
}
