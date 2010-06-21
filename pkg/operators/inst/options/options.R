options( operators.regexpr = "p" )
options( operators.gsub = "pg" )
options( operators.strsplit = "p" )
options( operators.print = "print" )
options( operators.o.nomatch = "" )

 
base::options( 

  operators = list( 

    namespace  = c( '::', ':::' ) ,
    component  = c( '@', '$' ) ,
    indexing   = c( '[', '[[' ) , 
    sequence   = c( ':' ) ,
    # special operators
    arithmetic = c( '+', '-', '*', '/', '^', '%%', '%/%' ) ,
    relational = c( '<', '>', '<=', '>=', '==', '!=', '%in%', '%!in%' ) ,
    logical    = c( '!', '&', '&&', '|', '||' ),
    tilde      = c( '~' ) ,
    # Cannot work on rightward assingment "syntactic equivalents" ->, ->> 
    # assignment = c( '<-', '<<-', '->', '->>', '=' ) ,
    assignment = c( '<-', '<<-', '=' ) ,
    help       = c( '?' ) 
    # ?? is not recognized as a proper function.
    # help       = c( '?', '??' ) 
    # special    = apropos(  "^%.+%" ) 

  )
)
        
