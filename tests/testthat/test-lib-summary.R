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
  # if someone calls `lib_summary()` with an argument,
  # we're telling it to throw an error ("unused argument").
  # you can use regex here. if you expect your error message to vary more,
  # you can eliminate the last argument here to be more general.
  expect_error(lib_summary("foo"), "unused argument")
})
