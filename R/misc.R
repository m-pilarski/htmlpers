#' md2html
#'
#' @param .md NULL
#' @param .unnest_pars NULL
#'
#' @return NULL
#' @export
#'
#' @examples
#' md2html("hallo *test*")
md2html <- function(.md, .unnest_pars=TRUE){
  .md <- markdown::markdownToHTML(text=.md, fragment.only=TRUE)
  # change to extract when oly single paragraph ~ simplify
  if(.unnest_pars){
    .md <- .md |>
      xml2::read_html() |>
      xml2::xml_find_all("//p") |>
      xml2::xml_contents() |>
      ("xml2" %:::% "as.character.xml_nodeset")() |>
      stringi::stri_c(collapse="")
  }
  return(.md)
}
