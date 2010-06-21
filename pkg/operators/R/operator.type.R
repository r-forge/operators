# ---------------------------------------------------------------------
# FUNCTION: operator.types
#   Return the operator.type for a given operator
#
#   What is op is a function.
#
# ---------------------------------------------------------------------
setGeneric( 'operator.type', function(op,...) standardGeneric( 'operator.type' ) )

setMethod( 'operator.type', 'name', 
  function( op,... ) {
  
    op <- deparse( op )
    operators <- getOption( 'operators' )
  
    # Create operator list for standard operators.
    # invert type => operator list 
    # types <- list()

  # DEFINED TYPES:
    for( type in names(operators) )
      if ( op %in% operators[[type]] ) return(type) 
  
  # 'USER' type:
    if( op %in% operators() ) 
      return( "USER" )
  
    NULL

  } 

)


# ---------------------------------------------------------------------
# Convert the operator list to functions and compare the list
# of functions.  Only return the first type.
# ---------------------------------------------------------------------
setMethod( 'operator.type', 'function',
  function(op, ...) {

    # funcs <- lapply( names(ops), function(op) as.function(as.name(op)) )
  # DEFINED OPERATORS:
    ops  <- getOption( 'operators' )
    for( type in names(ops) ) {

      # Convert all ops to functions:
      funs <- lapply( 
        ops[[type]], 
        function(op) as.function(eval(as.name(op))) 
      )

      if( any( sapply( funs, function(fun) identical(fun,op) ) ) )
        return( type ) 
    }
      
  # USER OPERATORS: %any%
    funs <- lapply( 
      operators( type="USER" ), 
      function(op) as.function(eval(as.name(op))) 
    )

    if( any( sapply( funs, function(fun) identical(fun,op) ) ) )
      return( "USER" ) 
    
  }  

)

# operator.type <- function( op ) {
#   
#   op <- deparse( op )
#   operators <- getOption( 'operators' )
# 
#   # Create operator list for standard operators.
#   # invert type => operator list 
#   # types <- list()
#   for( type in names(operators) )
#     if ( op %in% operators[[type]] ) return(type) 
# 
#   if( op %in% operators() ) 
#     return( "special" )
# 
#   NULL
# 
# }
# 
