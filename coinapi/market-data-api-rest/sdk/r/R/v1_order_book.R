#' Create a new V1OrderBook
#'
#' @description
#' Represents an order book with additional information and functionality.
#'
#' @docType class
#' @title V1OrderBook
#' @description V1OrderBook Class
#' @format An \code{R6Class} generator object
#' @field symbol_id The symbol identifier. character [optional]
#' @field time_exchange The exchange time of the order book. character [optional]
#' @field time_coinapi The CoinAPI time when the order book was received. character [optional]
#' @field asks The asks made by market makers. \link{AnyType} [optional]
#' @field bids The bids made by market makers. \link{AnyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1OrderBook <- R6::R6Class(
  "V1OrderBook",
  public = list(
    `symbol_id` = NULL,
    `time_exchange` = NULL,
    `time_coinapi` = NULL,
    `asks` = NULL,
    `bids` = NULL,

    #' @description
    #' Initialize a new V1OrderBook class.
    #'
    #' @param symbol_id The symbol identifier.
    #' @param time_exchange The exchange time of the order book.
    #' @param time_coinapi The CoinAPI time when the order book was received.
    #' @param asks The asks made by market makers.
    #' @param bids The bids made by market makers.
    #' @param ... Other optional arguments.
    initialize = function(`symbol_id` = NULL, `time_exchange` = NULL, `time_coinapi` = NULL, `asks` = NULL, `bids` = NULL, ...) {
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
      if (!is.null(`asks`)) {
        stopifnot(R6::is.R6(`asks`))
        self$`asks` <- `asks`
      }
      if (!is.null(`bids`)) {
        stopifnot(R6::is.R6(`bids`))
        self$`bids` <- `bids`
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
    #' @return V1OrderBook as a base R list.
    #' @examples
    #' # convert array of V1OrderBook (x) to a data frame
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
    #' Convert V1OrderBook to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1OrderBookObject <- list()
      if (!is.null(self$`symbol_id`)) {
        V1OrderBookObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`time_exchange`)) {
        V1OrderBookObject[["time_exchange"]] <-
          self$`time_exchange`
      }
      if (!is.null(self$`time_coinapi`)) {
        V1OrderBookObject[["time_coinapi"]] <-
          self$`time_coinapi`
      }
      if (!is.null(self$`asks`)) {
        V1OrderBookObject[["asks"]] <-
          self$`asks`$toSimpleType()
      }
      if (!is.null(self$`bids`)) {
        V1OrderBookObject[["bids"]] <-
          self$`bids`$toSimpleType()
      }
      return(V1OrderBookObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1OrderBook
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1OrderBook
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
      if (!is.null(this_object$`asks`)) {
        `asks_object` <- AnyType$new()
        `asks_object`$fromJSON(jsonlite::toJSON(this_object$`asks`, auto_unbox = TRUE, digits = NA))
        self$`asks` <- `asks_object`
      }
      if (!is.null(this_object$`bids`)) {
        `bids_object` <- AnyType$new()
        `bids_object`$fromJSON(jsonlite::toJSON(this_object$`bids`, auto_unbox = TRUE, digits = NA))
        self$`bids` <- `bids_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1OrderBook in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1OrderBook
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1OrderBook
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id` <- this_object$`symbol_id`
      self$`time_exchange` <- this_object$`time_exchange`
      self$`time_coinapi` <- this_object$`time_coinapi`
      self$`asks` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`asks`, auto_unbox = TRUE, digits = NA))
      self$`bids` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`bids`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V1OrderBook and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1OrderBook
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
# V1OrderBook$unlock()
#
## Below is an example to define the print function
# V1OrderBook$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1OrderBook$lock()

