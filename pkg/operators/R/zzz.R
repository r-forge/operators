.onAttach <- function( libname, pkgname ){
  options( operators.regexpr = "ep" )
  options( operators.gsub = "epg" )
  options( operators.strsplit = "ep" )
  options( operators.print = "print" )
}

