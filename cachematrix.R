##
## These functions will cache the value of the matrix inverse
##  so that it is computed only once.
##
## To use, turn your matrix into a cacheMatrix, then use
##  cacheSolve() instead of solve() to get the inverse
##

#
# Given a matrix, create a cache matrix which can
#   store the inverse provided by the user
#
makeCacheMatrix <- function(m = matrix()) {
    # initially, inverse is empty
    inverse <- NULL
    
    # set a new matrix, clear the old inverse
    set <- function(n) {
        m <<- n
        inverse <<- NULL
    }
    
    # return the matrix
    get <- function() m
    
    # when given the inverse, cache it
    setInverse <- function(newInverse) inverse <<- newInverse
    
    # return the inverse or NULL if it hasn't been set yet
    getInverse <- function() inverse
    
    # make the functions available by returning a list of them
    list(set = set, get = get,
    setInverse = setInverse,
    getInverse = getInverse)
}

#
# Given a cache matrix (created using makeCacheMatrix())
#   return the solved matrix, either by finding a
#   stored inverse, or else calculating it and storing it
#
cacheSolve <- function(cacheM, ...) {
}
