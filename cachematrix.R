
## The makeCacheMatrix function creates and returns a list of functions for
## 1) saving a matrix 
## 2) getting the saved matrix. If no matrix was previously saved, a 1x1 matrix with an NA value is returned
## 3) saving the inverse of the saved matrix
## 4) getting the inverse of the saved matrix. If no inverted matrix was previously saved, a 1x1 matrix with an NA value is returned
 

makeCacheMatrix <- function(x = matrix()) {
        i <- matrix()
        set <- function(y) {
                x <<- y
                i <<- matrix()
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## The cacheSolve matrix
## 1) evaluates the inverted matrix for the matrix received as first argument
## 2) caches the inverted matrix
## 3) returns the inverted matrix
## If the inverted matrix is already cached, steps 1 and 3 are skipped

## The input to cacheSolve must be a list returned by makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        emptyM<-matrix()
        i <- x$getinverse()
        if(!isTRUE(all.equal(i,emptyM))) {  # check if it is the empty matrix
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
