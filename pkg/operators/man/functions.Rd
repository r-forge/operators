\name{\%(+)\%}
\alias{\%(+)\%}
\alias{\%(c)\%}

\title{ Operators to deal with functions }
\description{
  Operators to deal with functions
}
\usage{
 f \%(+)\% g
 f \%(c)\% g
}
\arguments{
  \item{f,g}{ Two functions to combine }
}
\value{
  A function that is the sum of \code{f} and \code{g} for 
  the operator \code{\%(+)\%}, or a composed function 
  for the operator \code{\%(c)\%}.
}
\author{ Romain Francois <francoisromain@free.fr> }
\note{ 
  The ellipsis is used at the moment as the arguments passed
  to \code{f} and \code{g}. No check are currently done
  to ensure correctness of the arguments.
}
\examples{
  f <- exp \%(+)\% sin
  f( 1:10 )
  exp( 1:10 ) + sin( 1:10 )
  
  f <- exp \%(c)\% sin
  f( 1:10 )
  exp( sin( 1:10 ) ) 
  
}
\keyword{ manip }

