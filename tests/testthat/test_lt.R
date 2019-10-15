context("less than operator")
library(DeepOperators)

test_that("TRUE and TRUE is FALSE", {
  expect_false(TRUE %<% TRUE)
})

test_that("TRUE and FALSE is FALSE", {
  expect_false(TRUE %<% FALSE)
})

test_that("FALSE and TRUE is TRUE", {
  expect_true(FALSE %<% TRUE)
})
