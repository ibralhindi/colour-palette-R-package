test_that("direction is valid", {
  expect_error(scale_colour_ibrrra_d(direction = 'a'))
  expect_error(scale_fill_ibrrra_d(direction = 'b'))
})
