## Implementation of a spectial version of matrix that cache the matrix inverse
## functions do

## Cached Matrix definition

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


## Calculation and caching the inverse of a matrix

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
