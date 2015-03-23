makeCacheMatrix <- function(x = matrix()){
    m <- NULL
    set <- function(y){
      x <<- y
      m <<- NULL #store matrix in cache
    }
    get <- function() x #get matrix
    setInverse <- function(solve) m<<- solve #set inverse matrix
    getInverse <- function() m #get inverse matrix
    list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)## create list of functions
}

