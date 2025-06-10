#' Create a new V1Symbol
#'
#' @description
#' Represents a symbol data model.
#'
#' @docType class
#' @title V1Symbol
#' @description V1Symbol Class
#' @format An \code{R6Class} generator object
#' @field symbol_id The symbol identifier. character [optional]
#' @field exchange_id The exchange identifier. character [optional]
#' @field symbol_type The symbol type. character [optional]
#' @field asset_id_base The base asset identifier. character [optional]
#' @field asset_id_quote The quote asset identifier. character [optional]
#' @field asset_id_unit The unit asset identifier. character [optional]
#' @field future_contract_unit The contract unit for futures. numeric [optional]
#' @field future_contract_unit_asset The asset used as the unit for futures contract. character [optional]
#' @field future_delivery_time The future delivery time for futures contract. character [optional]
#' @field option_type_is_call Indicates whether the option type is a call. character [optional]
#' @field option_strike_price The strike price for options. numeric [optional]
#' @field option_contract_unit The contract unit for options. numeric [optional]
#' @field option_exercise_style The exercise style for options. character [optional]
#' @field option_expiration_time The expiration time for options. character [optional]
#' @field contract_delivery_time The delivery time for contracts. character [optional]
#' @field contract_unit The contract unit for contracts. numeric [optional]
#' @field contract_unit_asset The asset used as the unit for contracts. character [optional]
#' @field contract_id The contract identifier. character [optional]
#' @field contract_display_name The display name of the contract. character [optional]
#' @field contract_display_description The display description of the contract. character [optional]
#' @field data_start  character [optional]
#' @field data_end  character [optional]
#' @field data_quote_start The start date of quote data. character [optional]
#' @field data_quote_end The end date of quote data. character [optional]
#' @field data_orderbook_start The start date of order book data. character [optional]
#' @field data_orderbook_end The end date of order book data. character [optional]
#' @field data_trade_start The start date of trade data. character [optional]
#' @field data_trade_end The end date of trade data. character [optional]
#' @field index_id The index identifier. character [optional]
#' @field index_display_name The display name of the index. character [optional]
#' @field index_display_description The display description of the index. character [optional]
#' @field volume_1hrs The volume in the last 1 hour. numeric [optional]
#' @field volume_1hrs_usd The volume in USD in the last 1 hour. numeric [optional]
#' @field volume_1day The volume in the last 1 day. numeric [optional]
#' @field volume_1day_usd The volume in USD in the last 1 day. numeric [optional]
#' @field volume_1mth The volume in the last 1 month. numeric [optional]
#' @field volume_1mth_usd The volume in USD in the last 1 month. numeric [optional]
#' @field price The price. numeric [optional]
#' @field symbol_id_exchange The symbol identifier in the exchange. character [optional]
#' @field asset_id_base_exchange The base asset identifier in the exchange. character [optional]
#' @field asset_id_quote_exchange The quote asset identifier in the exchange. character [optional]
#' @field price_precision The price precision. numeric [optional]
#' @field size_precision The size precision. numeric [optional]
#' @field raw_kvp Not normalized raw kvp data. named list(character) [optional]
#' @field volume_to_usd Volume unit in USD. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1Symbol <- R6::R6Class(
  "V1Symbol",
  public = list(
    `symbol_id` = NULL,
    `exchange_id` = NULL,
    `symbol_type` = NULL,
    `asset_id_base` = NULL,
    `asset_id_quote` = NULL,
    `asset_id_unit` = NULL,
    `future_contract_unit` = NULL,
    `future_contract_unit_asset` = NULL,
    `future_delivery_time` = NULL,
    `option_type_is_call` = NULL,
    `option_strike_price` = NULL,
    `option_contract_unit` = NULL,
    `option_exercise_style` = NULL,
    `option_expiration_time` = NULL,
    `contract_delivery_time` = NULL,
    `contract_unit` = NULL,
    `contract_unit_asset` = NULL,
    `contract_id` = NULL,
    `contract_display_name` = NULL,
    `contract_display_description` = NULL,
    `data_start` = NULL,
    `data_end` = NULL,
    `data_quote_start` = NULL,
    `data_quote_end` = NULL,
    `data_orderbook_start` = NULL,
    `data_orderbook_end` = NULL,
    `data_trade_start` = NULL,
    `data_trade_end` = NULL,
    `index_id` = NULL,
    `index_display_name` = NULL,
    `index_display_description` = NULL,
    `volume_1hrs` = NULL,
    `volume_1hrs_usd` = NULL,
    `volume_1day` = NULL,
    `volume_1day_usd` = NULL,
    `volume_1mth` = NULL,
    `volume_1mth_usd` = NULL,
    `price` = NULL,
    `symbol_id_exchange` = NULL,
    `asset_id_base_exchange` = NULL,
    `asset_id_quote_exchange` = NULL,
    `price_precision` = NULL,
    `size_precision` = NULL,
    `raw_kvp` = NULL,
    `volume_to_usd` = NULL,

    #' @description
    #' Initialize a new V1Symbol class.
    #'
    #' @param symbol_id The symbol identifier.
    #' @param exchange_id The exchange identifier.
    #' @param symbol_type The symbol type.
    #' @param asset_id_base The base asset identifier.
    #' @param asset_id_quote The quote asset identifier.
    #' @param asset_id_unit The unit asset identifier.
    #' @param future_contract_unit The contract unit for futures.
    #' @param future_contract_unit_asset The asset used as the unit for futures contract.
    #' @param future_delivery_time The future delivery time for futures contract.
    #' @param option_type_is_call Indicates whether the option type is a call.
    #' @param option_strike_price The strike price for options.
    #' @param option_contract_unit The contract unit for options.
    #' @param option_exercise_style The exercise style for options.
    #' @param option_expiration_time The expiration time for options.
    #' @param contract_delivery_time The delivery time for contracts.
    #' @param contract_unit The contract unit for contracts.
    #' @param contract_unit_asset The asset used as the unit for contracts.
    #' @param contract_id The contract identifier.
    #' @param contract_display_name The display name of the contract.
    #' @param contract_display_description The display description of the contract.
    #' @param data_start data_start
    #' @param data_end data_end
    #' @param data_quote_start The start date of quote data.
    #' @param data_quote_end The end date of quote data.
    #' @param data_orderbook_start The start date of order book data.
    #' @param data_orderbook_end The end date of order book data.
    #' @param data_trade_start The start date of trade data.
    #' @param data_trade_end The end date of trade data.
    #' @param index_id The index identifier.
    #' @param index_display_name The display name of the index.
    #' @param index_display_description The display description of the index.
    #' @param volume_1hrs The volume in the last 1 hour.
    #' @param volume_1hrs_usd The volume in USD in the last 1 hour.
    #' @param volume_1day The volume in the last 1 day.
    #' @param volume_1day_usd The volume in USD in the last 1 day.
    #' @param volume_1mth The volume in the last 1 month.
    #' @param volume_1mth_usd The volume in USD in the last 1 month.
    #' @param price The price.
    #' @param symbol_id_exchange The symbol identifier in the exchange.
    #' @param asset_id_base_exchange The base asset identifier in the exchange.
    #' @param asset_id_quote_exchange The quote asset identifier in the exchange.
    #' @param price_precision The price precision.
    #' @param size_precision The size precision.
    #' @param raw_kvp Not normalized raw kvp data.
    #' @param volume_to_usd Volume unit in USD.
    #' @param ... Other optional arguments.
    initialize = function(`symbol_id` = NULL, `exchange_id` = NULL, `symbol_type` = NULL, `asset_id_base` = NULL, `asset_id_quote` = NULL, `asset_id_unit` = NULL, `future_contract_unit` = NULL, `future_contract_unit_asset` = NULL, `future_delivery_time` = NULL, `option_type_is_call` = NULL, `option_strike_price` = NULL, `option_contract_unit` = NULL, `option_exercise_style` = NULL, `option_expiration_time` = NULL, `contract_delivery_time` = NULL, `contract_unit` = NULL, `contract_unit_asset` = NULL, `contract_id` = NULL, `contract_display_name` = NULL, `contract_display_description` = NULL, `data_start` = NULL, `data_end` = NULL, `data_quote_start` = NULL, `data_quote_end` = NULL, `data_orderbook_start` = NULL, `data_orderbook_end` = NULL, `data_trade_start` = NULL, `data_trade_end` = NULL, `index_id` = NULL, `index_display_name` = NULL, `index_display_description` = NULL, `volume_1hrs` = NULL, `volume_1hrs_usd` = NULL, `volume_1day` = NULL, `volume_1day_usd` = NULL, `volume_1mth` = NULL, `volume_1mth_usd` = NULL, `price` = NULL, `symbol_id_exchange` = NULL, `asset_id_base_exchange` = NULL, `asset_id_quote_exchange` = NULL, `price_precision` = NULL, `size_precision` = NULL, `raw_kvp` = NULL, `volume_to_usd` = NULL, ...) {
      if (!is.null(`symbol_id`)) {
        if (!(is.character(`symbol_id`) && length(`symbol_id`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id`. Must be a string:", `symbol_id`))
        }
        self$`symbol_id` <- `symbol_id`
      }
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`symbol_type`)) {
        if (!(is.character(`symbol_type`) && length(`symbol_type`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_type`. Must be a string:", `symbol_type`))
        }
        self$`symbol_type` <- `symbol_type`
      }
      if (!is.null(`asset_id_base`)) {
        if (!(is.character(`asset_id_base`) && length(`asset_id_base`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_base`. Must be a string:", `asset_id_base`))
        }
        self$`asset_id_base` <- `asset_id_base`
      }
      if (!is.null(`asset_id_quote`)) {
        if (!(is.character(`asset_id_quote`) && length(`asset_id_quote`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_quote`. Must be a string:", `asset_id_quote`))
        }
        self$`asset_id_quote` <- `asset_id_quote`
      }
      if (!is.null(`asset_id_unit`)) {
        if (!(is.character(`asset_id_unit`) && length(`asset_id_unit`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_unit`. Must be a string:", `asset_id_unit`))
        }
        self$`asset_id_unit` <- `asset_id_unit`
      }
      if (!is.null(`future_contract_unit`)) {
        if (!(is.numeric(`future_contract_unit`) && length(`future_contract_unit`) == 1)) {
          stop(paste("Error! Invalid data for `future_contract_unit`. Must be a number:", `future_contract_unit`))
        }
        self$`future_contract_unit` <- `future_contract_unit`
      }
      if (!is.null(`future_contract_unit_asset`)) {
        if (!(is.character(`future_contract_unit_asset`) && length(`future_contract_unit_asset`) == 1)) {
          stop(paste("Error! Invalid data for `future_contract_unit_asset`. Must be a string:", `future_contract_unit_asset`))
        }
        self$`future_contract_unit_asset` <- `future_contract_unit_asset`
      }
      if (!is.null(`future_delivery_time`)) {
        if (!is.character(`future_delivery_time`)) {
          stop(paste("Error! Invalid data for `future_delivery_time`. Must be a string:", `future_delivery_time`))
        }
        self$`future_delivery_time` <- `future_delivery_time`
      }
      if (!is.null(`option_type_is_call`)) {
        if (!(is.logical(`option_type_is_call`) && length(`option_type_is_call`) == 1)) {
          stop(paste("Error! Invalid data for `option_type_is_call`. Must be a boolean:", `option_type_is_call`))
        }
        self$`option_type_is_call` <- `option_type_is_call`
      }
      if (!is.null(`option_strike_price`)) {
        if (!(is.numeric(`option_strike_price`) && length(`option_strike_price`) == 1)) {
          stop(paste("Error! Invalid data for `option_strike_price`. Must be a number:", `option_strike_price`))
        }
        self$`option_strike_price` <- `option_strike_price`
      }
      if (!is.null(`option_contract_unit`)) {
        if (!(is.numeric(`option_contract_unit`) && length(`option_contract_unit`) == 1)) {
          stop(paste("Error! Invalid data for `option_contract_unit`. Must be a number:", `option_contract_unit`))
        }
        self$`option_contract_unit` <- `option_contract_unit`
      }
      if (!is.null(`option_exercise_style`)) {
        if (!(is.character(`option_exercise_style`) && length(`option_exercise_style`) == 1)) {
          stop(paste("Error! Invalid data for `option_exercise_style`. Must be a string:", `option_exercise_style`))
        }
        self$`option_exercise_style` <- `option_exercise_style`
      }
      if (!is.null(`option_expiration_time`)) {
        if (!is.character(`option_expiration_time`)) {
          stop(paste("Error! Invalid data for `option_expiration_time`. Must be a string:", `option_expiration_time`))
        }
        self$`option_expiration_time` <- `option_expiration_time`
      }
      if (!is.null(`contract_delivery_time`)) {
        if (!is.character(`contract_delivery_time`)) {
          stop(paste("Error! Invalid data for `contract_delivery_time`. Must be a string:", `contract_delivery_time`))
        }
        self$`contract_delivery_time` <- `contract_delivery_time`
      }
      if (!is.null(`contract_unit`)) {
        if (!(is.numeric(`contract_unit`) && length(`contract_unit`) == 1)) {
          stop(paste("Error! Invalid data for `contract_unit`. Must be a number:", `contract_unit`))
        }
        self$`contract_unit` <- `contract_unit`
      }
      if (!is.null(`contract_unit_asset`)) {
        if (!(is.character(`contract_unit_asset`) && length(`contract_unit_asset`) == 1)) {
          stop(paste("Error! Invalid data for `contract_unit_asset`. Must be a string:", `contract_unit_asset`))
        }
        self$`contract_unit_asset` <- `contract_unit_asset`
      }
      if (!is.null(`contract_id`)) {
        if (!(is.character(`contract_id`) && length(`contract_id`) == 1)) {
          stop(paste("Error! Invalid data for `contract_id`. Must be a string:", `contract_id`))
        }
        self$`contract_id` <- `contract_id`
      }
      if (!is.null(`contract_display_name`)) {
        if (!(is.character(`contract_display_name`) && length(`contract_display_name`) == 1)) {
          stop(paste("Error! Invalid data for `contract_display_name`. Must be a string:", `contract_display_name`))
        }
        self$`contract_display_name` <- `contract_display_name`
      }
      if (!is.null(`contract_display_description`)) {
        if (!(is.character(`contract_display_description`) && length(`contract_display_description`) == 1)) {
          stop(paste("Error! Invalid data for `contract_display_description`. Must be a string:", `contract_display_description`))
        }
        self$`contract_display_description` <- `contract_display_description`
      }
      if (!is.null(`data_start`)) {
        if (!(is.character(`data_start`) && length(`data_start`) == 1)) {
          stop(paste("Error! Invalid data for `data_start`. Must be a string:", `data_start`))
        }
        self$`data_start` <- `data_start`
      }
      if (!is.null(`data_end`)) {
        if (!(is.character(`data_end`) && length(`data_end`) == 1)) {
          stop(paste("Error! Invalid data for `data_end`. Must be a string:", `data_end`))
        }
        self$`data_end` <- `data_end`
      }
      if (!is.null(`data_quote_start`)) {
        if (!is.character(`data_quote_start`)) {
          stop(paste("Error! Invalid data for `data_quote_start`. Must be a string:", `data_quote_start`))
        }
        self$`data_quote_start` <- `data_quote_start`
      }
      if (!is.null(`data_quote_end`)) {
        if (!is.character(`data_quote_end`)) {
          stop(paste("Error! Invalid data for `data_quote_end`. Must be a string:", `data_quote_end`))
        }
        self$`data_quote_end` <- `data_quote_end`
      }
      if (!is.null(`data_orderbook_start`)) {
        if (!is.character(`data_orderbook_start`)) {
          stop(paste("Error! Invalid data for `data_orderbook_start`. Must be a string:", `data_orderbook_start`))
        }
        self$`data_orderbook_start` <- `data_orderbook_start`
      }
      if (!is.null(`data_orderbook_end`)) {
        if (!is.character(`data_orderbook_end`)) {
          stop(paste("Error! Invalid data for `data_orderbook_end`. Must be a string:", `data_orderbook_end`))
        }
        self$`data_orderbook_end` <- `data_orderbook_end`
      }
      if (!is.null(`data_trade_start`)) {
        if (!is.character(`data_trade_start`)) {
          stop(paste("Error! Invalid data for `data_trade_start`. Must be a string:", `data_trade_start`))
        }
        self$`data_trade_start` <- `data_trade_start`
      }
      if (!is.null(`data_trade_end`)) {
        if (!is.character(`data_trade_end`)) {
          stop(paste("Error! Invalid data for `data_trade_end`. Must be a string:", `data_trade_end`))
        }
        self$`data_trade_end` <- `data_trade_end`
      }
      if (!is.null(`index_id`)) {
        if (!(is.character(`index_id`) && length(`index_id`) == 1)) {
          stop(paste("Error! Invalid data for `index_id`. Must be a string:", `index_id`))
        }
        self$`index_id` <- `index_id`
      }
      if (!is.null(`index_display_name`)) {
        if (!(is.character(`index_display_name`) && length(`index_display_name`) == 1)) {
          stop(paste("Error! Invalid data for `index_display_name`. Must be a string:", `index_display_name`))
        }
        self$`index_display_name` <- `index_display_name`
      }
      if (!is.null(`index_display_description`)) {
        if (!(is.character(`index_display_description`) && length(`index_display_description`) == 1)) {
          stop(paste("Error! Invalid data for `index_display_description`. Must be a string:", `index_display_description`))
        }
        self$`index_display_description` <- `index_display_description`
      }
      if (!is.null(`volume_1hrs`)) {
        if (!(is.numeric(`volume_1hrs`) && length(`volume_1hrs`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1hrs`. Must be a number:", `volume_1hrs`))
        }
        self$`volume_1hrs` <- `volume_1hrs`
      }
      if (!is.null(`volume_1hrs_usd`)) {
        if (!(is.numeric(`volume_1hrs_usd`) && length(`volume_1hrs_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1hrs_usd`. Must be a number:", `volume_1hrs_usd`))
        }
        self$`volume_1hrs_usd` <- `volume_1hrs_usd`
      }
      if (!is.null(`volume_1day`)) {
        if (!(is.numeric(`volume_1day`) && length(`volume_1day`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1day`. Must be a number:", `volume_1day`))
        }
        self$`volume_1day` <- `volume_1day`
      }
      if (!is.null(`volume_1day_usd`)) {
        if (!(is.numeric(`volume_1day_usd`) && length(`volume_1day_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1day_usd`. Must be a number:", `volume_1day_usd`))
        }
        self$`volume_1day_usd` <- `volume_1day_usd`
      }
      if (!is.null(`volume_1mth`)) {
        if (!(is.numeric(`volume_1mth`) && length(`volume_1mth`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1mth`. Must be a number:", `volume_1mth`))
        }
        self$`volume_1mth` <- `volume_1mth`
      }
      if (!is.null(`volume_1mth_usd`)) {
        if (!(is.numeric(`volume_1mth_usd`) && length(`volume_1mth_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1mth_usd`. Must be a number:", `volume_1mth_usd`))
        }
        self$`volume_1mth_usd` <- `volume_1mth_usd`
      }
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`symbol_id_exchange`)) {
        if (!(is.character(`symbol_id_exchange`) && length(`symbol_id_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id_exchange`. Must be a string:", `symbol_id_exchange`))
        }
        self$`symbol_id_exchange` <- `symbol_id_exchange`
      }
      if (!is.null(`asset_id_base_exchange`)) {
        if (!(is.character(`asset_id_base_exchange`) && length(`asset_id_base_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_base_exchange`. Must be a string:", `asset_id_base_exchange`))
        }
        self$`asset_id_base_exchange` <- `asset_id_base_exchange`
      }
      if (!is.null(`asset_id_quote_exchange`)) {
        if (!(is.character(`asset_id_quote_exchange`) && length(`asset_id_quote_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_quote_exchange`. Must be a string:", `asset_id_quote_exchange`))
        }
        self$`asset_id_quote_exchange` <- `asset_id_quote_exchange`
      }
      if (!is.null(`price_precision`)) {
        if (!(is.numeric(`price_precision`) && length(`price_precision`) == 1)) {
          stop(paste("Error! Invalid data for `price_precision`. Must be a number:", `price_precision`))
        }
        self$`price_precision` <- `price_precision`
      }
      if (!is.null(`size_precision`)) {
        if (!(is.numeric(`size_precision`) && length(`size_precision`) == 1)) {
          stop(paste("Error! Invalid data for `size_precision`. Must be a number:", `size_precision`))
        }
        self$`size_precision` <- `size_precision`
      }
      if (!is.null(`raw_kvp`)) {
        stopifnot(is.vector(`raw_kvp`), length(`raw_kvp`) != 0)
        sapply(`raw_kvp`, function(x) stopifnot(is.character(x)))
        self$`raw_kvp` <- `raw_kvp`
      }
      if (!is.null(`volume_to_usd`)) {
        if (!(is.numeric(`volume_to_usd`) && length(`volume_to_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_to_usd`. Must be a number:", `volume_to_usd`))
        }
        self$`volume_to_usd` <- `volume_to_usd`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return V1Symbol as a base R list.
    #' @examples
    #' # convert array of V1Symbol (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert V1Symbol to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1SymbolObject <- list()
      if (!is.null(self$`symbol_id`)) {
        V1SymbolObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`exchange_id`)) {
        V1SymbolObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`symbol_type`)) {
        V1SymbolObject[["symbol_type"]] <-
          self$`symbol_type`
      }
      if (!is.null(self$`asset_id_base`)) {
        V1SymbolObject[["asset_id_base"]] <-
          self$`asset_id_base`
      }
      if (!is.null(self$`asset_id_quote`)) {
        V1SymbolObject[["asset_id_quote"]] <-
          self$`asset_id_quote`
      }
      if (!is.null(self$`asset_id_unit`)) {
        V1SymbolObject[["asset_id_unit"]] <-
          self$`asset_id_unit`
      }
      if (!is.null(self$`future_contract_unit`)) {
        V1SymbolObject[["future_contract_unit"]] <-
          self$`future_contract_unit`
      }
      if (!is.null(self$`future_contract_unit_asset`)) {
        V1SymbolObject[["future_contract_unit_asset"]] <-
          self$`future_contract_unit_asset`
      }
      if (!is.null(self$`future_delivery_time`)) {
        V1SymbolObject[["future_delivery_time"]] <-
          self$`future_delivery_time`
      }
      if (!is.null(self$`option_type_is_call`)) {
        V1SymbolObject[["option_type_is_call"]] <-
          self$`option_type_is_call`
      }
      if (!is.null(self$`option_strike_price`)) {
        V1SymbolObject[["option_strike_price"]] <-
          self$`option_strike_price`
      }
      if (!is.null(self$`option_contract_unit`)) {
        V1SymbolObject[["option_contract_unit"]] <-
          self$`option_contract_unit`
      }
      if (!is.null(self$`option_exercise_style`)) {
        V1SymbolObject[["option_exercise_style"]] <-
          self$`option_exercise_style`
      }
      if (!is.null(self$`option_expiration_time`)) {
        V1SymbolObject[["option_expiration_time"]] <-
          self$`option_expiration_time`
      }
      if (!is.null(self$`contract_delivery_time`)) {
        V1SymbolObject[["contract_delivery_time"]] <-
          self$`contract_delivery_time`
      }
      if (!is.null(self$`contract_unit`)) {
        V1SymbolObject[["contract_unit"]] <-
          self$`contract_unit`
      }
      if (!is.null(self$`contract_unit_asset`)) {
        V1SymbolObject[["contract_unit_asset"]] <-
          self$`contract_unit_asset`
      }
      if (!is.null(self$`contract_id`)) {
        V1SymbolObject[["contract_id"]] <-
          self$`contract_id`
      }
      if (!is.null(self$`contract_display_name`)) {
        V1SymbolObject[["contract_display_name"]] <-
          self$`contract_display_name`
      }
      if (!is.null(self$`contract_display_description`)) {
        V1SymbolObject[["contract_display_description"]] <-
          self$`contract_display_description`
      }
      if (!is.null(self$`data_start`)) {
        V1SymbolObject[["data_start"]] <-
          self$`data_start`
      }
      if (!is.null(self$`data_end`)) {
        V1SymbolObject[["data_end"]] <-
          self$`data_end`
      }
      if (!is.null(self$`data_quote_start`)) {
        V1SymbolObject[["data_quote_start"]] <-
          self$`data_quote_start`
      }
      if (!is.null(self$`data_quote_end`)) {
        V1SymbolObject[["data_quote_end"]] <-
          self$`data_quote_end`
      }
      if (!is.null(self$`data_orderbook_start`)) {
        V1SymbolObject[["data_orderbook_start"]] <-
          self$`data_orderbook_start`
      }
      if (!is.null(self$`data_orderbook_end`)) {
        V1SymbolObject[["data_orderbook_end"]] <-
          self$`data_orderbook_end`
      }
      if (!is.null(self$`data_trade_start`)) {
        V1SymbolObject[["data_trade_start"]] <-
          self$`data_trade_start`
      }
      if (!is.null(self$`data_trade_end`)) {
        V1SymbolObject[["data_trade_end"]] <-
          self$`data_trade_end`
      }
      if (!is.null(self$`index_id`)) {
        V1SymbolObject[["index_id"]] <-
          self$`index_id`
      }
      if (!is.null(self$`index_display_name`)) {
        V1SymbolObject[["index_display_name"]] <-
          self$`index_display_name`
      }
      if (!is.null(self$`index_display_description`)) {
        V1SymbolObject[["index_display_description"]] <-
          self$`index_display_description`
      }
      if (!is.null(self$`volume_1hrs`)) {
        V1SymbolObject[["volume_1hrs"]] <-
          self$`volume_1hrs`
      }
      if (!is.null(self$`volume_1hrs_usd`)) {
        V1SymbolObject[["volume_1hrs_usd"]] <-
          self$`volume_1hrs_usd`
      }
      if (!is.null(self$`volume_1day`)) {
        V1SymbolObject[["volume_1day"]] <-
          self$`volume_1day`
      }
      if (!is.null(self$`volume_1day_usd`)) {
        V1SymbolObject[["volume_1day_usd"]] <-
          self$`volume_1day_usd`
      }
      if (!is.null(self$`volume_1mth`)) {
        V1SymbolObject[["volume_1mth"]] <-
          self$`volume_1mth`
      }
      if (!is.null(self$`volume_1mth_usd`)) {
        V1SymbolObject[["volume_1mth_usd"]] <-
          self$`volume_1mth_usd`
      }
      if (!is.null(self$`price`)) {
        V1SymbolObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`symbol_id_exchange`)) {
        V1SymbolObject[["symbol_id_exchange"]] <-
          self$`symbol_id_exchange`
      }
      if (!is.null(self$`asset_id_base_exchange`)) {
        V1SymbolObject[["asset_id_base_exchange"]] <-
          self$`asset_id_base_exchange`
      }
      if (!is.null(self$`asset_id_quote_exchange`)) {
        V1SymbolObject[["asset_id_quote_exchange"]] <-
          self$`asset_id_quote_exchange`
      }
      if (!is.null(self$`price_precision`)) {
        V1SymbolObject[["price_precision"]] <-
          self$`price_precision`
      }
      if (!is.null(self$`size_precision`)) {
        V1SymbolObject[["size_precision"]] <-
          self$`size_precision`
      }
      if (!is.null(self$`raw_kvp`)) {
        V1SymbolObject[["raw_kvp"]] <-
          self$`raw_kvp`
      }
      if (!is.null(self$`volume_to_usd`)) {
        V1SymbolObject[["volume_to_usd"]] <-
          self$`volume_to_usd`
      }
      return(V1SymbolObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Symbol
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Symbol
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol_id`)) {
        self$`symbol_id` <- this_object$`symbol_id`
      }
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`symbol_type`)) {
        self$`symbol_type` <- this_object$`symbol_type`
      }
      if (!is.null(this_object$`asset_id_base`)) {
        self$`asset_id_base` <- this_object$`asset_id_base`
      }
      if (!is.null(this_object$`asset_id_quote`)) {
        self$`asset_id_quote` <- this_object$`asset_id_quote`
      }
      if (!is.null(this_object$`asset_id_unit`)) {
        self$`asset_id_unit` <- this_object$`asset_id_unit`
      }
      if (!is.null(this_object$`future_contract_unit`)) {
        self$`future_contract_unit` <- this_object$`future_contract_unit`
      }
      if (!is.null(this_object$`future_contract_unit_asset`)) {
        self$`future_contract_unit_asset` <- this_object$`future_contract_unit_asset`
      }
      if (!is.null(this_object$`future_delivery_time`)) {
        self$`future_delivery_time` <- this_object$`future_delivery_time`
      }
      if (!is.null(this_object$`option_type_is_call`)) {
        self$`option_type_is_call` <- this_object$`option_type_is_call`
      }
      if (!is.null(this_object$`option_strike_price`)) {
        self$`option_strike_price` <- this_object$`option_strike_price`
      }
      if (!is.null(this_object$`option_contract_unit`)) {
        self$`option_contract_unit` <- this_object$`option_contract_unit`
      }
      if (!is.null(this_object$`option_exercise_style`)) {
        self$`option_exercise_style` <- this_object$`option_exercise_style`
      }
      if (!is.null(this_object$`option_expiration_time`)) {
        self$`option_expiration_time` <- this_object$`option_expiration_time`
      }
      if (!is.null(this_object$`contract_delivery_time`)) {
        self$`contract_delivery_time` <- this_object$`contract_delivery_time`
      }
      if (!is.null(this_object$`contract_unit`)) {
        self$`contract_unit` <- this_object$`contract_unit`
      }
      if (!is.null(this_object$`contract_unit_asset`)) {
        self$`contract_unit_asset` <- this_object$`contract_unit_asset`
      }
      if (!is.null(this_object$`contract_id`)) {
        self$`contract_id` <- this_object$`contract_id`
      }
      if (!is.null(this_object$`contract_display_name`)) {
        self$`contract_display_name` <- this_object$`contract_display_name`
      }
      if (!is.null(this_object$`contract_display_description`)) {
        self$`contract_display_description` <- this_object$`contract_display_description`
      }
      if (!is.null(this_object$`data_start`)) {
        self$`data_start` <- this_object$`data_start`
      }
      if (!is.null(this_object$`data_end`)) {
        self$`data_end` <- this_object$`data_end`
      }
      if (!is.null(this_object$`data_quote_start`)) {
        self$`data_quote_start` <- this_object$`data_quote_start`
      }
      if (!is.null(this_object$`data_quote_end`)) {
        self$`data_quote_end` <- this_object$`data_quote_end`
      }
      if (!is.null(this_object$`data_orderbook_start`)) {
        self$`data_orderbook_start` <- this_object$`data_orderbook_start`
      }
      if (!is.null(this_object$`data_orderbook_end`)) {
        self$`data_orderbook_end` <- this_object$`data_orderbook_end`
      }
      if (!is.null(this_object$`data_trade_start`)) {
        self$`data_trade_start` <- this_object$`data_trade_start`
      }
      if (!is.null(this_object$`data_trade_end`)) {
        self$`data_trade_end` <- this_object$`data_trade_end`
      }
      if (!is.null(this_object$`index_id`)) {
        self$`index_id` <- this_object$`index_id`
      }
      if (!is.null(this_object$`index_display_name`)) {
        self$`index_display_name` <- this_object$`index_display_name`
      }
      if (!is.null(this_object$`index_display_description`)) {
        self$`index_display_description` <- this_object$`index_display_description`
      }
      if (!is.null(this_object$`volume_1hrs`)) {
        self$`volume_1hrs` <- this_object$`volume_1hrs`
      }
      if (!is.null(this_object$`volume_1hrs_usd`)) {
        self$`volume_1hrs_usd` <- this_object$`volume_1hrs_usd`
      }
      if (!is.null(this_object$`volume_1day`)) {
        self$`volume_1day` <- this_object$`volume_1day`
      }
      if (!is.null(this_object$`volume_1day_usd`)) {
        self$`volume_1day_usd` <- this_object$`volume_1day_usd`
      }
      if (!is.null(this_object$`volume_1mth`)) {
        self$`volume_1mth` <- this_object$`volume_1mth`
      }
      if (!is.null(this_object$`volume_1mth_usd`)) {
        self$`volume_1mth_usd` <- this_object$`volume_1mth_usd`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`symbol_id_exchange`)) {
        self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      }
      if (!is.null(this_object$`asset_id_base_exchange`)) {
        self$`asset_id_base_exchange` <- this_object$`asset_id_base_exchange`
      }
      if (!is.null(this_object$`asset_id_quote_exchange`)) {
        self$`asset_id_quote_exchange` <- this_object$`asset_id_quote_exchange`
      }
      if (!is.null(this_object$`price_precision`)) {
        self$`price_precision` <- this_object$`price_precision`
      }
      if (!is.null(this_object$`size_precision`)) {
        self$`size_precision` <- this_object$`size_precision`
      }
      if (!is.null(this_object$`raw_kvp`)) {
        self$`raw_kvp` <- ApiClient$new()$deserializeObj(this_object$`raw_kvp`, "map(character)", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`volume_to_usd`)) {
        self$`volume_to_usd` <- this_object$`volume_to_usd`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1Symbol in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Symbol
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Symbol
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id` <- this_object$`symbol_id`
      self$`exchange_id` <- this_object$`exchange_id`
      self$`symbol_type` <- this_object$`symbol_type`
      self$`asset_id_base` <- this_object$`asset_id_base`
      self$`asset_id_quote` <- this_object$`asset_id_quote`
      self$`asset_id_unit` <- this_object$`asset_id_unit`
      self$`future_contract_unit` <- this_object$`future_contract_unit`
      self$`future_contract_unit_asset` <- this_object$`future_contract_unit_asset`
      self$`future_delivery_time` <- this_object$`future_delivery_time`
      self$`option_type_is_call` <- this_object$`option_type_is_call`
      self$`option_strike_price` <- this_object$`option_strike_price`
      self$`option_contract_unit` <- this_object$`option_contract_unit`
      self$`option_exercise_style` <- this_object$`option_exercise_style`
      self$`option_expiration_time` <- this_object$`option_expiration_time`
      self$`contract_delivery_time` <- this_object$`contract_delivery_time`
      self$`contract_unit` <- this_object$`contract_unit`
      self$`contract_unit_asset` <- this_object$`contract_unit_asset`
      self$`contract_id` <- this_object$`contract_id`
      self$`contract_display_name` <- this_object$`contract_display_name`
      self$`contract_display_description` <- this_object$`contract_display_description`
      self$`data_start` <- this_object$`data_start`
      self$`data_end` <- this_object$`data_end`
      self$`data_quote_start` <- this_object$`data_quote_start`
      self$`data_quote_end` <- this_object$`data_quote_end`
      self$`data_orderbook_start` <- this_object$`data_orderbook_start`
      self$`data_orderbook_end` <- this_object$`data_orderbook_end`
      self$`data_trade_start` <- this_object$`data_trade_start`
      self$`data_trade_end` <- this_object$`data_trade_end`
      self$`index_id` <- this_object$`index_id`
      self$`index_display_name` <- this_object$`index_display_name`
      self$`index_display_description` <- this_object$`index_display_description`
      self$`volume_1hrs` <- this_object$`volume_1hrs`
      self$`volume_1hrs_usd` <- this_object$`volume_1hrs_usd`
      self$`volume_1day` <- this_object$`volume_1day`
      self$`volume_1day_usd` <- this_object$`volume_1day_usd`
      self$`volume_1mth` <- this_object$`volume_1mth`
      self$`volume_1mth_usd` <- this_object$`volume_1mth_usd`
      self$`price` <- this_object$`price`
      self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      self$`asset_id_base_exchange` <- this_object$`asset_id_base_exchange`
      self$`asset_id_quote_exchange` <- this_object$`asset_id_quote_exchange`
      self$`price_precision` <- this_object$`price_precision`
      self$`size_precision` <- this_object$`size_precision`
      self$`raw_kvp` <- ApiClient$new()$deserializeObj(this_object$`raw_kvp`, "map(character)", loadNamespace("openapi"))
      self$`volume_to_usd` <- this_object$`volume_to_usd`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1Symbol and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1Symbol
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# V1Symbol$unlock()
#
## Below is an example to define the print function
# V1Symbol$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1Symbol$lock()

