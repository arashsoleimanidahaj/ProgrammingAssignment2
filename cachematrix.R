##This is the final solution to Peer-graded assignment
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
s=list(1,2,3)
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  matrix_i <- x[getInverse()]
  if( !is.null(matrix_i) ) {
    return(matrix_i)
  }
  data <- x[get()]
  matrix_i <- solve(data, ...)
  x[setInverse(i)]
  matrix_i      
}

