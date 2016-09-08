## The functions create a 

## Create and set a matrix to cache
makeCacheMatrix <- function(matrix_value = matrix()) {
  inverse_matrix <- NULL
  
  set <- function(y) {
    matrix_value <<- y
    inverse_matrix <<- NULL
  }
  get <- function() matrix_value
  
  setinverse <- function(inverse) inverse_matrix <<- inverse
  getinverse <- function() inverse_matrix
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## This function return the inverse matrix
cacheSolve <- function(matrix_value, ...) {
  matrix <- matrix_value$getinverse()
  if(!is.null(matrix)) {
    message("Getting chached data.")
    return(matrix)
  }
  data <- matrix_value$get()
  matrix <- solve(data, ...)
  matrix_value$setinverse(matrix)
  matrix
}
