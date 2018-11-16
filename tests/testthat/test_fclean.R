context("Cleaning factors")

# test that various types of inconsistencies (mimicking common data entry errors) are all cleaned as expected.
test_that("fclean cleans factor (or character)", {
  production_leftgap <- factor(c("  HIGH production", "  MED production  ",  "   MED production  ", "      low Production"))
  production_rightgap <- factor(c("high production   ", "MED pRODUction      ",  "med productION ", "LOw prOduCtion      "))
  production_mixgap <- factor(c("   high production   ", "MED pRODUction  ", "med productION ", "LOw prOduCtion  "))
  production_allcaps <- factor(c("HIGH PRODUCTION", "MED PRODUCTION", "MED PRODUCTION", "LOW PRODUCTION"))
  production_spaces <- factor(c("HIGH PRODUCTION",   "MED PRODUCTION"  ,   "MED PRODUCTION","LOW PRODUCTION"))
  production_clean <- factor(c("High Production", "Med Production", "Med Production", "Low Production"))

  expect_identical(fclean(production_leftgap), production_clean)
  expect_identical(fclean(production_rightgap), production_clean)
  expect_identical(fclean(production_mixgap), production_clean)
  expect_identical(fclean(production_allcaps), production_clean)
  expect_identical(fclean(production_spaces), production_clean)
})
