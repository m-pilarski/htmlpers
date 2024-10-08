#' Title
#'
#' @param .str_pkg NULL
#' @param .str_fn NULL
#'
#' @return .str_pkg:::.str_fn
`%:::%` <- function(.str_pkg, .str_fn){
  get(.str_fn, envir=asNamespace(.str_pkg), inherits=FALSE)
}

#' @importFrom rlang `%||%`
#' @export
rlang::`%||%`

#' @importFrom htmltools tags
#' @export
htmltools::tags
