#' Create a new V1MetricData
#'
#' @description
#' Represents a data model for metric data.
#'
#' @docType class
#' @title V1MetricData
#' @description V1MetricData Class
#' @format An \code{R6Class} generator object
#' @field symbol_id Gets or sets the symbol id. character [optional]
#' @field time Gets or sets the time at which the value is recorded. character [optional]
#' @field value Gets or sets the value of the metric. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1MetricData <- R6::R6Class(
  "V1MetricData",
  public = list(
    `symbol_id` = NULL,
    `time` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new V1MetricData class.
    #'
    #' @param symbol_id Gets or sets the symbol id.
    #' @param time Gets or sets the time at which the value is recorded.
    #' @param value Gets or sets the value of the metric.
    #' @param ... Other optional arguments.
    initialize = function(`symbol_id` = NULL, `time` = NULL, `value` = NULL, ...) {
      if (!is.null(`symbol_id`)) {
        if (!(is.character(`symbol_id`) && length(`symbol_id`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id`. Must be a string:", `symbol_id`))
        }
        self$`symbol_id` <- `symbol_id`
      }
      if (!is.null(`time`)) {
        if (!is.character(`time`)) {
          stop(paste("Error! Invalid data for `time`. Must be a string:", `time`))
        }
        self$`time` <- `time`
      }
      if (!is.null(`value`)) {
        if (!(is.numeric(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a number:", `value`))
        }
        self$`value` <- `value`
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
    #' @return V1MetricData as a base R list.
    #' @examples
    #' # convert array of V1MetricData (x) to a data frame
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
    #' Convert V1MetricData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1MetricDataObject <- list()
      if (!is.null(self$`symbol_id`)) {
        V1MetricDataObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`time`)) {
        V1MetricDataObject[["time"]] <-
          self$`time`
      }
      if (!is.null(self$`value`)) {
        V1MetricDataObject[["value"]] <-
          self$`value`
      }
      return(V1MetricDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1MetricData
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1MetricData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol_id`)) {
        self$`symbol_id` <- this_object$`symbol_id`
      }
      if (!is.null(this_object$`time`)) {
        self$`time` <- this_object$`time`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1MetricData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1MetricData
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1MetricData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id` <- this_object$`symbol_id`
      self$`time` <- this_object$`time`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1MetricData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1MetricData
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
# V1MetricData$unlock()
#
## Below is an example to define the print function
# V1MetricData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1MetricData$lock()

