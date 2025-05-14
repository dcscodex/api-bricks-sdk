#' Create a new Level1QuoteUpdateModel
#'
#' @description
#' Represents the response DTO for quote update information
#'
#' @docType class
#' @title Level1QuoteUpdateModel
#' @description Level1QuoteUpdateModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the quote update was recorded as DateTime character [optional]
#' @field is_symbol_available Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available character [optional]
#' @field is_pre_post_market_session Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session character [optional]
#' @field ask_size Ask size in number of shares integer [optional]
#' @field ask_price Ask price as decimal numeric [optional]
#' @field bid_price Bid price as decimal numeric [optional]
#' @field bid_size Bid size in number of shares integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Level1QuoteUpdateModel <- R6::R6Class(
  "Level1QuoteUpdateModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `is_symbol_available` = NULL,
    `is_pre_post_market_session` = NULL,
    `ask_size` = NULL,
    `ask_price` = NULL,
    `bid_price` = NULL,
    `bid_size` = NULL,

    #' @description
    #' Initialize a new Level1QuoteUpdateModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the quote update was recorded as DateTime
    #' @param is_symbol_available Gets whether the symbol is available for trading  True if active, False if halted, paused, or otherwise not available
    #' @param is_pre_post_market_session Gets whether the market session is regular or pre/post-market  True if pre/post-market session, False if regular market session
    #' @param ask_size Ask size in number of shares
    #' @param ask_price Ask price as decimal
    #' @param bid_price Bid price as decimal
    #' @param bid_size Bid size in number of shares
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `is_symbol_available` = NULL, `is_pre_post_market_session` = NULL, `ask_size` = NULL, `ask_price` = NULL, `bid_price` = NULL, `bid_size` = NULL, ...) {
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`timestamp_nanos`)) {
        if (!(is.numeric(`timestamp_nanos`) && length(`timestamp_nanos`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp_nanos`. Must be an integer:", `timestamp_nanos`))
        }
        self$`timestamp_nanos` <- `timestamp_nanos`
      }
      if (!is.null(`timestamp`)) {
        if (!is.character(`timestamp`)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`is_symbol_available`)) {
        if (!(is.logical(`is_symbol_available`) && length(`is_symbol_available`) == 1)) {
          stop(paste("Error! Invalid data for `is_symbol_available`. Must be a boolean:", `is_symbol_available`))
        }
        self$`is_symbol_available` <- `is_symbol_available`
      }
      if (!is.null(`is_pre_post_market_session`)) {
        if (!(is.logical(`is_pre_post_market_session`) && length(`is_pre_post_market_session`) == 1)) {
          stop(paste("Error! Invalid data for `is_pre_post_market_session`. Must be a boolean:", `is_pre_post_market_session`))
        }
        self$`is_pre_post_market_session` <- `is_pre_post_market_session`
      }
      if (!is.null(`ask_size`)) {
        if (!(is.numeric(`ask_size`) && length(`ask_size`) == 1)) {
          stop(paste("Error! Invalid data for `ask_size`. Must be an integer:", `ask_size`))
        }
        self$`ask_size` <- `ask_size`
      }
      if (!is.null(`ask_price`)) {
        if (!(is.numeric(`ask_price`) && length(`ask_price`) == 1)) {
          stop(paste("Error! Invalid data for `ask_price`. Must be a number:", `ask_price`))
        }
        self$`ask_price` <- `ask_price`
      }
      if (!is.null(`bid_price`)) {
        if (!(is.numeric(`bid_price`) && length(`bid_price`) == 1)) {
          stop(paste("Error! Invalid data for `bid_price`. Must be a number:", `bid_price`))
        }
        self$`bid_price` <- `bid_price`
      }
      if (!is.null(`bid_size`)) {
        if (!(is.numeric(`bid_size`) && length(`bid_size`) == 1)) {
          stop(paste("Error! Invalid data for `bid_size`. Must be an integer:", `bid_size`))
        }
        self$`bid_size` <- `bid_size`
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
    #' @return Level1QuoteUpdateModel as a base R list.
    #' @examples
    #' # convert array of Level1QuoteUpdateModel (x) to a data frame
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
    #' Convert Level1QuoteUpdateModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Level1QuoteUpdateModelObject <- list()
      if (!is.null(self$`symbol`)) {
        Level1QuoteUpdateModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        Level1QuoteUpdateModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        Level1QuoteUpdateModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`is_symbol_available`)) {
        Level1QuoteUpdateModelObject[["is_symbol_available"]] <-
          self$`is_symbol_available`
      }
      if (!is.null(self$`is_pre_post_market_session`)) {
        Level1QuoteUpdateModelObject[["is_pre_post_market_session"]] <-
          self$`is_pre_post_market_session`
      }
      if (!is.null(self$`ask_size`)) {
        Level1QuoteUpdateModelObject[["ask_size"]] <-
          self$`ask_size`
      }
      if (!is.null(self$`ask_price`)) {
        Level1QuoteUpdateModelObject[["ask_price"]] <-
          self$`ask_price`
      }
      if (!is.null(self$`bid_price`)) {
        Level1QuoteUpdateModelObject[["bid_price"]] <-
          self$`bid_price`
      }
      if (!is.null(self$`bid_size`)) {
        Level1QuoteUpdateModelObject[["bid_size"]] <-
          self$`bid_size`
      }
      return(Level1QuoteUpdateModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Level1QuoteUpdateModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level1QuoteUpdateModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`timestamp_nanos`)) {
        self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`is_symbol_available`)) {
        self$`is_symbol_available` <- this_object$`is_symbol_available`
      }
      if (!is.null(this_object$`is_pre_post_market_session`)) {
        self$`is_pre_post_market_session` <- this_object$`is_pre_post_market_session`
      }
      if (!is.null(this_object$`ask_size`)) {
        self$`ask_size` <- this_object$`ask_size`
      }
      if (!is.null(this_object$`ask_price`)) {
        self$`ask_price` <- this_object$`ask_price`
      }
      if (!is.null(this_object$`bid_price`)) {
        self$`bid_price` <- this_object$`bid_price`
      }
      if (!is.null(this_object$`bid_size`)) {
        self$`bid_size` <- this_object$`bid_size`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Level1QuoteUpdateModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Level1QuoteUpdateModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level1QuoteUpdateModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`is_symbol_available` <- this_object$`is_symbol_available`
      self$`is_pre_post_market_session` <- this_object$`is_pre_post_market_session`
      self$`ask_size` <- this_object$`ask_size`
      self$`ask_price` <- this_object$`ask_price`
      self$`bid_price` <- this_object$`bid_price`
      self$`bid_size` <- this_object$`bid_size`
      self
    },

    #' @description
    #' Validate JSON input with respect to Level1QuoteUpdateModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Level1QuoteUpdateModel
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
# Level1QuoteUpdateModel$unlock()
#
## Below is an example to define the print function
# Level1QuoteUpdateModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Level1QuoteUpdateModel$lock()

