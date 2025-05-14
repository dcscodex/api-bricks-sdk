#' Create a new OHLCVExchangeTimeseriesItem
#'
#' @description
#' Represents a timeseries item with price and volume information.
#'
#' @docType class
#' @title OHLCVExchangeTimeseriesItem
#' @description OHLCVExchangeTimeseriesItem Class
#' @format An \code{R6Class} generator object
#' @field time_period_start Gets or sets the start time of the time period. character [optional]
#' @field time_period_end Gets or sets the end time of the time period. character [optional]
#' @field time_open Gets or sets the time when the price opened. character [optional]
#' @field time_close Gets or sets the time when the price closed. character [optional]
#' @field price_open Gets or sets the opening price. numeric [optional]
#' @field price_high Gets or sets the highest price during the time period. numeric [optional]
#' @field price_low Gets or sets the lowest price during the time period. numeric [optional]
#' @field price_close Gets or sets the closing price. numeric [optional]
#' @field volume_traded Gets or sets the total volume traded during the time period. numeric [optional]
#' @field trades_count Gets or sets the number of trades executed during the time period. integer [optional]
#' @field symbol_id_exchange  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OHLCVExchangeTimeseriesItem <- R6::R6Class(
  "OHLCVExchangeTimeseriesItem",
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
    `symbol_id_exchange` = NULL,

    #' @description
    #' Initialize a new OHLCVExchangeTimeseriesItem class.
    #'
    #' @param time_period_start Gets or sets the start time of the time period.
    #' @param time_period_end Gets or sets the end time of the time period.
    #' @param time_open Gets or sets the time when the price opened.
    #' @param time_close Gets or sets the time when the price closed.
    #' @param price_open Gets or sets the opening price.
    #' @param price_high Gets or sets the highest price during the time period.
    #' @param price_low Gets or sets the lowest price during the time period.
    #' @param price_close Gets or sets the closing price.
    #' @param volume_traded Gets or sets the total volume traded during the time period.
    #' @param trades_count Gets or sets the number of trades executed during the time period.
    #' @param symbol_id_exchange symbol_id_exchange
    #' @param ... Other optional arguments.
    initialize = function(`time_period_start` = NULL, `time_period_end` = NULL, `time_open` = NULL, `time_close` = NULL, `price_open` = NULL, `price_high` = NULL, `price_low` = NULL, `price_close` = NULL, `volume_traded` = NULL, `trades_count` = NULL, `symbol_id_exchange` = NULL, ...) {
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
      if (!is.null(`symbol_id_exchange`)) {
        if (!(is.character(`symbol_id_exchange`) && length(`symbol_id_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id_exchange`. Must be a string:", `symbol_id_exchange`))
        }
        self$`symbol_id_exchange` <- `symbol_id_exchange`
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
    #' @return OHLCVExchangeTimeseriesItem as a base R list.
    #' @examples
    #' # convert array of OHLCVExchangeTimeseriesItem (x) to a data frame
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
    #' Convert OHLCVExchangeTimeseriesItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OHLCVExchangeTimeseriesItemObject <- list()
      if (!is.null(self$`time_period_start`)) {
        OHLCVExchangeTimeseriesItemObject[["time_period_start"]] <-
          self$`time_period_start`
      }
      if (!is.null(self$`time_period_end`)) {
        OHLCVExchangeTimeseriesItemObject[["time_period_end"]] <-
          self$`time_period_end`
      }
      if (!is.null(self$`time_open`)) {
        OHLCVExchangeTimeseriesItemObject[["time_open"]] <-
          self$`time_open`
      }
      if (!is.null(self$`time_close`)) {
        OHLCVExchangeTimeseriesItemObject[["time_close"]] <-
          self$`time_close`
      }
      if (!is.null(self$`price_open`)) {
        OHLCVExchangeTimeseriesItemObject[["price_open"]] <-
          self$`price_open`
      }
      if (!is.null(self$`price_high`)) {
        OHLCVExchangeTimeseriesItemObject[["price_high"]] <-
          self$`price_high`
      }
      if (!is.null(self$`price_low`)) {
        OHLCVExchangeTimeseriesItemObject[["price_low"]] <-
          self$`price_low`
      }
      if (!is.null(self$`price_close`)) {
        OHLCVExchangeTimeseriesItemObject[["price_close"]] <-
          self$`price_close`
      }
      if (!is.null(self$`volume_traded`)) {
        OHLCVExchangeTimeseriesItemObject[["volume_traded"]] <-
          self$`volume_traded`
      }
      if (!is.null(self$`trades_count`)) {
        OHLCVExchangeTimeseriesItemObject[["trades_count"]] <-
          self$`trades_count`
      }
      if (!is.null(self$`symbol_id_exchange`)) {
        OHLCVExchangeTimeseriesItemObject[["symbol_id_exchange"]] <-
          self$`symbol_id_exchange`
      }
      return(OHLCVExchangeTimeseriesItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OHLCVExchangeTimeseriesItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of OHLCVExchangeTimeseriesItem
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
      if (!is.null(this_object$`symbol_id_exchange`)) {
        self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OHLCVExchangeTimeseriesItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OHLCVExchangeTimeseriesItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of OHLCVExchangeTimeseriesItem
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
      self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      self
    },

    #' @description
    #' Validate JSON input with respect to OHLCVExchangeTimeseriesItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OHLCVExchangeTimeseriesItem
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
# OHLCVExchangeTimeseriesItem$unlock()
#
## Below is an example to define the print function
# OHLCVExchangeTimeseriesItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OHLCVExchangeTimeseriesItem$lock()

