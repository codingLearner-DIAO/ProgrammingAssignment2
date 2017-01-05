## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m = x
    inverM = NULL
    getMatrix <- function() m
    setMatrix <- function(x) m <<- x
    getInverseMatrix <- function() inverM
    setInverseMatrix <- function(ix) inverM <<- ix
    list(getMatrix = getMatrix,
         setMatrix = setMatrix,
         getInverseMatrix = getInverseMatrix,
         setInverseMatrix = setInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inverM <- x$getInverseMatrix()
    if(!is.null(inverM)) {
        message("getting inverse matrix")
        return(inverM)
    }
    inverM <- solve(x$getMatrix())
    x$setInverseMatrix(inverM)
    inverM
}
