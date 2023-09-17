#' R Library Summary
#'
#' Provide a brief summary of the package
#' libraries on your machine
#'
#' @param sizes logical indicating whether or not to calculate
#'    library sizes. Default `FALSE`.
#'
#' @return A two-column `data.frame` containing the count of
#'    packages for each of the user's libraries
#' @export
#'
#' @examples
#' lib_summary()
#'
lib_summary <- function(sizes = FALSE) {
  # function to tell us how many pkgs in each library

  # check conditions up front so fails as soon as possible
  if (!is.logical(sizes)) {
    stop("'sizes' must be TRUE or FALSE.")
  }

  # get character matrix of all packages installed
  pkgs <- utils::installed.packages()

  pkg_tbl <- table(pkgs[, "LibPath"])

  # turn table into df
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if (sizes) {
    pkg_df$lib_size <- sapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      }
    )
  }

  pkg_df
}

