
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {

}

## makeCacheMatrix creates a matrix, which is really a list containing a function to:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse



makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL                      
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <<- function(inverse) {inv <<- inverse}
  getInverse <<- function() {inv}
  list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
 ## The following function calculates the Inverse of the matrix created with the above function. 
 ## However, it first checks to see if the Inverse has already been calculated. If so, it gets the Inverse from the cache and skips the computation. 
 ## Otherwise, it calculates the Inverse  of the data and sets the value of the Inverse in the cache via the setInversen function.

        
        
cachesolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null (inv)) {
    message("getting cached data")
    return(inv)                          ## Return a matrix that is the inverse of 'x'
  }
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
}
