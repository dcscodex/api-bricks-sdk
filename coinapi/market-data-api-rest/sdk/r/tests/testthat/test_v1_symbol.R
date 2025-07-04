# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test V1Symbol")

model_instance <- V1Symbol$new()

test_that("symbol_id", {
  # tests for the property `symbol_id` (character)
  # The symbol identifier.

  # uncomment below to test the property
  #expect_equal(model.instance$`symbol_id`, "EXPECTED_RESULT")
})

test_that("exchange_id", {
  # tests for the property `exchange_id` (character)
  # The exchange identifier.

  # uncomment below to test the property
  #expect_equal(model.instance$`exchange_id`, "EXPECTED_RESULT")
})

test_that("symbol_type", {
  # tests for the property `symbol_type` (character)
  # The symbol type.

  # uncomment below to test the property
  #expect_equal(model.instance$`symbol_type`, "EXPECTED_RESULT")
})

test_that("asset_id_base", {
  # tests for the property `asset_id_base` (character)
  # The base asset identifier.

  # uncomment below to test the property
  #expect_equal(model.instance$`asset_id_base`, "EXPECTED_RESULT")
})

test_that("asset_id_quote", {
  # tests for the property `asset_id_quote` (character)
  # The quote asset identifier.

  # uncomment below to test the property
  #expect_equal(model.instance$`asset_id_quote`, "EXPECTED_RESULT")
})

test_that("asset_id_unit", {
  # tests for the property `asset_id_unit` (character)
  # The unit asset identifier.

  # uncomment below to test the property
  #expect_equal(model.instance$`asset_id_unit`, "EXPECTED_RESULT")
})

test_that("future_contract_unit", {
  # tests for the property `future_contract_unit` (numeric)
  # The contract unit for futures.

  # uncomment below to test the property
  #expect_equal(model.instance$`future_contract_unit`, "EXPECTED_RESULT")
})

test_that("future_contract_unit_asset", {
  # tests for the property `future_contract_unit_asset` (character)
  # The asset used as the unit for futures contract.

  # uncomment below to test the property
  #expect_equal(model.instance$`future_contract_unit_asset`, "EXPECTED_RESULT")
})

test_that("future_delivery_time", {
  # tests for the property `future_delivery_time` (character)
  # The future delivery time for futures contract.

  # uncomment below to test the property
  #expect_equal(model.instance$`future_delivery_time`, "EXPECTED_RESULT")
})

test_that("option_type_is_call", {
  # tests for the property `option_type_is_call` (character)
  # Indicates whether the option type is a call.

  # uncomment below to test the property
  #expect_equal(model.instance$`option_type_is_call`, "EXPECTED_RESULT")
})

test_that("option_strike_price", {
  # tests for the property `option_strike_price` (numeric)
  # The strike price for options.

  # uncomment below to test the property
  #expect_equal(model.instance$`option_strike_price`, "EXPECTED_RESULT")
})

test_that("option_contract_unit", {
  # tests for the property `option_contract_unit` (numeric)
  # The contract unit for options.

  # uncomment below to test the property
  #expect_equal(model.instance$`option_contract_unit`, "EXPECTED_RESULT")
})

test_that("option_exercise_style", {
  # tests for the property `option_exercise_style` (character)
  # The exercise style for options.

  # uncomment below to test the property
  #expect_equal(model.instance$`option_exercise_style`, "EXPECTED_RESULT")
})

test_that("option_expiration_time", {
  # tests for the property `option_expiration_time` (character)
  # The expiration time for options.

  # uncomment below to test the property
  #expect_equal(model.instance$`option_expiration_time`, "EXPECTED_RESULT")
})

test_that("contract_delivery_time", {
  # tests for the property `contract_delivery_time` (character)
  # The delivery time for contracts.

  # uncomment below to test the property
  #expect_equal(model.instance$`contract_delivery_time`, "EXPECTED_RESULT")
})

test_that("contract_unit", {
  # tests for the property `contract_unit` (numeric)
  # The contract unit for contracts.

  # uncomment below to test the property
  #expect_equal(model.instance$`contract_unit`, "EXPECTED_RESULT")
})

test_that("contract_unit_asset", {
  # tests for the property `contract_unit_asset` (character)
  # The asset used as the unit for contracts.

  # uncomment below to test the property
  #expect_equal(model.instance$`contract_unit_asset`, "EXPECTED_RESULT")
})

test_that("contract_id", {
  # tests for the property `contract_id` (character)
  # The contract identifier.

  # uncomment below to test the property
  #expect_equal(model.instance$`contract_id`, "EXPECTED_RESULT")
})

test_that("contract_display_name", {
  # tests for the property `contract_display_name` (character)
  # The display name of the contract.

  # uncomment below to test the property
  #expect_equal(model.instance$`contract_display_name`, "EXPECTED_RESULT")
})

test_that("contract_display_description", {
  # tests for the property `contract_display_description` (character)
  # The display description of the contract.

  # uncomment below to test the property
  #expect_equal(model.instance$`contract_display_description`, "EXPECTED_RESULT")
})

test_that("data_start", {
  # tests for the property `data_start` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`data_start`, "EXPECTED_RESULT")
})

test_that("data_end", {
  # tests for the property `data_end` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`data_end`, "EXPECTED_RESULT")
})

test_that("data_quote_start", {
  # tests for the property `data_quote_start` (character)
  # The start date of quote data.

  # uncomment below to test the property
  #expect_equal(model.instance$`data_quote_start`, "EXPECTED_RESULT")
})

test_that("data_quote_end", {
  # tests for the property `data_quote_end` (character)
  # The end date of quote data.

  # uncomment below to test the property
  #expect_equal(model.instance$`data_quote_end`, "EXPECTED_RESULT")
})

test_that("data_orderbook_start", {
  # tests for the property `data_orderbook_start` (character)
  # The start date of order book data.

  # uncomment below to test the property
  #expect_equal(model.instance$`data_orderbook_start`, "EXPECTED_RESULT")
})

test_that("data_orderbook_end", {
  # tests for the property `data_orderbook_end` (character)
  # The end date of order book data.

  # uncomment below to test the property
  #expect_equal(model.instance$`data_orderbook_end`, "EXPECTED_RESULT")
})

test_that("data_trade_start", {
  # tests for the property `data_trade_start` (character)
  # The start date of trade data.

  # uncomment below to test the property
  #expect_equal(model.instance$`data_trade_start`, "EXPECTED_RESULT")
})

test_that("data_trade_end", {
  # tests for the property `data_trade_end` (character)
  # The end date of trade data.

  # uncomment below to test the property
  #expect_equal(model.instance$`data_trade_end`, "EXPECTED_RESULT")
})

test_that("index_id", {
  # tests for the property `index_id` (character)
  # The index identifier.

  # uncomment below to test the property
  #expect_equal(model.instance$`index_id`, "EXPECTED_RESULT")
})

test_that("index_display_name", {
  # tests for the property `index_display_name` (character)
  # The display name of the index.

  # uncomment below to test the property
  #expect_equal(model.instance$`index_display_name`, "EXPECTED_RESULT")
})

test_that("index_display_description", {
  # tests for the property `index_display_description` (character)
  # The display description of the index.

  # uncomment below to test the property
  #expect_equal(model.instance$`index_display_description`, "EXPECTED_RESULT")
})

test_that("volume_1hrs", {
  # tests for the property `volume_1hrs` (numeric)
  # The volume in the last 1 hour.

  # uncomment below to test the property
  #expect_equal(model.instance$`volume_1hrs`, "EXPECTED_RESULT")
})

test_that("volume_1hrs_usd", {
  # tests for the property `volume_1hrs_usd` (numeric)
  # The volume in USD in the last 1 hour.

  # uncomment below to test the property
  #expect_equal(model.instance$`volume_1hrs_usd`, "EXPECTED_RESULT")
})

test_that("volume_1day", {
  # tests for the property `volume_1day` (numeric)
  # The volume in the last 1 day.

  # uncomment below to test the property
  #expect_equal(model.instance$`volume_1day`, "EXPECTED_RESULT")
})

test_that("volume_1day_usd", {
  # tests for the property `volume_1day_usd` (numeric)
  # The volume in USD in the last 1 day.

  # uncomment below to test the property
  #expect_equal(model.instance$`volume_1day_usd`, "EXPECTED_RESULT")
})

test_that("volume_1mth", {
  # tests for the property `volume_1mth` (numeric)
  # The volume in the last 1 month.

  # uncomment below to test the property
  #expect_equal(model.instance$`volume_1mth`, "EXPECTED_RESULT")
})

test_that("volume_1mth_usd", {
  # tests for the property `volume_1mth_usd` (numeric)
  # The volume in USD in the last 1 month.

  # uncomment below to test the property
  #expect_equal(model.instance$`volume_1mth_usd`, "EXPECTED_RESULT")
})

test_that("price", {
  # tests for the property `price` (numeric)
  # The price.

  # uncomment below to test the property
  #expect_equal(model.instance$`price`, "EXPECTED_RESULT")
})

test_that("symbol_id_exchange", {
  # tests for the property `symbol_id_exchange` (character)
  # The symbol identifier in the exchange.

  # uncomment below to test the property
  #expect_equal(model.instance$`symbol_id_exchange`, "EXPECTED_RESULT")
})

test_that("asset_id_base_exchange", {
  # tests for the property `asset_id_base_exchange` (character)
  # The base asset identifier in the exchange.

  # uncomment below to test the property
  #expect_equal(model.instance$`asset_id_base_exchange`, "EXPECTED_RESULT")
})

test_that("asset_id_quote_exchange", {
  # tests for the property `asset_id_quote_exchange` (character)
  # The quote asset identifier in the exchange.

  # uncomment below to test the property
  #expect_equal(model.instance$`asset_id_quote_exchange`, "EXPECTED_RESULT")
})

test_that("price_precision", {
  # tests for the property `price_precision` (numeric)
  # The price precision.

  # uncomment below to test the property
  #expect_equal(model.instance$`price_precision`, "EXPECTED_RESULT")
})

test_that("size_precision", {
  # tests for the property `size_precision` (numeric)
  # The size precision.

  # uncomment below to test the property
  #expect_equal(model.instance$`size_precision`, "EXPECTED_RESULT")
})

test_that("raw_kvp", {
  # tests for the property `raw_kvp` (map(character))
  # Not normalized raw kvp data.

  # uncomment below to test the property
  #expect_equal(model.instance$`raw_kvp`, "EXPECTED_RESULT")
})

test_that("volume_to_usd", {
  # tests for the property `volume_to_usd` (numeric)
  # Volume unit in USD.

  # uncomment below to test the property
  #expect_equal(model.instance$`volume_to_usd`, "EXPECTED_RESULT")
})
