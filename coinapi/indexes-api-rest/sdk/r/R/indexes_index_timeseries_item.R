#' Create a new IndexesIndexTimeseriesItem
#'
#' @description
#' Represents a timeseries item with value information.
#'
#' @docType class
#' @title IndexesIndexTimeseriesItem
#' @description IndexesIndexTimeseriesItem Class
#' @format An \code{R6Class} generator object
#' @field time_period_start Gets or sets the start time of the time period. character [optional]
#' @field time_period_end Gets or sets the end time of the time period. character [optional]
#' @field time_open Gets or sets the time when the value opened. character [optional]
#' @field time_close Gets or sets the time when the value closed. character [optional]
#' @field value_open Gets or sets the opening value. numeric [optional]
#' @field value_high Gets or sets the highest value during the time period. numeric [optional]
#' @field value_low Gets or sets the lowest value during the time period. numeric [optional]
#' @field value_close Gets or sets the closing value. numeric [optional]
#' @field value_count Gets or sets the number of values during the time period. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IndexesIndexTimeseriesItem <- R6::R6Class(
  "IndexesIndexTimeseriesItem",
  public = list(
    `time_period_start` = NULL,
    `time_period_end` = NULL,
    `time_open` = NULL,
    `time_close` = NULL,
    `value_open` = NULL,
    `value_high` = NULL,
    `value_low` = NULL,
    `value_close` = NULL,
    `value_count` = NULL,

    #' @description
    #' Initialize a new IndexesIndexTimeseriesItem class.
    #'
    #' @param time_period_start Gets or sets the start time of the time period.
    #' @param time_period_end Gets or sets the end time of the time period.
    #' @param time_open Gets or sets the time when the value opened.
    #' @param time_close Gets or sets the time when the value closed.
    #' @param value_open Gets or sets the opening value.
    #' @param value_high Gets or sets the highest value during the time period.
    #' @param value_low Gets or sets the lowest value during the time period.
    #' @param value_close Gets or sets the closing value.
    #' @param value_count Gets or sets the number of values during the time period.
    #' @param ... Other optional arguments.
    initialize = function(`time_period_start` = NULL, `time_period_end` = NULL, `time_open` = NULL, `time_close` = NULL, `value_open` = NULL, `value_high` = NULL, `value_low` = NULL, `value_close` = NULL, `value_count` = NULL, ...) {
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
      if (!is.null(`value_open`)) {
        if (!(is.numeric(`value_open`) && length(`value_open`) == 1)) {
          stop(paste("Error! Invalid data for `value_open`. Must be a number:", `value_open`))
        }
        self$`value_open` <- `value_open`
      }
      if (!is.null(`value_high`)) {
        if (!(is.numeric(`value_high`) && length(`value_high`) == 1)) {
          stop(paste("Error! Invalid data for `value_high`. Must be a number:", `value_high`))
        }
        self$`value_high` <- `value_high`
      }
      if (!is.null(`value_low`)) {
        if (!(is.numeric(`value_low`) && length(`value_low`) == 1)) {
          stop(paste("Error! Invalid data for `value_low`. Must be a number:", `value_low`))
        }
        self$`value_low` <- `value_low`
      }
      if (!is.null(`value_close`)) {
        if (!(is.numeric(`value_close`) && length(`value_close`) == 1)) {
          stop(paste("Error! Invalid data for `value_close`. Must be a number:", `value_close`))
        }
        self$`value_close` <- `value_close`
      }
      if (!is.null(`value_count`)) {
        if (!(is.numeric(`value_count`) && length(`value_count`) == 1)) {
          stop(paste("Error! Invalid data for `value_count`. Must be an integer:", `value_count`))
        }
        self$`value_count` <- `value_count`
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
    #' @return IndexesIndexTimeseriesItem as a base R list.
    #' @examples
    #' # convert array of IndexesIndexTimeseriesItem (x) to a data frame
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
    #' Convert IndexesIndexTimeseriesItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IndexesIndexTimeseriesItemObject <- list()
      if (!is.null(self$`time_period_start`)) {
        IndexesIndexTimeseriesItemObject[["time_period_start"]] <-
          self$`time_period_start`
      }
      if (!is.null(self$`time_period_end`)) {
        IndexesIndexTimeseriesItemObject[["time_period_end"]] <-
          self$`time_period_end`
      }
      if (!is.null(self$`time_open`)) {
        IndexesIndexTimeseriesItemObject[["time_open"]] <-
          self$`time_open`
      }
      if (!is.null(self$`time_close`)) {
        IndexesIndexTimeseriesItemObject[["time_close"]] <-
          self$`time_close`
      }
      if (!is.null(self$`value_open`)) {
        IndexesIndexTimeseriesItemObject[["value_open"]] <-
          self$`value_open`
      }
      if (!is.null(self$`value_high`)) {
        IndexesIndexTimeseriesItemObject[["value_high"]] <-
          self$`value_high`
      }
      if (!is.null(self$`value_low`)) {
        IndexesIndexTimeseriesItemObject[["value_low"]] <-
          self$`value_low`
      }
      if (!is.null(self$`value_close`)) {
        IndexesIndexTimeseriesItemObject[["value_close"]] <-
          self$`value_close`
      }
      if (!is.null(self$`value_count`)) {
        IndexesIndexTimeseriesItemObject[["value_count"]] <-
          self$`value_count`
      }
      return(IndexesIndexTimeseriesItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexTimeseriesItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexTimeseriesItem
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
      if (!is.null(this_object$`value_open`)) {
        self$`value_open` <- this_object$`value_open`
      }
      if (!is.null(this_object$`value_high`)) {
        self$`value_high` <- this_object$`value_high`
      }
      if (!is.null(this_object$`value_low`)) {
        self$`value_low` <- this_object$`value_low`
      }
      if (!is.null(this_object$`value_close`)) {
        self$`value_close` <- this_object$`value_close`
      }
      if (!is.null(this_object$`value_count`)) {
        self$`value_count` <- this_object$`value_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IndexesIndexTimeseriesItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexTimeseriesItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexTimeseriesItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`time_period_start` <- this_object$`time_period_start`
      self$`time_period_end` <- this_object$`time_period_end`
      self$`time_open` <- this_object$`time_open`
      self$`time_close` <- this_object$`time_close`
      self$`value_open` <- this_object$`value_open`
      self$`value_high` <- this_object$`value_high`
      self$`value_low` <- this_object$`value_low`
      self$`value_close` <- this_object$`value_close`
      self$`value_count` <- this_object$`value_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to IndexesIndexTimeseriesItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IndexesIndexTimeseriesItem
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
# IndexesIndexTimeseriesItem$unlock()
#
## Below is an example to define the print function
# IndexesIndexTimeseriesItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IndexesIndexTimeseriesItem$lock()

