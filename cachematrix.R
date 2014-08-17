## Put comments here that give an overall description of what your
## functions do

## This document contains two functions for the Programmming Assignment 2 makeCacheMatrix and cahceSolve 

## Write a short comment describing this function

## makeCacheMatrix is a function that  creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## Write a short comment describing this function

## cacheSolve is a function that computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m

        ## Return a matrix that is the inverse of 'x'
}
