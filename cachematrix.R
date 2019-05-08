## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <-function(a = matrix()) {
  inv1 <- NULL
  set1 <- function(b){
    a <<- b
    inv1 <<- NULL
  }
  get <- function() a
  setInverse <- function(solveMatrix) inv1 <<- solveMatrix
  getInverse <- function() inv1
  list(set1 = set1, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv1 <- a$getInverse()
  if(!is.null(inv1)){
    message("getting cached data")
    return(inv1)
  }
  data <- a$get()
  inv1 <- solve(data)
  a$setInverse(inv1)
  inv1      
}
  
