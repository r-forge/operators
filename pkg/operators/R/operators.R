# DESCRIPTION: opposite of %in%
# KEYWORDS: programming
`%!in%` <- function(x,table) !`%in%`(x,table)

`%without%` <- function(x,table){
  x[ !x %in% table ]
}

`%x=%` <- function(x, ntimes){
  paste( rep(x, ntimes), collapse = "" ) 
}

`%x=|%` <- function(x, ntimes){
  out <- paste( rep(x, ceiling( ntimes / nchar(x)  )) , collapse = "" )  
  substr( out, 1, ntimes)
}

`%of%` <- function(x,y){
  inherits(x,y)
}

