\name{operators}
\Rdversion{1.1}
\alias{operators}
\title{
  Return the names of defined operators
}

\description{
  \code{operators} returns the names of defined operators. 
}

\usage{
  operators(types = NULL)
}


\arguments{
  \item{types}{   
    A character vector with types of operators to return. The types may 
    one or more of: \code{'namespace'}, \code{'component'}, \code{'indexing'}, 
    \code{'sequence'}, \code{'arithmetic'}, \code{'relational'}, 
    \code{'logical'}, \code{'tilde'}, \code{'assignment'}, \code{'help'} 
    or one of the special groups: \code{'ALL'}, \code{'CORE'}, 
    \code{'SPECIAL'}, \code{'USER'}
  }
}


\details{
  \code{operators} provides the \bold{names} of defined operators. 
  These can be either CORE language operators or 'SPECIAL' operators
  defined by the \code{\%any\%} syntax.  By default, i.e. when 
  \code{types=NULL}, all operators are returned.  

  The core operators are:
  \tabular{rr}{
      namespace  \tab :: ::: \cr
      component  \tab @ $ \cr
      indexing   \tab \[ \[\[ \cr 
      sequence   \tab : \cr
      arithmetic \tab + - * / ^ \%\% \%/\% \cr
      relational \tab < > <= >= == != \%in\% \%!in\% \cr
      logical    \tab ! & && | || \cr
      tilde      \tab ~ \cr
      assignment \tab <- <<- -> ->> = \cr
      help       \tab ? \cr
   }

   \code{types} may also be one a special operator groupings:
   \itemize{
      \item ALL: same as \code{types=NULL}
      \item CORE: only base R operators and those registers using
            \code{\link{setOperator}}
      \item SPECIAL: All operators defined using the \code{\%any\%}
            syntax
      \item USER: All SPECIAL operators not including CORE 
   }

}


\value{
  character vector of \code{\link{unique}} operator names. 
}


\note{
  The right arrow assignment operators, \code{->} and \code{->>} 
  is not an operator but a syntatic variant.  Consequently, it 
  does not behave properly as an operator.  They are
  omitted from the operator list as they are not correctly 
  identified as primitives or functions by the R language.
}

\references{
  http://cran.r-project.org/doc/manuals/R-lang.html
  https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=14310
}


\author{
  Christopher Brown
}

\seealso{
  \code{\link{Syntax}}, \code{\link{setOperator}}, and help files 
  on varios operators
}

\examples{

  operators()
  operators( types="arithmetic" )
  operators( types=c("arithmetic","logical" ) )
  operators( types='ALL' )
  operators( types='CORE' )
  operators( types='SPECIAL' )
  operators( types='USER' )

}

\keyword{ utilities }
