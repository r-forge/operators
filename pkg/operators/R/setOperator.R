# ---------------------------------------------------------------------
# Function: setOperator
#  Treats ops as CORE type R operators
# ---------------------------------------------------------------------
setOperator <- function( ops, type ) {

  if( type %in% c( 'ALL', 'CORE', 'SPECIAL', 'USER' ) )
    stop( type, "  is a reserved operator type." )

  if( ! is.character(ops) )  ops  <- as.character(ops) 

  if( ! is.character(type) ) type <- as.character(type)

  if( length(type) != 1 ) 
    stop( "Operators can only have one type." ) 
   
  operators <- getOption( "operators" )

  if( type %in% names( operators ) ) {
    operators[[type]] <- unique( append( operators[[type]], ops ) ) 
  } else {
    warning( "operator type '", type, "' unknown, creating a new type." )
    operators[type] <- ops
  }

  base::options( operators = operators )

}    
