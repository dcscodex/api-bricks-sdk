#' Create a new AdminRetailLiquidityIndicatorModel
#'
#' @description
#' Represents the response DTO for retail liquidity indicator information
#'
#' @docType class
#' @title AdminRetailLiquidityIndicatorModel
#' @description AdminRetailLiquidityIndicatorModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the retail liquidity indicator was recorded as DateTime character [optional]
#' @field retail_liquidity_indicator Retail liquidity indicator as byte value integer [optional]
#' @field retail_liquidity_indicator_code Retail liquidity indicator as character string character [optional]
#' @field retail_liquidity_indicator_text Human-readable description of the retail liquidity indicator character [optional]
#' @field is_retail_indicator_not_applicable Indicates if the indicator is 'Not Applicable' (' '/0x20). character [optional]
#' @field is_retail_indicator_buy_interest Indicates if there is 'Buy interest for Retail' ('A'/0x41). character [optional]
#' @field is_retail_indicator_sell_interest Indicates if there is 'Sell interest for Retail' ('B'/0x42). character [optional]
#' @field is_retail_indicator_buy_and_sell_interest Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminRetailLiquidityIndicatorModel <- R6::R6Class(
  "AdminRetailLiquidityIndicatorModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `retail_liquidity_indicator` = NULL,
    `retail_liquidity_indicator_code` = NULL,
    `retail_liquidity_indicator_text` = NULL,
    `is_retail_indicator_not_applicable` = NULL,
    `is_retail_indicator_buy_interest` = NULL,
    `is_retail_indicator_sell_interest` = NULL,
    `is_retail_indicator_buy_and_sell_interest` = NULL,

    #' @description
    #' Initialize a new AdminRetailLiquidityIndicatorModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the retail liquidity indicator was recorded as DateTime
    #' @param retail_liquidity_indicator Retail liquidity indicator as byte value
    #' @param retail_liquidity_indicator_code Retail liquidity indicator as character string
    #' @param retail_liquidity_indicator_text Human-readable description of the retail liquidity indicator
    #' @param is_retail_indicator_not_applicable Indicates if the indicator is 'Not Applicable' (' '/0x20).
    #' @param is_retail_indicator_buy_interest Indicates if there is 'Buy interest for Retail' ('A'/0x41).
    #' @param is_retail_indicator_sell_interest Indicates if there is 'Sell interest for Retail' ('B'/0x42).
    #' @param is_retail_indicator_buy_and_sell_interest Indicates if there is 'Buy and sell interest for Retail' ('C'/0x43).
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `retail_liquidity_indicator` = NULL, `retail_liquidity_indicator_code` = NULL, `retail_liquidity_indicator_text` = NULL, `is_retail_indicator_not_applicable` = NULL, `is_retail_indicator_buy_interest` = NULL, `is_retail_indicator_sell_interest` = NULL, `is_retail_indicator_buy_and_sell_interest` = NULL, ...) {
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
      if (!is.null(`retail_liquidity_indicator`)) {
        if (!(is.numeric(`retail_liquidity_indicator`) && length(`retail_liquidity_indicator`) == 1)) {
          stop(paste("Error! Invalid data for `retail_liquidity_indicator`. Must be an integer:", `retail_liquidity_indicator`))
        }
        self$`retail_liquidity_indicator` <- `retail_liquidity_indicator`
      }
      if (!is.null(`retail_liquidity_indicator_code`)) {
        if (!(is.character(`retail_liquidity_indicator_code`) && length(`retail_liquidity_indicator_code`) == 1)) {
          stop(paste("Error! Invalid data for `retail_liquidity_indicator_code`. Must be a string:", `retail_liquidity_indicator_code`))
        }
        self$`retail_liquidity_indicator_code` <- `retail_liquidity_indicator_code`
      }
      if (!is.null(`retail_liquidity_indicator_text`)) {
        if (!(is.character(`retail_liquidity_indicator_text`) && length(`retail_liquidity_indicator_text`) == 1)) {
          stop(paste("Error! Invalid data for `retail_liquidity_indicator_text`. Must be a string:", `retail_liquidity_indicator_text`))
        }
        self$`retail_liquidity_indicator_text` <- `retail_liquidity_indicator_text`
      }
      if (!is.null(`is_retail_indicator_not_applicable`)) {
        if (!(is.logical(`is_retail_indicator_not_applicable`) && length(`is_retail_indicator_not_applicable`) == 1)) {
          stop(paste("Error! Invalid data for `is_retail_indicator_not_applicable`. Must be a boolean:", `is_retail_indicator_not_applicable`))
        }
        self$`is_retail_indicator_not_applicable` <- `is_retail_indicator_not_applicable`
      }
      if (!is.null(`is_retail_indicator_buy_interest`)) {
        if (!(is.logical(`is_retail_indicator_buy_interest`) && length(`is_retail_indicator_buy_interest`) == 1)) {
          stop(paste("Error! Invalid data for `is_retail_indicator_buy_interest`. Must be a boolean:", `is_retail_indicator_buy_interest`))
        }
        self$`is_retail_indicator_buy_interest` <- `is_retail_indicator_buy_interest`
      }
      if (!is.null(`is_retail_indicator_sell_interest`)) {
        if (!(is.logical(`is_retail_indicator_sell_interest`) && length(`is_retail_indicator_sell_interest`) == 1)) {
          stop(paste("Error! Invalid data for `is_retail_indicator_sell_interest`. Must be a boolean:", `is_retail_indicator_sell_interest`))
        }
        self$`is_retail_indicator_sell_interest` <- `is_retail_indicator_sell_interest`
      }
      if (!is.null(`is_retail_indicator_buy_and_sell_interest`)) {
        if (!(is.logical(`is_retail_indicator_buy_and_sell_interest`) && length(`is_retail_indicator_buy_and_sell_interest`) == 1)) {
          stop(paste("Error! Invalid data for `is_retail_indicator_buy_and_sell_interest`. Must be a boolean:", `is_retail_indicator_buy_and_sell_interest`))
        }
        self$`is_retail_indicator_buy_and_sell_interest` <- `is_retail_indicator_buy_and_sell_interest`
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
    #' @return AdminRetailLiquidityIndicatorModel as a base R list.
    #' @examples
    #' # convert array of AdminRetailLiquidityIndicatorModel (x) to a data frame
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
    #' Convert AdminRetailLiquidityIndicatorModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminRetailLiquidityIndicatorModelObject <- list()
      if (!is.null(self$`symbol`)) {
        AdminRetailLiquidityIndicatorModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        AdminRetailLiquidityIndicatorModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminRetailLiquidityIndicatorModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`retail_liquidity_indicator`)) {
        AdminRetailLiquidityIndicatorModelObject[["retail_liquidity_indicator"]] <-
          self$`retail_liquidity_indicator`
      }
      if (!is.null(self$`retail_liquidity_indicator_code`)) {
        AdminRetailLiquidityIndicatorModelObject[["retail_liquidity_indicator_code"]] <-
          self$`retail_liquidity_indicator_code`
      }
      if (!is.null(self$`retail_liquidity_indicator_text`)) {
        AdminRetailLiquidityIndicatorModelObject[["retail_liquidity_indicator_text"]] <-
          self$`retail_liquidity_indicator_text`
      }
      if (!is.null(self$`is_retail_indicator_not_applicable`)) {
        AdminRetailLiquidityIndicatorModelObject[["is_retail_indicator_not_applicable"]] <-
          self$`is_retail_indicator_not_applicable`
      }
      if (!is.null(self$`is_retail_indicator_buy_interest`)) {
        AdminRetailLiquidityIndicatorModelObject[["is_retail_indicator_buy_interest"]] <-
          self$`is_retail_indicator_buy_interest`
      }
      if (!is.null(self$`is_retail_indicator_sell_interest`)) {
        AdminRetailLiquidityIndicatorModelObject[["is_retail_indicator_sell_interest"]] <-
          self$`is_retail_indicator_sell_interest`
      }
      if (!is.null(self$`is_retail_indicator_buy_and_sell_interest`)) {
        AdminRetailLiquidityIndicatorModelObject[["is_retail_indicator_buy_and_sell_interest"]] <-
          self$`is_retail_indicator_buy_and_sell_interest`
      }
      return(AdminRetailLiquidityIndicatorModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminRetailLiquidityIndicatorModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminRetailLiquidityIndicatorModel
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
      if (!is.null(this_object$`retail_liquidity_indicator`)) {
        self$`retail_liquidity_indicator` <- this_object$`retail_liquidity_indicator`
      }
      if (!is.null(this_object$`retail_liquidity_indicator_code`)) {
        self$`retail_liquidity_indicator_code` <- this_object$`retail_liquidity_indicator_code`
      }
      if (!is.null(this_object$`retail_liquidity_indicator_text`)) {
        self$`retail_liquidity_indicator_text` <- this_object$`retail_liquidity_indicator_text`
      }
      if (!is.null(this_object$`is_retail_indicator_not_applicable`)) {
        self$`is_retail_indicator_not_applicable` <- this_object$`is_retail_indicator_not_applicable`
      }
      if (!is.null(this_object$`is_retail_indicator_buy_interest`)) {
        self$`is_retail_indicator_buy_interest` <- this_object$`is_retail_indicator_buy_interest`
      }
      if (!is.null(this_object$`is_retail_indicator_sell_interest`)) {
        self$`is_retail_indicator_sell_interest` <- this_object$`is_retail_indicator_sell_interest`
      }
      if (!is.null(this_object$`is_retail_indicator_buy_and_sell_interest`)) {
        self$`is_retail_indicator_buy_and_sell_interest` <- this_object$`is_retail_indicator_buy_and_sell_interest`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminRetailLiquidityIndicatorModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminRetailLiquidityIndicatorModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminRetailLiquidityIndicatorModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`retail_liquidity_indicator` <- this_object$`retail_liquidity_indicator`
      self$`retail_liquidity_indicator_code` <- this_object$`retail_liquidity_indicator_code`
      self$`retail_liquidity_indicator_text` <- this_object$`retail_liquidity_indicator_text`
      self$`is_retail_indicator_not_applicable` <- this_object$`is_retail_indicator_not_applicable`
      self$`is_retail_indicator_buy_interest` <- this_object$`is_retail_indicator_buy_interest`
      self$`is_retail_indicator_sell_interest` <- this_object$`is_retail_indicator_sell_interest`
      self$`is_retail_indicator_buy_and_sell_interest` <- this_object$`is_retail_indicator_buy_and_sell_interest`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminRetailLiquidityIndicatorModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminRetailLiquidityIndicatorModel
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
# AdminRetailLiquidityIndicatorModel$unlock()
#
## Below is an example to define the print function
# AdminRetailLiquidityIndicatorModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminRetailLiquidityIndicatorModel$lock()

