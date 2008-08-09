
`%(+)%` <- function( f, g ){
  function(...){
    f(...) + g(...)
  }
}

`%(c)%` <- function(f,g){
  function(...){ f(g(...)) }
}

