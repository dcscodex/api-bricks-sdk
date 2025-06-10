#' Create a new V1OrderBookDepth
#'
#' @description
#' Represents the depth of an order book.
#'
#' @docType class
#' @title V1OrderBookDepth
#' @description V1OrderBookDepth Class
#' @format An \code{R6Class} generator object
#' @field symbol_id The symbol identifier. character [optional]
#' @field time_exchange The exchange time of the order book. character [optional]
#' @field time_coinapi The CoinAPI time when the order book was received. character [optional]
#' @field ask_levels The number of ask levels in the order book. integer [optional]
#' @field bid_levels The number of bid levels in the order book. integer [optional]
#' @field ask_depth The depth of the ask side of the order book. numeric [optional]
#' @field bid_depth The depth of the bid side of the order book. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1OrderBookDepth <- R6::R6Class(
  "V1OrderBookDepth",
  public = list(
    `symbol_id` = NULL,
    `time_exchange` = NULL,
    `time_coinapi` = NULL,
    `ask_levels` = NULL,
    `bid_levels` = NULL,
    `ask_depth` = NULL,
    `bid_depth` = NULL,

    #' @description
    #' Initialize a new V1OrderBookDepth class.
    #'
    #' @param symbol_id The symbol identifier.
    #' @param time_exchange The exchange time of the order book.
    #' @param time_coinapi The CoinAPI time when the order book was received.
    #' @param ask_levels The number of ask levels in the order book.
    #' @param bid_levels The number of bid levels in the order book.
    #' @param ask_depth The depth of the ask side of the order book.
    #' @param bid_depth The depth of the bid side of the order book.
    #' @param ... Other optional arguments.
    initialize = function(`symbol_id` = NULL, `time_exchange` = NULL, `time_coinapi` = NULL, `ask_levels` = NULL, `bid_levels` = NULL, `ask_depth` = NULL, `bid_depth` = NULL, ...) {
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
      if (!is.null(`ask_levels`)) {
        if (!(is.numeric(`ask_levels`) && length(`ask_levels`) == 1)) {
          stop(paste("Error! Invalid data for `ask_levels`. Must be an integer:", `ask_levels`))
        }
        self$`ask_levels` <- `ask_levels`
      }
      if (!is.null(`bid_levels`)) {
        if (!(is.numeric(`bid_levels`) && length(`bid_levels`) == 1)) {
          stop(paste("Error! Invalid data for `bid_levels`. Must be an integer:", `bid_levels`))
        }
        self$`bid_levels` <- `bid_levels`
      }
      if (!is.null(`ask_depth`)) {
        if (!(is.numeric(`ask_depth`) && length(`ask_depth`) == 1)) {
          stop(paste("Error! Invalid data for `ask_depth`. Must be a number:", `ask_depth`))
        }
        self$`ask_depth` <- `ask_depth`
      }
      if (!is.null(`bid_depth`)) {
        if (!(is.numeric(`bid_depth`) && length(`bid_depth`) == 1)) {
          stop(paste("Error! Invalid data for `bid_depth`. Must be a number:", `bid_depth`))
        }
        self$`bid_depth` <- `bid_depth`
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
    #' @return V1OrderBookDepth as a base R list.
    #' @examples
    #' # convert array of V1OrderBookDepth (x) to a data frame
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
    #' Convert V1OrderBookDepth to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1OrderBookDepthObject <- list()
      if (!is.null(self$`symbol_id`)) {
        V1OrderBookDepthObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`time_exchange`)) {
        V1OrderBookDepthObject[["time_exchange"]] <-
          self$`time_exchange`
      }
      if (!is.null(self$`time_coinapi`)) {
        V1OrderBookDepthObject[["time_coinapi"]] <-
          self$`time_coinapi`
      }
      if (!is.null(self$`ask_levels`)) {
        V1OrderBookDepthObject[["ask_levels"]] <-
          self$`ask_levels`
      }
      if (!is.null(self$`bid_levels`)) {
        V1OrderBookDepthObject[["bid_levels"]] <-
          self$`bid_levels`
      }
      if (!is.null(self$`ask_depth`)) {
        V1OrderBookDepthObject[["ask_depth"]] <-
          self$`ask_depth`
      }
      if (!is.null(self$`bid_depth`)) {
        V1OrderBookDepthObject[["bid_depth"]] <-
          self$`bid_depth`
      }
      return(V1OrderBookDepthObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1OrderBookDepth
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1OrderBookDepth
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
      if (!is.null(this_object$`ask_levels`)) {
        self$`ask_levels` <- this_object$`ask_levels`
      }
      if (!is.null(this_object$`bid_levels`)) {
        self$`bid_levels` <- this_object$`bid_levels`
      }
      if (!is.null(this_object$`ask_depth`)) {
        self$`ask_depth` <- this_object$`ask_depth`
      }
      if (!is.null(this_object$`bid_depth`)) {
        self$`bid_depth` <- this_object$`bid_depth`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1OrderBookDepth in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1OrderBookDepth
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1OrderBookDepth
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id` <- this_object$`symbol_id`
      self$`time_exchange` <- this_object$`time_exchange`
      self$`time_coinapi` <- this_object$`time_coinapi`
      self$`ask_levels` <- this_object$`ask_levels`
      self$`bid_levels` <- this_object$`bid_levels`
      self$`ask_depth` <- this_object$`ask_depth`
      self$`bid_depth` <- this_object$`bid_depth`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1OrderBookDepth and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1OrderBookDepth
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
# V1OrderBookDepth$unlock()
#
## Below is an example to define the print function
# V1OrderBookDepth$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1OrderBookDepth$lock()

