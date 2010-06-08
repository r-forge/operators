\name{operators}
\Rdversion{1.1}
\alias{operators}
\alias{.operators}
\title{
  Return the _names_ of defined operators
}
\description{
  \code{operators} returns the names of defined operators. These
  include arithmetic, range, colon, relational, logical, tilde, 
  assignment and/or special.
}

\usage{
  operators(types = NULL)
}


\arguments{
  \item{types}{   
  A character vector with types of operators to return. The types may 
  be: 'arithmetic', 'range', 'colon', 'relational', 'logical', 'tilde', 
  'assignment','special', 'all' or NULL.  Default: NULL. 
  }
}


\details{
   \code{operators} provides  names of operators.  By default or 
   when \code{types="all"}, all operators are returned.  Otherwise,
   \code{types} will provide one or more of the following:
      arithmetic: + - * / ^ %% %/%
      range: :
      colon: :: :::
      relational: < > <= >= == != %in% %!in%
      logical: ! & && | ||
      tilde: ~
      assignment: <- <<- -> ->> =
      special: ( see below )

   When \code{types="special"}, \code{operators} searches to find 
   operators that are defined with the %.*% syntax. Note that 
   \code{operators} searches for special functions each call.

}


\value{
  character vector of \code{\link{unique}} operator names. 
}


\note{
  The right arrow assignment operators, \code{->} and \code{->>} 
  is not an operator but a syntatic variant.  Consequently, it 
  does not behave properly as an operator.  They are
  omitted from the operator list as they are not correctly 
  identified as primitives by R.
}

\references{
  http://cran.r-project.org/doc/manuals/R-lang.html
  https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=14310
}


\author{
  Christopher Brown
}

\seealso{
  The individual help files about the operators, perhaps
}

\examples{

  operators()
  operators( types="arithmetic" )
  operators( types=c("arithmetic","logical" ) )
  operators( types=c("special") )

}

\keyword{ utilities }
\keyword{ data }
