#' Create a new V1GeneralData
#'
#' @description
#' Class representation of general metric data. This class is an XML type with name 'general_data' and inherits from the BaseCsvModel class.
#'
#' @docType class
#' @title V1GeneralData
#' @description V1GeneralData Class
#' @format An \code{R6Class} generator object
#' @field entry_time Gets or sets the entry time for the data point. character [optional]
#' @field recv_time Gets or sets the received time for the data point. character [optional]
#' @field exchange_id Gets or sets the identifier for the exchange. character [optional]
#' @field asset_id Gets or sets the identifier for the asset. character [optional]
#' @field symbol_id Gets or sets the identifier for the symbol. character [optional]
#' @field metric_id Gets or sets the identifier for the metric. character [optional]
#' @field value_decimal Gets or sets the decimal value for the metric. numeric [optional]
#' @field value_text Gets or sets the textual representation of the value for the metric. character [optional]
#' @field value_time Gets or sets the timestamp value for the metric. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1GeneralData <- R6::R6Class(
  "V1GeneralData",
  public = list(
    `entry_time` = NULL,
    `recv_time` = NULL,
    `exchange_id` = NULL,
    `asset_id` = NULL,
    `symbol_id` = NULL,
    `metric_id` = NULL,
    `value_decimal` = NULL,
    `value_text` = NULL,
    `value_time` = NULL,

    #' @description
    #' Initialize a new V1GeneralData class.
    #'
    #' @param entry_time Gets or sets the entry time for the data point.
    #' @param recv_time Gets or sets the received time for the data point.
    #' @param exchange_id Gets or sets the identifier for the exchange.
    #' @param asset_id Gets or sets the identifier for the asset.
    #' @param symbol_id Gets or sets the identifier for the symbol.
    #' @param metric_id Gets or sets the identifier for the metric.
    #' @param value_decimal Gets or sets the decimal value for the metric.
    #' @param value_text Gets or sets the textual representation of the value for the metric.
    #' @param value_time Gets or sets the timestamp value for the metric.
    #' @param ... Other optional arguments.
    initialize = function(`entry_time` = NULL, `recv_time` = NULL, `exchange_id` = NULL, `asset_id` = NULL, `symbol_id` = NULL, `metric_id` = NULL, `value_decimal` = NULL, `value_text` = NULL, `value_time` = NULL, ...) {
      if (!is.null(`entry_time`)) {
        if (!is.character(`entry_time`)) {
          stop(paste("Error! Invalid data for `entry_time`. Must be a string:", `entry_time`))
        }
        self$`entry_time` <- `entry_time`
      }
      if (!is.null(`recv_time`)) {
        if (!is.character(`recv_time`)) {
          stop(paste("Error! Invalid data for `recv_time`. Must be a string:", `recv_time`))
        }
        self$`recv_time` <- `recv_time`
      }
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`asset_id`)) {
        if (!(is.character(`asset_id`) && length(`asset_id`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id`. Must be a string:", `asset_id`))
        }
        self$`asset_id` <- `asset_id`
      }
      if (!is.null(`symbol_id`)) {
        if (!(is.character(`symbol_id`) && length(`symbol_id`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id`. Must be a string:", `symbol_id`))
        }
        self$`symbol_id` <- `symbol_id`
      }
      if (!is.null(`metric_id`)) {
        if (!(is.character(`metric_id`) && length(`metric_id`) == 1)) {
          stop(paste("Error! Invalid data for `metric_id`. Must be a string:", `metric_id`))
        }
        self$`metric_id` <- `metric_id`
      }
      if (!is.null(`value_decimal`)) {
        if (!(is.numeric(`value_decimal`) && length(`value_decimal`) == 1)) {
          stop(paste("Error! Invalid data for `value_decimal`. Must be a number:", `value_decimal`))
        }
        self$`value_decimal` <- `value_decimal`
      }
      if (!is.null(`value_text`)) {
        if (!(is.character(`value_text`) && length(`value_text`) == 1)) {
          stop(paste("Error! Invalid data for `value_text`. Must be a string:", `value_text`))
        }
        self$`value_text` <- `value_text`
      }
      if (!is.null(`value_time`)) {
        if (!is.character(`value_time`)) {
          stop(paste("Error! Invalid data for `value_time`. Must be a string:", `value_time`))
        }
        self$`value_time` <- `value_time`
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
    #' @return V1GeneralData as a base R list.
    #' @examples
    #' # convert array of V1GeneralData (x) to a data frame
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
    #' Convert V1GeneralData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1GeneralDataObject <- list()
      if (!is.null(self$`entry_time`)) {
        V1GeneralDataObject[["entry_time"]] <-
          self$`entry_time`
      }
      if (!is.null(self$`recv_time`)) {
        V1GeneralDataObject[["recv_time"]] <-
          self$`recv_time`
      }
      if (!is.null(self$`exchange_id`)) {
        V1GeneralDataObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`asset_id`)) {
        V1GeneralDataObject[["asset_id"]] <-
          self$`asset_id`
      }
      if (!is.null(self$`symbol_id`)) {
        V1GeneralDataObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`metric_id`)) {
        V1GeneralDataObject[["metric_id"]] <-
          self$`metric_id`
      }
      if (!is.null(self$`value_decimal`)) {
        V1GeneralDataObject[["value_decimal"]] <-
          self$`value_decimal`
      }
      if (!is.null(self$`value_text`)) {
        V1GeneralDataObject[["value_text"]] <-
          self$`value_text`
      }
      if (!is.null(self$`value_time`)) {
        V1GeneralDataObject[["value_time"]] <-
          self$`value_time`
      }
      return(V1GeneralDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1GeneralData
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1GeneralData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entry_time`)) {
        self$`entry_time` <- this_object$`entry_time`
      }
      if (!is.null(this_object$`recv_time`)) {
        self$`recv_time` <- this_object$`recv_time`
      }
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`asset_id`)) {
        self$`asset_id` <- this_object$`asset_id`
      }
      if (!is.null(this_object$`symbol_id`)) {
        self$`symbol_id` <- this_object$`symbol_id`
      }
      if (!is.null(this_object$`metric_id`)) {
        self$`metric_id` <- this_object$`metric_id`
      }
      if (!is.null(this_object$`value_decimal`)) {
        self$`value_decimal` <- this_object$`value_decimal`
      }
      if (!is.null(this_object$`value_text`)) {
        self$`value_text` <- this_object$`value_text`
      }
      if (!is.null(this_object$`value_time`)) {
        self$`value_time` <- this_object$`value_time`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1GeneralData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1GeneralData
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1GeneralData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entry_time` <- this_object$`entry_time`
      self$`recv_time` <- this_object$`recv_time`
      self$`exchange_id` <- this_object$`exchange_id`
      self$`asset_id` <- this_object$`asset_id`
      self$`symbol_id` <- this_object$`symbol_id`
      self$`metric_id` <- this_object$`metric_id`
      self$`value_decimal` <- this_object$`value_decimal`
      self$`value_text` <- this_object$`value_text`
      self$`value_time` <- this_object$`value_time`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1GeneralData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1GeneralData
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
# V1GeneralData$unlock()
#
## Below is an example to define the print function
# V1GeneralData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1GeneralData$lock()

