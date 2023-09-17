
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer is to help you understand your libraries better,
and to learn how to write packages.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("cdobbelaere/libminer")
```

## Example

``` r
library(libminer)
lib_summary()
#>                                                                                        Library
#> 1                        /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/library
#> 2 /private/var/folders/zm/hb7kyjz94j91cvjpw6fyp4h80000gn/T/Rtmpaj77qe/temp_libpath36bb69e6dcfc
#>   n_packages
#> 1        275
#> 2          1
```

## You can also calculate library sizes.

``` r
lib_summary(sizes = TRUE)
#>                                                                                        Library
#> 1                        /Library/Frameworks/R.framework/Versions/4.3-x86_64/Resources/library
#> 2 /private/var/folders/zm/hb7kyjz94j91cvjpw6fyp4h80000gn/T/Rtmpaj77qe/temp_libpath36bb69e6dcfc
#>   n_packages   lib_size
#> 1        275 1802474427
#> 2          1      15133
```
