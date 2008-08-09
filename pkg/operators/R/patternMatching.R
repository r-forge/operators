
### pattern matching
`%~%` <- 
function(x, rx){
  .regexpr <- base:::regexpr %but% getOption("operators.regexpr")
  .regexpr(rx, x) > 0 
}

# inverse of %~%
`%!~%` <- function(x,rx) !`%~%`(x,rx)

# regular expression filters
`%~|%` <- function(x,rx){
  x[x %~% rx]
}
`%!~|%` <- function(x,rx){
  x[! x %~% rx]
}

# all versions                   
`%~*%`  <- function(x,rx) all( `%~%` (x,rx) )
`%!~*%` <- function(x,rx) !all( `%~%`(x,rx) )

# any versions
`%~+%`  <- function(x,rx)  any( `%~%`(x, rx) ) 
`%!~+%` <- function(x,rx) !any( `%~%`(x, rx) )
  

### pattern removing
`%-~%` <- function(txt, pattern){
  .gsub <- ..gsub %but% getOption("operators.gsub")
  .gsub( pattern , "", txt)
}

# filters and remove
`%-~|%` <- function(txt, pattern){
  (txt %~|% pattern) %-~% pattern
}

`%o~|%` <- function(txt, pattern){
  pat <- if( pattern %~% "\\(.*\\)" ) sprintf("^.*%s.*$", pattern) else sprintf("^.*(%s).*$", pattern)  
  gsub( pat , "\\1", txt %~|% pattern )
}


`%/~%` <- function( txt, rx ){
  .strsplit <- base:::strsplit %but% getOption("operators.strsplit")
  unlist( .strsplit( txt, rx) )
}

`%s~%` <- function( txt, pattern ){
  if( pattern %!~% "^/") stop( gettext("the regular expression should start with a '/'") )
  pattern <- ( pattern %/~% "/" ) [-1]
  modif <- if( length(pattern) ==3 && nchar(pattern[3]) > 0 ){ # get the modifiers
    pattern[3]
  } else  getOption("operators.gsub")
  
  .gsub <- ..gsub %but% modif
  .gsub( pattern[1], pattern[2], txt )
}

### gsub or sub depending on the global argument
..gsub <- function(pattern, replacement, x, ignore.case = FALSE, extended = TRUE, 
    perl = FALSE, fixed = FALSE, useBytes = FALSE, global=TRUE){
  
   if(global) gsub(pattern,replacement, x, ignore.case, extended, perl, fixed, useBytes)
   else sub(pattern,replacement, x, ignore.case, extended, perl, fixed, useBytes)
}


