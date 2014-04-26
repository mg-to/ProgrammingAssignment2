### Assignment: Caching the Inverse of a Matrix

Matrix inversion is usually a costly computation and there may be some
benefit to caching the inverse of a matrix rather than computing it
repeatedly (there are also alternatives to matrix inversion that we will
not discuss here). Your assignment is to write a pair of functions that
cache the inverse of a matrix.

Write the following functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

For this assignment, assume that the matrix supplied is always
invertible.

In order to complete this assignment, you must do the following:

1.  Fork the GitHub repository containing the stub R files at
    [https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
    to create a copy under your own account.
2.  Clone your forked GitHub repository to your computer so that you can
    edit the files locally on your own machine.
3.  Edit the R file contained in the git repository and place your
    solution in that file (please do not rename the file).
4.  Commit your completed R file into YOUR git repository and push your
    git branch to the GitHub repository under your account.
5.  Submit to Coursera the URL to your GitHub repository that contains
    the completed R code for the assignment.

### Grading

This assignment will be graded via peer assessment.

### Files description
Three files are part of this submission:
1.  README.md - This file
2.  cachematrix.R - The file containing the two R functions to be implemented as part of the assessment
3.  test.R - A file with a simple R program to test the functions in cachematrix.R file

#### cachematrix.R functions description

The makeCacheMatrix function creates and returns a list of functions for
1.  saving a matrix 
2.  getting the saved matrix. If non matrix was previously saved, an empty matrix is returned
3.  saving the inverse of the saved matrix
4.  getting the inverse of the saved matrix. If no inverted matrix was previously saved, an empty matrix is returned
 
The cacheSolve matrix function
1.  evaluates the inverted matrix for the matrix received as first argument
2.  caches the inverted matrix
3.  returns the inverted matrix
If the inverted matrix is already cached, steps 1 and 3 are skipped

The input to cacheSolve must be a list returned by makeCacheMatrix function

#### test.R program

The program invokes makeCacheMatrix and cacheSolve functions and traces to standard output what's going on.
The file test.R must be in the same folder as cachematrix.R folder  
It must be invoked from R prompt with following command
source("test.R").    

