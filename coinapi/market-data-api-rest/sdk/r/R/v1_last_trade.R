#' Create a new V1LastTrade
#'
#' @description
#' Represents the last executed transaction.
#'
#' @docType class
#' @title V1LastTrade
#' @description V1LastTrade Class
#' @format An \code{R6Class} generator object
#' @field time_exchange The exchange time of the last trade. character [optional]
#' @field time_coinapi The CoinAPI time when the last trade was received. character [optional]
#' @field uuid The UUID of the last trade. character [optional]
#' @field price The price of the last trade. numeric [optional]
#' @field size The size of the last trade. numeric [optional]
#' @field taker_side The taker side of the last trade. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1LastTrade <- R6::R6Class(
  "V1LastTrade",
  public = list(
    `time_exchange` = NULL,
    `time_coinapi` = NULL,
    `uuid` = NULL,
    `price` = NULL,
    `size` = NULL,
    `taker_side` = NULL,

    #' @description
    #' Initialize a new V1LastTrade class.
    #'
    #' @param time_exchange The exchange time of the last trade.
    #' @param time_coinapi The CoinAPI time when the last trade was received.
    #' @param uuid The UUID of the last trade.
    #' @param price The price of the last trade.
    #' @param size The size of the last trade.
    #' @param taker_side The taker side of the last trade.
    #' @param ... Other optional arguments.
    initialize = function(`time_exchange` = NULL, `time_coinapi` = NULL, `uuid` = NULL, `price` = NULL, `size` = NULL, `taker_side` = NULL, ...) {
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
      if (!is.null(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", `price`))
        }
        self$`price` <- `price`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be a number:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`taker_side`)) {
        if (!(is.character(`taker_side`) && length(`taker_side`) == 1)) {
          stop(paste("Error! Invalid data for `taker_side`. Must be a string:", `taker_side`))
        }
        self$`taker_side` <- `taker_side`
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
    #' @return V1LastTrade as a base R list.
    #' @examples
    #' # convert array of V1LastTrade (x) to a data frame
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
    #' Convert V1LastTrade to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1LastTradeObject <- list()
      if (!is.null(self$`time_exchange`)) {
        V1LastTradeObject[["time_exchange"]] <-
          self$`time_exchange`
      }
      if (!is.null(self$`time_coinapi`)) {
        V1LastTradeObject[["time_coinapi"]] <-
          self$`time_coinapi`
      }
      if (!is.null(self$`uuid`)) {
        V1LastTradeObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`price`)) {
        V1LastTradeObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`size`)) {
        V1LastTradeObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`taker_side`)) {
        V1LastTradeObject[["taker_side"]] <-
          self$`taker_side`
      }
      return(V1LastTradeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1LastTrade
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1LastTrade
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`time_exchange`)) {
        self$`time_exchange` <- this_object$`time_exchange`
      }
      if (!is.null(this_object$`time_coinapi`)) {
        self$`time_coinapi` <- this_object$`time_coinapi`
      }
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`taker_side`)) {
        self$`taker_side` <- this_object$`taker_side`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1LastTrade in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1LastTrade
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1LastTrade
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`time_exchange` <- this_object$`time_exchange`
      self$`time_coinapi` <- this_object$`time_coinapi`
      self$`uuid` <- this_object$`uuid`
      self$`price` <- this_object$`price`
      self$`size` <- this_object$`size`
      self$`taker_side` <- this_object$`taker_side`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1LastTrade and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1LastTrade
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
# V1LastTrade$unlock()
#
## Below is an example to define the print function
# V1LastTrade$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1LastTrade$lock()

