#' Create a new V1Trade
#'
#' @description
#' Represents a trade executed on the exchange.
#'
#' @docType class
#' @title V1Trade
#' @description V1Trade Class
#' @format An \code{R6Class} generator object
#' @field symbol_id The symbol identifier. character [optional]
#' @field time_exchange The time of trade reported by the exchange. character [optional]
#' @field time_coinapi The time when the trade was received by CoinAPI. character [optional]
#' @field uuid The unique identifier for the trade. character [optional]
#' @field price The price of the transaction. numeric [optional]
#' @field size The base asset amount traded in the transaction. numeric [optional]
#' @field taker_side The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). character [optional]
#' @field id_trade The trade identifier. character [optional]
#' @field id_order_maker The order maker identifier. character [optional]
#' @field id_order_taker The order taker identifier. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1Trade <- R6::R6Class(
  "V1Trade",
  public = list(
    `symbol_id` = NULL,
    `time_exchange` = NULL,
    `time_coinapi` = NULL,
    `uuid` = NULL,
    `price` = NULL,
    `size` = NULL,
    `taker_side` = NULL,
    `id_trade` = NULL,
    `id_order_maker` = NULL,
    `id_order_taker` = NULL,

    #' @description
    #' Initialize a new V1Trade class.
    #'
    #' @param symbol_id The symbol identifier.
    #' @param time_exchange The time of trade reported by the exchange.
    #' @param time_coinapi The time when the trade was received by CoinAPI.
    #' @param uuid The unique identifier for the trade.
    #' @param price The price of the transaction.
    #' @param size The base asset amount traded in the transaction.
    #' @param taker_side The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN).
    #' @param id_trade The trade identifier.
    #' @param id_order_maker The order maker identifier.
    #' @param id_order_taker The order taker identifier.
    #' @param ... Other optional arguments.
    initialize = function(`symbol_id` = NULL, `time_exchange` = NULL, `time_coinapi` = NULL, `uuid` = NULL, `price` = NULL, `size` = NULL, `taker_side` = NULL, `id_trade` = NULL, `id_order_maker` = NULL, `id_order_taker` = NULL, ...) {
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
      if (!is.null(`id_trade`)) {
        if (!(is.character(`id_trade`) && length(`id_trade`) == 1)) {
          stop(paste("Error! Invalid data for `id_trade`. Must be a string:", `id_trade`))
        }
        self$`id_trade` <- `id_trade`
      }
      if (!is.null(`id_order_maker`)) {
        if (!(is.character(`id_order_maker`) && length(`id_order_maker`) == 1)) {
          stop(paste("Error! Invalid data for `id_order_maker`. Must be a string:", `id_order_maker`))
        }
        self$`id_order_maker` <- `id_order_maker`
      }
      if (!is.null(`id_order_taker`)) {
        if (!(is.character(`id_order_taker`) && length(`id_order_taker`) == 1)) {
          stop(paste("Error! Invalid data for `id_order_taker`. Must be a string:", `id_order_taker`))
        }
        self$`id_order_taker` <- `id_order_taker`
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
    #' @return V1Trade as a base R list.
    #' @examples
    #' # convert array of V1Trade (x) to a data frame
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
    #' Convert V1Trade to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1TradeObject <- list()
      if (!is.null(self$`symbol_id`)) {
        V1TradeObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`time_exchange`)) {
        V1TradeObject[["time_exchange"]] <-
          self$`time_exchange`
      }
      if (!is.null(self$`time_coinapi`)) {
        V1TradeObject[["time_coinapi"]] <-
          self$`time_coinapi`
      }
      if (!is.null(self$`uuid`)) {
        V1TradeObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`price`)) {
        V1TradeObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`size`)) {
        V1TradeObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`taker_side`)) {
        V1TradeObject[["taker_side"]] <-
          self$`taker_side`
      }
      if (!is.null(self$`id_trade`)) {
        V1TradeObject[["id_trade"]] <-
          self$`id_trade`
      }
      if (!is.null(self$`id_order_maker`)) {
        V1TradeObject[["id_order_maker"]] <-
          self$`id_order_maker`
      }
      if (!is.null(self$`id_order_taker`)) {
        V1TradeObject[["id_order_taker"]] <-
          self$`id_order_taker`
      }
      return(V1TradeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Trade
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Trade
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
      if (!is.null(this_object$`id_trade`)) {
        self$`id_trade` <- this_object$`id_trade`
      }
      if (!is.null(this_object$`id_order_maker`)) {
        self$`id_order_maker` <- this_object$`id_order_maker`
      }
      if (!is.null(this_object$`id_order_taker`)) {
        self$`id_order_taker` <- this_object$`id_order_taker`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1Trade in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Trade
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Trade
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id` <- this_object$`symbol_id`
      self$`time_exchange` <- this_object$`time_exchange`
      self$`time_coinapi` <- this_object$`time_coinapi`
      self$`uuid` <- this_object$`uuid`
      self$`price` <- this_object$`price`
      self$`size` <- this_object$`size`
      self$`taker_side` <- this_object$`taker_side`
      self$`id_trade` <- this_object$`id_trade`
      self$`id_order_maker` <- this_object$`id_order_maker`
      self$`id_order_taker` <- this_object$`id_order_taker`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1Trade and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1Trade
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
# V1Trade$unlock()
#
## Below is an example to define the print function
# V1Trade$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1Trade$lock()

