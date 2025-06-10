#' Create a new V1QuoteTrade
#'
#' @description
#' Represents a quote trade data model.
#'
#' @docType class
#' @title V1QuoteTrade
#' @description V1QuoteTrade Class
#' @format An \code{R6Class} generator object
#' @field symbol_id The symbol identifier. character [optional]
#' @field time_exchange The exchange time of the quote trade. character [optional]
#' @field time_coinapi The CoinAPI time when the quote trade was received. character [optional]
#' @field ask_price The best asking price. numeric [optional]
#' @field ask_size The volume resting on the best ask. If the value is equal to zero, then the size is unknown. numeric [optional]
#' @field bid_price The best bidding price. numeric [optional]
#' @field bid_size The volume resting on the best bid. If the value is equal to zero, then the size is unknown. numeric [optional]
#' @field last_trade  \link{V1LastTrade} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1QuoteTrade <- R6::R6Class(
  "V1QuoteTrade",
  public = list(
    `symbol_id` = NULL,
    `time_exchange` = NULL,
    `time_coinapi` = NULL,
    `ask_price` = NULL,
    `ask_size` = NULL,
    `bid_price` = NULL,
    `bid_size` = NULL,
    `last_trade` = NULL,

    #' @description
    #' Initialize a new V1QuoteTrade class.
    #'
    #' @param symbol_id The symbol identifier.
    #' @param time_exchange The exchange time of the quote trade.
    #' @param time_coinapi The CoinAPI time when the quote trade was received.
    #' @param ask_price The best asking price.
    #' @param ask_size The volume resting on the best ask. If the value is equal to zero, then the size is unknown.
    #' @param bid_price The best bidding price.
    #' @param bid_size The volume resting on the best bid. If the value is equal to zero, then the size is unknown.
    #' @param last_trade last_trade
    #' @param ... Other optional arguments.
    initialize = function(`symbol_id` = NULL, `time_exchange` = NULL, `time_coinapi` = NULL, `ask_price` = NULL, `ask_size` = NULL, `bid_price` = NULL, `bid_size` = NULL, `last_trade` = NULL, ...) {
      if (!is.null(`symbol_id`)) {
        if (!(is.character(`symbol_id`) && length(`symbol_id`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id`. Must be a string:", `symbol_id`))
        }
        self$`symbol_id` <- `symbol_id`
      }
      if (!is.null(`time_exchange`)) {
        if (!is.character(`time_exchange`)) {
          stop(paste("Error! Invalid data for `time_exchange`. Must be a string:", `time_exchange`))
        }
        self$`time_exchange` <- `time_exchange`
      }
      if (!is.null(`time_coinapi`)) {
        if (!is.character(`time_coinapi`)) {
          stop(paste("Error! Invalid data for `time_coinapi`. Must be a string:", `time_coinapi`))
        }
        self$`time_coinapi` <- `time_coinapi`
      }
      if (!is.null(`ask_price`)) {
        if (!(is.numeric(`ask_price`) && length(`ask_price`) == 1)) {
          stop(paste("Error! Invalid data for `ask_price`. Must be a number:", `ask_price`))
        }
        self$`ask_price` <- `ask_price`
      }
      if (!is.null(`ask_size`)) {
        if (!(is.numeric(`ask_size`) && length(`ask_size`) == 1)) {
          stop(paste("Error! Invalid data for `ask_size`. Must be a number:", `ask_size`))
        }
        self$`ask_size` <- `ask_size`
      }
      if (!is.null(`bid_price`)) {
        if (!(is.numeric(`bid_price`) && length(`bid_price`) == 1)) {
          stop(paste("Error! Invalid data for `bid_price`. Must be a number:", `bid_price`))
        }
        self$`bid_price` <- `bid_price`
      }
      if (!is.null(`bid_size`)) {
        if (!(is.numeric(`bid_size`) && length(`bid_size`) == 1)) {
          stop(paste("Error! Invalid data for `bid_size`. Must be a number:", `bid_size`))
        }
        self$`bid_size` <- `bid_size`
      }
      if (!is.null(`last_trade`)) {
        stopifnot(R6::is.R6(`last_trade`))
        self$`last_trade` <- `last_trade`
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
    #' @return V1QuoteTrade as a base R list.
    #' @examples
    #' # convert array of V1QuoteTrade (x) to a data frame
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
    #' Convert V1QuoteTrade to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1QuoteTradeObject <- list()
      if (!is.null(self$`symbol_id`)) {
        V1QuoteTradeObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`time_exchange`)) {
        V1QuoteTradeObject[["time_exchange"]] <-
          self$`time_exchange`
      }
      if (!is.null(self$`time_coinapi`)) {
        V1QuoteTradeObject[["time_coinapi"]] <-
          self$`time_coinapi`
      }
      if (!is.null(self$`ask_price`)) {
        V1QuoteTradeObject[["ask_price"]] <-
          self$`ask_price`
      }
      if (!is.null(self$`ask_size`)) {
        V1QuoteTradeObject[["ask_size"]] <-
          self$`ask_size`
      }
      if (!is.null(self$`bid_price`)) {
        V1QuoteTradeObject[["bid_price"]] <-
          self$`bid_price`
      }
      if (!is.null(self$`bid_size`)) {
        V1QuoteTradeObject[["bid_size"]] <-
          self$`bid_size`
      }
      if (!is.null(self$`last_trade`)) {
        V1QuoteTradeObject[["last_trade"]] <-
          self$`last_trade`$toSimpleType()
      }
      return(V1QuoteTradeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1QuoteTrade
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1QuoteTrade
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol_id`)) {
        self$`symbol_id` <- this_object$`symbol_id`
      }
      if (!is.null(this_object$`time_exchange`)) {
        self$`time_exchange` <- this_object$`time_exchange`
      }
      if (!is.null(this_object$`time_coinapi`)) {
        self$`time_coinapi` <- this_object$`time_coinapi`
      }
      if (!is.null(this_object$`ask_price`)) {
        self$`ask_price` <- this_object$`ask_price`
      }
      if (!is.null(this_object$`ask_size`)) {
        self$`ask_size` <- this_object$`ask_size`
      }
      if (!is.null(this_object$`bid_price`)) {
        self$`bid_price` <- this_object$`bid_price`
      }
      if (!is.null(this_object$`bid_size`)) {
        self$`bid_size` <- this_object$`bid_size`
      }
      if (!is.null(this_object$`last_trade`)) {
        `last_trade_object` <- V1LastTrade$new()
        `last_trade_object`$fromJSON(jsonlite::toJSON(this_object$`last_trade`, auto_unbox = TRUE, digits = NA))
        self$`last_trade` <- `last_trade_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1QuoteTrade in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1QuoteTrade
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1QuoteTrade
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id` <- this_object$`symbol_id`
      self$`time_exchange` <- this_object$`time_exchange`
      self$`time_coinapi` <- this_object$`time_coinapi`
      self$`ask_price` <- this_object$`ask_price`
      self$`ask_size` <- this_object$`ask_size`
      self$`bid_price` <- this_object$`bid_price`
      self$`bid_size` <- this_object$`bid_size`
      self$`last_trade` <- V1LastTrade$new()$fromJSON(jsonlite::toJSON(this_object$`last_trade`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V1QuoteTrade and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1QuoteTrade
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
# V1QuoteTrade$unlock()
#
## Below is an example to define the print function
# V1QuoteTrade$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1QuoteTrade$lock()

