library(testthat)

test_that("Returns correct output", {
  expect_equal(multiply(2, 3), 6)
  expect_equal(multiply(c(2, 3), 3), c(6, 9))
})

test_that("Errors if supplied with non-numeric", {
  expect_error(multiply(2, "three"))
})

test_that("Output is of expected length", {
  expect_length(multiply(2, 3), 1)
  expect_length(multiply(c(1, 2, 3), c(4, 5, 6)), 3)
})
