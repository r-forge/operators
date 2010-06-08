
# .operators:
#   a list of the basic operators not including those defined 

.operators <- list( 

  arithmetic = c( '+', '-', '*', '/', '^', '%%', '%/%' ) ,
  range      = c( ':' ) ,
  colon      = c( '::', ':::' ) ,
  relational = c( '<', '>', '<=', '>=', '==', '!=', '%in%', '%!in%' ) ,
  logical    = c( '!', '&', '&&', '|', '||' ),
  tilde      = c( '~' ) ,
  # Cannot work on primitives ->, ->> 
  # submitted as R Bug 14310 
  # assignment = c( '<-', '<<-', '->', '->>', '=' ) ,
  assignment = c( '<-', '<<-', '=' ) ,
  special    = apropos(  "^%.+%" ) ,
  dereference= c( '@', '$' )

)
    


operators <- function( types=NULL ) {
   
  # Update .operators$special
   .operators$special <- apropos(  "^%.+%" )

   ops <- if ( is.null( types ) ||  types == "all" ) 
            .operators else .operators[ types ]
   
   ret <- NULL; for( i in 1:length(ops) ) ret <- append( ret, ops[[i]] )
     
   return( unique(ret) )

}

