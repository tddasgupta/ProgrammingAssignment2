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

cacheSolve <- function(x, ...){
  m <- x$getInverse() #query the x matrix's cache
  if(!is.null(m)){ #if there is a cache the inverse has been previously calculated
    print("found cache data") #sent message indicating this is just cache
    return(m) #return the cache
  }
  data <- x$get() #get the matrix used by makeCacheMatrix function
  m <- solve(data, ...) #calculate the inverse of the matrix
  x$setInverse(m) #store the inverse matrix in cache using the makeCacheMatrix set function
}