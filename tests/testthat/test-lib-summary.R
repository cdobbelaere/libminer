test_that("lib_summary returns expected result", {
  # first create object to test
  res <- lib_summary()
  # check if `lib_summary()` returns a data.frane
  expect_s3_class(res, "data.frame")
  # check if `lib_summary()` returns an object with 2 columns called
  # "Library" and "n_packages"
  expect_equal(ncol(res), 2)
  expect_equal(names(res), c("Library", "n_packages"))
  # check column data types
  expect_type(res$Library, "character")
  expect_type(res$n_packages, "integer")
})

test_that("lib_summary fails appropriately", {
  # if someone calls `lib_summary()` with a non-logical argument,
  # we're telling it to throw an error.
  expect_error(lib_summary("foo"), "'sizes' must be TRUE or FALSE.")
})

test_that("sizes argument works", {
  res <- lib_summary(sizes = TRUE)
  # expect 3 columns now
  expect_equal(ncol(res), 3)
  # expect a third column to be added when `sizes = TRUE`
  expect_equal(names(res), c("Library", "n_packages", "lib_size"))
  # expect `lib_size` column to be type double
  expect_type(res$lib_size, "double")
})
