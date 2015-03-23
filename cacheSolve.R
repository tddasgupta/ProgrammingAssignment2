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
    

