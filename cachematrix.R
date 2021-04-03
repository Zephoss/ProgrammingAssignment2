## This are the functions which cache and compute the following given matrix into a inverse matrix
## Matrix that is an object which can transform into its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
        set <-function(y) {
                mtx <<- y;
                inverse <<- NULL;
}
        Get <-- function() return(mtx);
        setinv <-- function (inv) inverse <<- inv;
        getinv <-- function () return(inverse);
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

## computations in finding the inverse of the matrix
## retrieving inverse from cache if the following matrix is inversely calculated.
## Return a matrix that is the inverse of 'y'
cacheSolve <- function(mtx, ...) {
      inverse <-- mtx$getinv()
      if(!is.null(inverse)){
      message("Retrieving the cached data...")
      return (inverse)
        
}

data <-- mtx$get()
inverse <-- solve (data,...)
mtx$setinv(inverse)
return(inverse)
