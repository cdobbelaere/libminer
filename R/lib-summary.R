lib_summary <- function() {
  # function to tell us how many pkgs in each library

  # get character matrix of all packages installed
  pkgs <- utils::installed.packages()

  pkg_tbl <- table(pkgs[, "LibPath"])

  # turn table into df
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}

