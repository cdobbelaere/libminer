lib_summary <- function() {
  # function to tell us how many pkgs in each library
  pkgs <- utils::installed.packages() # gives character matrix of all packages installed
  pkg_tbl <- table(pkgs[, "LibPath"])
  # turn table into df
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}

