`%!in%` <- function(x,table) !`%in%`(x,table)

`%without%` <- function(x,table){
  x[ !x %in% table ]
}

`%x=%` <- function(x, ntimes){
	if(ntimes == 0) x %x=% 0 else paste( rep(x, ntimes), collapse = "" ) 
}

`%x=|%` <- function(x, ntimes){
  if(ntimes == 0) ntimes <- getOption( "width" ) 
	out <- paste( rep(x, ceiling( ntimes / nchar(x)  )) , collapse = "" )  
  substr( out, 1, ntimes)
}

`%of%` <- function(x,y){
  inherits(x,y)
}

