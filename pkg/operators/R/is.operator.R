# ---------------------------------------------------------------------
# is.operator: 
#  function to test if argument is an operator, optionally of certain
#  'types'.
#
#  is.operator returns TRUE if x is a function and matched the core 
#  or %.% operators
# 
#  TODO:
#   - Handle S4 operators.   
#   - Faster method of searching than comparing to all existing 
#     operators
#   - How to handle calls like `%!in%` is this an operator?
#
# ---------------------------------------------------------------------
setGeneric( 'is.operator', function(x,...) standardGeneric('is.operator') ) 

setMethod( 'is.operator', 'function',
  function(x, ... )
    any( 
      sapply( operators(...), 
        function(op) identical(x,as.function(eval(as.name(op))))
      )
    )
)


# ANYTHING OTHER THAN A FUNCTION RETURNS FALSE.
setMethod( 'is.operator', 'ANY',
  function(x,...) FALSE
)

# x <- as.name( '%x%' )
# op <- eval( x ) 

# ==.function in function package.
# need identicalq
# sapply( operators(), function(x) is.operator(eval(as.name(x))) )



