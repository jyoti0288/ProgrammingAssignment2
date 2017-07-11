## Put comments here that give an overall description of what your
## functions do

## makes a matrix and then solve function does inverse of matrix
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
} 

## below function makes a fucntion to get inverse of any matrix getting defined

cachesolve <- function (m = matrix(), ...){
    inv <- m$getinv()
    if (! is.null(inv)){
      message ("getting cached data")
      retun (inv)   
    }
   
   ##return a mtarix that is inverse 
    data <- m$get()
    inv <- solve(data)
    m$setinv(inv)
    inv
    
  }

  
