#' Create a new V1TimeseriesItem
#'
#' @description
#' Represents a timeseries item with price and volume information.
#'
#' @docType class
#' @title V1TimeseriesItem
#' @description V1TimeseriesItem Class
#' @format An \code{R6Class} generator object
#' @field time_period_start The start time of the time period. character [optional]
#' @field time_period_end The end time of the time period. character [optional]
#' @field time_open The time when the price opened. character [optional]
#' @field time_close The time when the price closed. character [optional]
#' @field price_open The opening price. numeric [optional]
#' @field price_high The highest price during the time period. numeric [optional]
#' @field price_low The lowest price during the time period. numeric [optional]
#' @field price_close The closing price. numeric [optional]
#' @field volume_traded The total volume traded during the time period. numeric [optional]
#' @field trades_count The number of trades executed during the time period. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1TimeseriesItem <- R6::R6Class(
  "V1TimeseriesItem",
  public = list(
    `time_period_start` = NULL,
    `time_period_end` = NULL,
    `time_open` = NULL,
    `time_close` = NULL,
    `price_open` = NULL,
    `price_high` = NULL,
    `price_low` = NULL,
    `price_close` = NULL,
    `volume_traded` = NULL,
    `trades_count` = NULL,

    #' @description
    #' Initialize a new V1TimeseriesItem class.
    #'
    #' @param time_period_start The start time of the time period.
    #' @param time_period_end The end time of the time period.
    #' @param time_open The time when the price opened.
    #' @param time_close The time when the price closed.
    #' @param price_open The opening price.
    #' @param price_high The highest price during the time period.
    #' @param price_low The lowest price during the time period.
    #' @param price_close The closing price.
    #' @param volume_traded The total volume traded during the time period.
    #' @param trades_count The number of trades executed during the time period.
    #' @param ... Other optional arguments.
    initialize = function(`time_period_start` = NULL, `time_period_end` = NULL, `time_open` = NULL, `time_close` = NULL, `price_open` = NULL, `price_high` = NULL, `price_low` = NULL, `price_close` = NULL, `volume_traded` = NULL, `trades_count` = NULL, ...) {
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
      if (!is.null(`price_open`)) {
        if (!(is.numeric(`price_open`) && length(`price_open`) == 1)) {
          stop(paste("Error! Invalid data for `price_open`. Must be a number:", `price_open`))
        }
        self$`price_open` <- `price_open`
      }
      if (!is.null(`price_high`)) {
        if (!(is.numeric(`price_high`) && length(`price_high`) == 1)) {
          stop(paste("Error! Invalid data for `price_high`. Must be a number:", `price_high`))
        }
        self$`price_high` <- `price_high`
      }
      if (!is.null(`price_low`)) {
        if (!(is.numeric(`price_low`) && length(`price_low`) == 1)) {
          stop(paste("Error! Invalid data for `price_low`. Must be a number:", `price_low`))
        }
        self$`price_low` <- `price_low`
      }
      if (!is.null(`price_close`)) {
        if (!(is.numeric(`price_close`) && length(`price_close`) == 1)) {
          stop(paste("Error! Invalid data for `price_close`. Must be a number:", `price_close`))
        }
        self$`price_close` <- `price_close`
      }
      if (!is.null(`volume_traded`)) {
        if (!(is.numeric(`volume_traded`) && length(`volume_traded`) == 1)) {
          stop(paste("Error! Invalid data for `volume_traded`. Must be a number:", `volume_traded`))
        }
        self$`volume_traded` <- `volume_traded`
      }
      if (!is.null(`trades_count`)) {
        if (!(is.numeric(`trades_count`) && length(`trades_count`) == 1)) {
          stop(paste("Error! Invalid data for `trades_count`. Must be an integer:", `trades_count`))
        }
        self$`trades_count` <- `trades_count`
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
    #' @return V1TimeseriesItem as a base R list.
    #' @examples
    #' # convert array of V1TimeseriesItem (x) to a data frame
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
    #' Convert V1TimeseriesItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1TimeseriesItemObject <- list()
      if (!is.null(self$`time_period_start`)) {
        V1TimeseriesItemObject[["time_period_start"]] <-
          self$`time_period_start`
      }
      if (!is.null(self$`time_period_end`)) {
        V1TimeseriesItemObject[["time_period_end"]] <-
          self$`time_period_end`
      }
      if (!is.null(self$`time_open`)) {
        V1TimeseriesItemObject[["time_open"]] <-
          self$`time_open`
      }
      if (!is.null(self$`time_close`)) {
        V1TimeseriesItemObject[["time_close"]] <-
          self$`time_close`
      }
      if (!is.null(self$`price_open`)) {
        V1TimeseriesItemObject[["price_open"]] <-
          self$`price_open`
      }
      if (!is.null(self$`price_high`)) {
        V1TimeseriesItemObject[["price_high"]] <-
          self$`price_high`
      }
      if (!is.null(self$`price_low`)) {
        V1TimeseriesItemObject[["price_low"]] <-
          self$`price_low`
      }
      if (!is.null(self$`price_close`)) {
        V1TimeseriesItemObject[["price_close"]] <-
          self$`price_close`
      }
      if (!is.null(self$`volume_traded`)) {
        V1TimeseriesItemObject[["volume_traded"]] <-
          self$`volume_traded`
      }
      if (!is.null(self$`trades_count`)) {
        V1TimeseriesItemObject[["trades_count"]] <-
          self$`trades_count`
      }
      return(V1TimeseriesItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1TimeseriesItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1TimeseriesItem
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
      if (!is.null(this_object$`price_open`)) {
        self$`price_open` <- this_object$`price_open`
      }
      if (!is.null(this_object$`price_high`)) {
        self$`price_high` <- this_object$`price_high`
      }
      if (!is.null(this_object$`price_low`)) {
        self$`price_low` <- this_object$`price_low`
      }
      if (!is.null(this_object$`price_close`)) {
        self$`price_close` <- this_object$`price_close`
      }
      if (!is.null(this_object$`volume_traded`)) {
        self$`volume_traded` <- this_object$`volume_traded`
      }
      if (!is.null(this_object$`trades_count`)) {
        self$`trades_count` <- this_object$`trades_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1TimeseriesItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1TimeseriesItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1TimeseriesItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`time_period_start` <- this_object$`time_period_start`
      self$`time_period_end` <- this_object$`time_period_end`
      self$`time_open` <- this_object$`time_open`
      self$`time_close` <- this_object$`time_close`
      self$`price_open` <- this_object$`price_open`
      self$`price_high` <- this_object$`price_high`
      self$`price_low` <- this_object$`price_low`
      self$`price_close` <- this_object$`price_close`
      self$`volume_traded` <- this_object$`volume_traded`
      self$`trades_count` <- this_object$`trades_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1TimeseriesItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1TimeseriesItem
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
# V1TimeseriesItem$unlock()
#
## Below is an example to define the print function
# V1TimeseriesItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1TimeseriesItem$lock()

