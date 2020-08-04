context("make-phrase")
test_that("sing a day of the song", {

  xmas2 <- read.csv("https://www.dropbox.com/s/ap2hqssese1ki4j/xmas_2.csv?dl=1")
  words <- c("a","two","three","four","five","six", "seven", "eight", "nine", "ten","eleven","twelve")
  xmas2 <- xmas2 %>%
    mutate(
      num_words = words
    )
  xmas2 <- xmas2 %>%
    mutate(
      Full.Phrase = pmap_chr(xmas2, ~make_phrase(..1,..7,..3,..4,..5,..6))
    )
  expect_equal( sing_day(xmas2, 2, Full.Phrase),
  "On the second day of Christmas, my true love sent to me,\ntwo meal points,\nand a email from Cal Poly" )


})
