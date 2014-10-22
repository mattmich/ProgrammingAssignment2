## These function allow to calculate the inverse of a square matrix (if it exists). If this
## inverse matrix was already calculated, the program will output the already compueted inverse.

## This function creates a list which contain a funtion to "get the input matrix", "set the inverse" and 
## "get the inverse matrix"

makeCacheMatrix <- function(x = matrix()) {

    invMatrix <- NULL
    
    getMatrix <- function() x
    
    setInvMatrix <- function (newInvMatrix) invMatrix <<- newInvMatrix
    
    getInvMatrix <- function() invMatrix
    
    list (getMatrix = getMatrix, setInvMatrix = setInvMatrix, getInvMatrix = getInvMatrix)

}


##This function calculate the inverse of a square matrix (if it exists) if this inverse  has not
## been already saved in tehe memory


cacheSolve <- function(x, ...) {

invMatrix <- x$getInvMatrix()
  
  if(!is.null(invMatrix)) {
    message("Inverse already computed. No need of additional computation.")
    return(invMatrix)
  }
  
  newMatrix <- x$getMatrix()
  invMatrix <- solve(newMatrix)
  x$setInvMatrix(invMatrix)
  invMatrix

        ## Return a matrix that is the inverse of 'x'
}
