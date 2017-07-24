##This is the final solution to Peer-graded assignment 2
## a list functions that set the value of matrix, get the value of matrix
## set the value of inverse, and get the value of inverse
makeCacheMatrix <- function(x = matrix()) {
  matrix_i<-NULL
  
  set<-function(y){
    x<<-y
    matrix_i<<-NULL
  }
  get <- function()    x
  setInverse <- function(s) matrix_i <<- s
  getInverse <- function() matrix_i
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Uses Solve function to find the inverse of a Matrix datatype
## it first checks to see if the inverse has already been calculated.


cacheSolve <- function(x, ...) {
  matrix_i <- x$getInverse()
  if( !is.null(matrix_i) ) {
    message("getting cached data")
    return(matrix_i)
  }
  data <- x$get()
  matrix_i <- solve(data, ...)
  x$setInverse(matrix_i)
  matrix_i      
}

