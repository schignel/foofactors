#' Clean factor levels
#'
#' For all levels, remove white spaces and convert to title case.

#' @param x factor
#' @return factor
#' @export
#' @examples
#' # Create a factor with messy levels
#' production <- factor(c("  HIGH production", "MED production  ",  "MED production  ", " low Production"))
#'
#' # Run it through fclean()
#' fclean(production)
fclean <- function(x) {
  xtrim <- stringr::str_to_title(x)
  xtrim.tit <- stringr::str_trim(xtrim)
  as.factor(xtrim.tit)
}

