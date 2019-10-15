context("greater operator")
library(DeepOperators)

test_that("TRUE and TRUE is FALSE", {
  expect_false(TRUE %>>% TRUE)
})

test_that("TRUE and FALSE is TRUE", {
  expect_true(TRUE %>>% FALSE)
})

test_that("FALSE and FALSE is FALSE", {
  expect_false(FALSE %>>% FALSE)
})