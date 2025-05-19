#' Create a new V1ExchangeRatesTimeseriesItem
#'
#' @description
#' Represents an item in the exchange rate timeseries.
#'
#' @docType class
#' @title V1ExchangeRatesTimeseriesItem
#' @description V1ExchangeRatesTimeseriesItem Class
#' @format An \code{R6Class} generator object
#' @field time_period_start Gets or sets the start time of the period. character [optional]
#' @field time_period_end Gets or sets the end time of the period. character [optional]
#' @field time_open Gets or sets the opening time of the period. character [optional]
#' @field time_close Gets or sets the closing time of the period. character [optional]
#' @field rate_open Gets or sets the opening rate for the period. numeric [optional]
#' @field rate_high Gets or sets the highest rate for the period. numeric [optional]
#' @field rate_low Gets or sets the lowest rate for the period. numeric [optional]
#' @field rate_close Gets or sets the closing rate for the period. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1ExchangeRatesTimeseriesItem <- R6::R6Class(
  "V1ExchangeRatesTimeseriesItem",
  public = list(
    `time_period_start` = NULL,
    `time_period_end` = NULL,
    `time_open` = NULL,
    `time_close` = NULL,
    `rate_open` = NULL,
    `rate_high` = NULL,
    `rate_low` = NULL,
    `rate_close` = NULL,

    #' @description
    #' Initialize a new V1ExchangeRatesTimeseriesItem class.
    #'
    #' @param time_period_start Gets or sets the start time of the period.
    #' @param time_period_end Gets or sets the end time of the period.
    #' @param time_open Gets or sets the opening time of the period.
    #' @param time_close Gets or sets the closing time of the period.
    #' @param rate_open Gets or sets the opening rate for the period.
    #' @param rate_high Gets or sets the highest rate for the period.
    #' @param rate_low Gets or sets the lowest rate for the period.
    #' @param rate_close Gets or sets the closing rate for the period.
    #' @param ... Other optional arguments.
    initialize = function(`time_period_start` = NULL, `time_period_end` = NULL, `time_open` = NULL, `time_close` = NULL, `rate_open` = NULL, `rate_high` = NULL, `rate_low` = NULL, `rate_close` = NULL, ...) {
      if (!is.null(`time_period_start`)) {
        if (!is.character(`time_period_start`)) {
          stop(paste("Error! Invalid data for `time_period_start`. Must be a string:", `time_period_start`))
        }
        self$`time_period_start` <- `time_period_start`
      }
      if (!is.null(`time_period_end`)) {
        if (!is.character(`time_period_end`)) {
          stop(paste("Error! Invalid data for `time_period_end`. Must be a string:", `time_period_end`))
        }
        self$`time_period_end` <- `time_period_end`
      }
      if (!is.null(`time_open`)) {
        if (!is.character(`time_open`)) {
          stop(paste("Error! Invalid data for `time_open`. Must be a string:", `time_open`))
        }
        self$`time_open` <- `time_open`
      }
      if (!is.null(`time_close`)) {
        if (!is.character(`time_close`)) {
          stop(paste("Error! Invalid data for `time_close`. Must be a string:", `time_close`))
        }
        self$`time_close` <- `time_close`
      }
      if (!is.null(`rate_open`)) {
        if (!(is.numeric(`rate_open`) && length(`rate_open`) == 1)) {
          stop(paste("Error! Invalid data for `rate_open`. Must be a number:", `rate_open`))
        }
        self$`rate_open` <- `rate_open`
      }
      if (!is.null(`rate_high`)) {
        if (!(is.numeric(`rate_high`) && length(`rate_high`) == 1)) {
          stop(paste("Error! Invalid data for `rate_high`. Must be a number:", `rate_high`))
        }
        self$`rate_high` <- `rate_high`
      }
      if (!is.null(`rate_low`)) {
        if (!(is.numeric(`rate_low`) && length(`rate_low`) == 1)) {
          stop(paste("Error! Invalid data for `rate_low`. Must be a number:", `rate_low`))
        }
        self$`rate_low` <- `rate_low`
      }
      if (!is.null(`rate_close`)) {
        if (!(is.numeric(`rate_close`) && length(`rate_close`) == 1)) {
          stop(paste("Error! Invalid data for `rate_close`. Must be a number:", `rate_close`))
        }
        self$`rate_close` <- `rate_close`
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
    #' @return V1ExchangeRatesTimeseriesItem as a base R list.
    #' @examples
    #' # convert array of V1ExchangeRatesTimeseriesItem (x) to a data frame
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
    #' Convert V1ExchangeRatesTimeseriesItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1ExchangeRatesTimeseriesItemObject <- list()
      if (!is.null(self$`time_period_start`)) {
        V1ExchangeRatesTimeseriesItemObject[["time_period_start"]] <-
          self$`time_period_start`
      }
      if (!is.null(self$`time_period_end`)) {
        V1ExchangeRatesTimeseriesItemObject[["time_period_end"]] <-
          self$`time_period_end`
      }
      if (!is.null(self$`time_open`)) {
        V1ExchangeRatesTimeseriesItemObject[["time_open"]] <-
          self$`time_open`
      }
      if (!is.null(self$`time_close`)) {
        V1ExchangeRatesTimeseriesItemObject[["time_close"]] <-
          self$`time_close`
      }
      if (!is.null(self$`rate_open`)) {
        V1ExchangeRatesTimeseriesItemObject[["rate_open"]] <-
          self$`rate_open`
      }
      if (!is.null(self$`rate_high`)) {
        V1ExchangeRatesTimeseriesItemObject[["rate_high"]] <-
          self$`rate_high`
      }
      if (!is.null(self$`rate_low`)) {
        V1ExchangeRatesTimeseriesItemObject[["rate_low"]] <-
          self$`rate_low`
      }
      if (!is.null(self$`rate_close`)) {
        V1ExchangeRatesTimeseriesItemObject[["rate_close"]] <-
          self$`rate_close`
      }
      return(V1ExchangeRatesTimeseriesItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExchangeRatesTimeseriesItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExchangeRatesTimeseriesItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`time_period_start`)) {
        self$`time_period_start` <- this_object$`time_period_start`
      }
      if (!is.null(this_object$`time_period_end`)) {
        self$`time_period_end` <- this_object$`time_period_end`
      }
      if (!is.null(this_object$`time_open`)) {
        self$`time_open` <- this_object$`time_open`
      }
      if (!is.null(this_object$`time_close`)) {
        self$`time_close` <- this_object$`time_close`
      }
      if (!is.null(this_object$`rate_open`)) {
        self$`rate_open` <- this_object$`rate_open`
      }
      if (!is.null(this_object$`rate_high`)) {
        self$`rate_high` <- this_object$`rate_high`
      }
      if (!is.null(this_object$`rate_low`)) {
        self$`rate_low` <- this_object$`rate_low`
      }
      if (!is.null(this_object$`rate_close`)) {
        self$`rate_close` <- this_object$`rate_close`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1ExchangeRatesTimeseriesItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExchangeRatesTimeseriesItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExchangeRatesTimeseriesItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`time_period_start` <- this_object$`time_period_start`
      self$`time_period_end` <- this_object$`time_period_end`
      self$`time_open` <- this_object$`time_open`
      self$`time_close` <- this_object$`time_close`
      self$`rate_open` <- this_object$`rate_open`
      self$`rate_high` <- this_object$`rate_high`
      self$`rate_low` <- this_object$`rate_low`
      self$`rate_close` <- this_object$`rate_close`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1ExchangeRatesTimeseriesItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1ExchangeRatesTimeseriesItem
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
# V1ExchangeRatesTimeseriesItem$unlock()
#
## Below is an example to define the print function
# V1ExchangeRatesTimeseriesItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1ExchangeRatesTimeseriesItem$lock()

