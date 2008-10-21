.onAttach <- function( libname, pkgname ){
  loadOptions( )
}

loadOptions <- function( ) {
	opt.file <- system.file( "options", "options.R", package = "operators" )
	source( opt.file )
}

