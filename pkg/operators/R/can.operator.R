# ---------------------------------------------------------------------
# can.operator
#   tests whether the argument can be coerced to a operator, optionally
#   an operator of 'types'.
#   
# ---------------------------------------------------------------------
 setGeneric( 'is.operator', function(x,...) standardGeneric('is.operator') )
setGeneric( 'can.operator', function(x,...) standardGeneric( 'can.operator' ) )


setMethod( 'can.operator', 'name' ,
  function(x,...) deparse(x) %in% operators(...) 
)


setMethod( 'can.operator', 'function' ,
  function(x,...)
    deparse( x ) %in% lapply( operators(...), function(op) deparse( eval( as.symbol(op) ) ) )
)


setMethod( 'can.operator', 'character' ,
  function(x,...) x %in% operators(...)
)     


