# ---------------------------------------------------------------------
# as.operator:
#   coerce to an operator
#   similar to 'as.function', but will only work for operators.
# ---------------------------------------------------------------------
setGeneric( 'as.operator', function(x, ...) standardGeneric( 'as.operator' ) )


setMethod( 'as.operator', 'function' , 
  function(x, ...) 
    if( is.operator(x) ) return(x) else 
      stop( x, " cannot be coerced to an operator." )
)


setMethod( 'as.operator', 'name' ,
  function(x, ...)
    if( deparse(x) %in% operators(...) ) eval( x ) else
      stop( x, " cannot be coerced to an operator." )
)


setMethod( 'as.operator', 'character' ,
  function(x, ...)
    if( x %in% operators(...) ) eval( as.name(x) ) else 
      stop( x, " cannot be coerced to an operator." )
)


# setMethod( 'as.function', 'character', 
#  function(x, ...) 
#    if( x %in% apropos(x) ) eval(as.name(x)) else
#      stop( x, " is not a defined function." )
# )

