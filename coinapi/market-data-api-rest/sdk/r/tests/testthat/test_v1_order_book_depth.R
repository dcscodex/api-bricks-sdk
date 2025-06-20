# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test V1OrderBookDepth")

model_instance <- V1OrderBookDepth$new()

test_that("symbol_id", {
  # tests for the property `symbol_id` (character)
  # The symbol identifier.

  # uncomment below to test the property
  #expect_equal(model.instance$`symbol_id`, "EXPECTED_RESULT")
})

test_that("time_exchange", {
  # tests for the property `time_exchange` (character)
  # The exchange time of the order book.

  # uncomment below to test the property
  #expect_equal(model.instance$`time_exchange`, "EXPECTED_RESULT")
})

test_that("time_coinapi", {
  # tests for the property `time_coinapi` (character)
  # The CoinAPI time when the order book was received.

  # uncomment below to test the property
  #expect_equal(model.instance$`time_coinapi`, "EXPECTED_RESULT")
})

test_that("ask_levels", {
  # tests for the property `ask_levels` (integer)
  # The number of ask levels in the order book.

  # uncomment below to test the property
  #expect_equal(model.instance$`ask_levels`, "EXPECTED_RESULT")
})

test_that("bid_levels", {
  # tests for the property `bid_levels` (integer)
  # The number of bid levels in the order book.

  # uncomment below to test the property
  #expect_equal(model.instance$`bid_levels`, "EXPECTED_RESULT")
})

test_that("ask_depth", {
  # tests for the property `ask_depth` (numeric)
  # The depth of the ask side of the order book.

  # uncomment below to test the property
  #expect_equal(model.instance$`ask_depth`, "EXPECTED_RESULT")
})

test_that("bid_depth", {
  # tests for the property `bid_depth` (numeric)
  # The depth of the bid side of the order book.

  # uncomment below to test the property
  #expect_equal(model.instance$`bid_depth`, "EXPECTED_RESULT")
})
