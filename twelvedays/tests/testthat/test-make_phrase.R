#im not passing a plural to the item argument since i included pluralize inside make-phrase.
#even i nthe lab rmd i just used make phrase instead of using pluralize the nmake phrase.
#i  think it doesn't make that much of a difference.
context("make-phrase")
test_that("make a phrase", {

  expect_equal( make_phrase(num = 10,
                            num_word = "ten",
                            item = "lord",
                            verb = "a-leaping",
                            adjective = "",
                            location = ""), "ten lords a-leaping" )

  expect_equal( make_phrase(num = 10,
                            num_word = "five",
                            item = "ring",
                            verb = "a-leaping",
                            adjective = "",
                            location = ""), "five rings a-leaping" )


})
