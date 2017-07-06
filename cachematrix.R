## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makecacheMatrix <- function (m = matrix()){
  inv <- NULL
  set <- function (y){
    m <<-y
    inv <<- NULL
  }
  get <- function () m
  setinv <- function (solve) m <<- solve
  getinv <- function () inv
  ##creates a list of matrix so that $ operator can be used
  list (set =  set , get = get , 
        setinv = setinv , getinv = getinv)

## Write a short comment describing this function

cachesolve <- function (m = matrix(), ...){
    inv <- m$getinv()
    if (! is.null(inv)){
      message ("getting cached data")
      retun (inv)
      
    }