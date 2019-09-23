test_that("output has color class", {
  expect_s3_class(color(rainbow(10)), "color")
})

test_that("Length is preserved", {
  expect_length(color(rainbow(10)), 10)
})

test_that("complains when  the length is 0", {
  expect_error(clr_deutan(character(0)))
})

test_that("is_color is working", {
  expect_true(is_color(color(rainbow(10))))
  expect_false(is_color(rainbow(10)))
})

test_that("plotting returns the data invisibly", {
  expect_invisible(plot(color(rainbow(10))))
})

test_that("printing works", {
  expect_output(print(color(rainbow(10))), "<color>")
})

test_that("subsetting works", {
  colors <- color(rainbow(10))

  expect_length(colors[1:4], 4)
  expect_s3_class(colors[6:8], "color")
})