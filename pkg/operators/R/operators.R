
# options(operators):
#   a list of the basic operators not including defined as specials
#   use operators() to get a list of operators including defined operators
# NB. base::options( operators ) is set in inst/options/options.R


# ---------------------------------------------------------------------
# Function: operators
#   Returns a current list of all defined operators.
#   
#      core: operators defined in base R or setOperator
#   special: those defined with %any% Syntax
#    # user: those defined with %any% without calling setOperator
#    #  all: unique( defined + special )
#
#  We can have the operators( special=TRUE )
#  include special operators defined by %any% syntax
#
# 
# ---------------------------------------------------------------------
operators <- function( types=NULL ) {
   
  operators <- getOption('operators')

 # CASE 0: types == NULL --> RETURN ALL OPERATORS
  if ( is.null(types) ) 
    return( Reduce( c, operators, apropos("^%.*%" ), right = TRUE ) )

  ops <- NULL
  for( type in types ) {
    if( type == 'ALL' ) {
      ops <- union( ops,  Reduce( c, operators, apropos("^%.*%" ), right = TRUE ) )

    } else if ( type == 'CORE' ) {
      ops <- union( ops, Reduce( c, operators ) )

    } else if ( type == 'SPECIAL' ) {
      ops <- union( ops, apropos( "^%.*%" ) )

    } else if ( type == 'USER' ) {
      ops <- union( ops, apropos( "^%.*%" ) %without%  Reduce( c, operators ) )

    } else if ( type %in% names(operators) ) {
      ops <- union( ops, operators[[type]] )

    } else {
      stop( "operator type: ", type, " is unknown" )
    }

   }
    
   return( ops )
    
}


