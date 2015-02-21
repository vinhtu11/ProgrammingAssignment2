## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	## list of task: 
	## set the matrix (task A)
	## get the matrix (task B)
	## set the inverse (task C)
	## get the inverse (task D)
	
	## task A
	inver = NULL
	set = function(y) {
	x <<- y
	inver <<- NULL
	}
	## task B	
	get = function() x
	## task C & D
	setinver = function(inversion) inver <<- inversion 
	getinver = function() inver
	list(set=set, get=get, setinver=setinver, getinver=getinver)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	inver = x$getinver()
	## when the inverse calculated then get it form the cache
	if (!is.null(inver)){
	message("getting cached data")
	return(inver)
	}
	## when the inverse didn't calculated, do it
	mat.data = x$get()
	inver = solve(mat.data, ...)
	## set the result
	x$setinver(inver)
	return(inver)
}
