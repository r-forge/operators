\name{character decorator}
\alias{\%x=\%}
\alias{\%x=|\%}
\title{ Creates string decorators by repeating a pattern }
\description{
  Creates string decorators by repeating a pattern
  either a given numner of times or so that it takes 
  a given number of character
}
\usage{
x \%x=\% ntimes
x \%x=|\% ntimes
}
\arguments{
  \item{x}{ Pattern to repeat }
  \item{ntimes}{ Number of times to repeat the pattern (for the
    \code{\%x=\%} operator or number of character the output should 
    be (for the \code{\%x=|\%} operator) }
}
\value{
  A character string
}
\author{ Romain Francois <francoisromain@free.fr> }
\seealso{ \code{\link{paste}}, \code{\link{sprintf}}, \code{\link{rep}} }
\examples{
  "=" \%x=\% 80
  "<-+->" \%x=|\% 80
}
\keyword{ manip }

