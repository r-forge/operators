# ---------------------------------------------------------------------
# is.operator: 
#  function to test if argument is an operator, optionally of certain
#  'types'.
#
# ---------------------------------------------------------------------
setGeneric( 'is.operator', function(x,...) standardGeneric('is.operator') ) 

setMethod( 'is.operator', 'ANY',
  function(x, ... )
    is.function(x) && 
    ( deparse(x) %in% 
      lapply( operators(...), function(op) deparse( eval( as.symbol(op) ) ) ) 
    )
)
