## Put comments here that give an overall description of what your
## functions do

# Functions provide an ability to cache info about inversive matrix

## Write a short comment describing this function

# For template I used a function makeVector
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)  

}


## Write a short comment describing this function

# This function checks if there is some cached data on our matrix
# Will return cached value if stored

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}
