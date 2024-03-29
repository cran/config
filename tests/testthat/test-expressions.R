library(testthat)
test_that("expressions can use previously assigned parameters", {
  config::get("color", config = "assigned") %>%
    expect_identical("black")

  config::get("color_shape", config = "assigned") %>%
    expect_identical("black dotted")

  config::get("nested", config = "assigned") %>%
    .$nested_color_shape %>%
    expect_equal("black dotted")
})

test_that("expressions can use previously assigned parameters", {
  config::get("color", config = "assigned_error") %>%
    expect_error(".*Attempt to assign nested list value from expression..*")

  config::get("new_nested_not_found", config = "assigned_error") %>%
    expect_error(".*Attempt to assign nested list value from expression..*")
})
