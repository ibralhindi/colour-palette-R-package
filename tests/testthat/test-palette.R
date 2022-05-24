test_that("Palette is valid", {
  expect_length(ibrrra_palette()(3), 3)

  expect_type(ibrrra_palette()(1), "character")
})
