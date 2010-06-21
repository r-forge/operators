\name{is.operator}
\Rdversion{1.1}

\alias{is.operator}
\alias{is.operator-methods}
\alias{is.operator,function-method}
\alias{is.operator,name-method}
\alias{is.operator,ANY-method}

\alias{can.operator}
\alias{can.operator-methods}
\alias{can.operator,character-method}
\alias{can.operator,function-method}
\alias{can.operator,name-method}

\alias{as.operator}
\alias{as.operator-methods}
\alias{as.operator,character-method}
\alias{as.operator,function-method}
\alias{as.operator,name-method}

\title{
  Utilities for operators
}
\description{
  These are S4 methods are utilies for working with operators.  In R,
  operators are functions with special syntax.

  \code{is.operator} tests whether the object is one of the defined 
  \code{\link{operators}}.  
  
  \code{can.operator} tests whether the object can be coerced to an 
  operator.  
  
  \code{as.operator} coerced the object to an operator.
  
  Optionally, you can specify one of the that it tests for a specific 
  type of operator.  See details, below.

}

\usage{
  is.operator(x, ...)
  as.operator(x,...)
  can.operator(x,...)
}

\arguments{
  \item{x}{ object to be tested or coerced. }
  \item{\dots}{ additional arguments passed to \code{\link{operators}}. }
}

\details{
  An operator is R function with special syntax.  They can can be one the
  core R operators: relational, 
  arithmetic, tilde, single- double- or triple colon, logical, or
  assignment.  Or it can be a user-defined operators.
  
  ( See \code{??operator} for examples of each. )  

  \code{is.operator} tests whether the argumenst is an operator.

  \code{as.operator} coerces \code{x} to a operator, otherwise fails.

  \code{can.operator} test whether the object can be coerced to an 
  operator.

  All functions can accepts a \code{types} argument which is passed to 
  \code{link{operators}}.  By specifying one or more types, these functions
  test or coerce using those \code{types} only.

}

\value{ 
  \code{is.operator} and \code{can.operator} return logical.

  \code{as.operator} returns the argument coerced to the concommitant
  R function.

}

\author{
  Christopher Brown
}

\seealso{
  \code{\link{operators}}, \code{\link{apropos}}, 
  \code{\link{S4groupGeneric}}

}

\examples{ 

  is.operator( `+` )
  is.operator( 'xyzzy' )
  is.operator( `+`, types="arithmetic" )
  is.operator( `+`, types="relational" )

  can.operator( `+` )
  can.operator( 'xyzzy' )
  can.operator( `+`, types="arithmetic" )
  can.operator( `+`, types="relational" )

  as.operator( `+` )
  as.operator( '+' )
  as.operator( as.name('+') )  

}

\keyword{ utilities }
\keyword{ manip }

