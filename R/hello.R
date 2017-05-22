#' @importFrom R.oo setConstructorS3
#' @importFrom R.methodsS3 setMethodS3
NULL

#' A different test function
#'
#' Yar yar yar
#'
#' @export
#' @param x
#'
#' @return x + 1
addOne <- function(x) {
  return(x + 1)
}

#' Constructs a test class
#'
#' A test class constructor
#'
#' @name TestClass
#' @export
#'
#' @return A TestClass object
R.oo::setConstructorS3("TestClass",
                 function() { R.oo::extend(R.oo::Object(), "TestClass") })

#' A test function
#'
#' This function tests
#'
#' @name     testFunc
#' @export
#'
#' @param this the object
testFunc <- function(this) {
  UseMethod("testFunc")
}

#' @rdname testFunc
#' @name testFunc.TestClass
#' @export
R.methodsS3::setMethodS3("testFunc", "TestClass", function(this) {
  return(1)
},appendVarArgs = F)

