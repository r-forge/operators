\name{setOperator}
\alias{setOperator}

\title{
  Register a user-defined operator as a given operator type.
}

\description{
  \code{setOperator} registers a user-defined operator as a given type.
  Subsequently, this operator can be treated as a member of a class of
  operators.
}

\usage{
  setOperator(ops, type)
}

\arguments{
  \item{ops}{ 
    A character vector containing the \bold{names} of one or more 
    functions which will be assigned a \code{type}. 
  }
  \item{type}{
    A name of the operator type.  See details.
  }
}

\details{
   \code{setOperator} assigns a type to a user-defined operator.  Type
   definitions are contained in list \code{getOption('operators')}.

   \code{type} can be one of the core operators types: namespace,
   component, indexing, sequence, arithmetic, relational, logical, 
   tilde, assignment, help \bold{or} a user-defined type.  When an
   operator is assigned to a new user-defined type, a warning is 
   given.  Subsequent, assignment are made silently.

   \code{type} cannot be one of the reserved operator groupings:
   ALL, CORE, SPECIAL, USER
}

\value{
   None. This function exists for assigning a operator to 
   \code{options('operators')}.
}

\author{
  Christopher Brown
}


\seealso{
  \code{\link{operators}}, \link{Syntax}
}

\examples{
  \dontrun{
    setOperator( '%!in%', 'relational' )
    operators( type='relational' )
  }
}

\keyword{ utilities }

