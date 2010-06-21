\name{operator.type}
\alias{operator.type}
\alias{operator.type,name-method}
\alias{operator.type,function-method}

\title{
  Return the type for a given operator.
}
\description{
  Given an operator or its name/symbol, return the type of 
  operator defined by the \code{getOption('operators')}.
}
\usage{
  operator.type(op, ...)
}
\arguments{
  \item{op}{An operator as either a name/symbol or function. }
  \item{...}{ Currently unused. }
}

\details{
  The list of operators is kept in \code{options('operators')}.  This can
  be altered suing the \code{\link{setOperator}} command.

}

\value{
  A name of the operator type as a character string. If the operator is 
  defined by the user using the \code{\%any\%} syntax, the value 
  \bold{'USER'} is returned.
}

\author{
  Christopher Brown
}

\seealso{
  \code{\link{operators}}, \code{\link{setOperator}}. \link{Syntax}
}

\examples{
  operator.type( `+` )
  operator.type( `<=` )
  
  e <- quote( A +B )
  operator.type( e[[1]] )

  operator.type( as.name('+') )
}

\keyword{ utilities }
\keyword{ manip } 
\keyword{ methods }
