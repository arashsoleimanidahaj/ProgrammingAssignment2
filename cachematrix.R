@@ -4,12 +4,34 @@
## Write a short comment describing this function

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
        ## Return a matrix that is the inverse of 'x'
  matrix_i <- x[getInverse()]
  if( !is.null(matrix_i) ) {
    message("getting cached data")
    return(matrix_i)
  }
  data <- x[get()]
  matrix_i <- solve(data, ...)
  x[setInverse(i)]
  matrix_i      
}
