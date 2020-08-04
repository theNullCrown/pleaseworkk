context("pluralizee")
test_that("pluralize given words", {

  expect_equal( pluralize_gift("Ring"), "Rings" )
  expect_equal( pluralize_gift("Belly"), "Bellies" )


})
