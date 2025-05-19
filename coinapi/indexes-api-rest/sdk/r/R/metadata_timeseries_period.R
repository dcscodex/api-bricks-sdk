#' Create a new MetadataTimeseriesPeriod
#'
#' @description
#' Represents a timeseries period used in exchange rate data.
#'
#' @docType class
#' @title MetadataTimeseriesPeriod
#' @description MetadataTimeseriesPeriod Class
#' @format An \code{R6Class} generator object
#' @field period_id Gets or sets the period ID. character [optional]
#' @field length_seconds Gets or sets the length of the period in seconds. integer [optional]
#' @field length_months Gets or sets the length of the period in months. integer [optional]
#' @field unit_count Gets or sets the unit count. integer [optional]
#' @field unit_name Gets or sets the unit name. character [optional]
#' @field display_name Gets or sets the display name of the timeseries period. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MetadataTimeseriesPeriod <- R6::R6Class(
  "MetadataTimeseriesPeriod",
  public = list(
    `period_id` = NULL,
    `length_seconds` = NULL,
    `length_months` = NULL,
    `unit_count` = NULL,
    `unit_name` = NULL,
    `display_name` = NULL,

    #' @description
    #' Initialize a new MetadataTimeseriesPeriod class.
    #'
    #' @param period_id Gets or sets the period ID.
    #' @param length_seconds Gets or sets the length of the period in seconds.
    #' @param length_months Gets or sets the length of the period in months.
    #' @param unit_count Gets or sets the unit count.
    #' @param unit_name Gets or sets the unit name.
    #' @param display_name Gets or sets the display name of the timeseries period.
    #' @param ... Other optional arguments.
    initialize = function(`period_id` = NULL, `length_seconds` = NULL, `length_months` = NULL, `unit_count` = NULL, `unit_name` = NULL, `display_name` = NULL, ...) {
      if (!is.null(`period_id`)) {
        if (!(is.character(`period_id`) && length(`period_id`) == 1)) {
          stop(paste("Error! Invalid data for `period_id`. Must be a string:", `period_id`))
        }
        self$`period_id` <- `period_id`
      }
      if (!is.null(`length_seconds`)) {
        if (!(is.numeric(`length_seconds`) && length(`length_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `length_seconds`. Must be an integer:", `length_seconds`))
        }
        self$`length_seconds` <- `length_seconds`
      }
      if (!is.null(`length_months`)) {
        if (!(is.numeric(`length_months`) && length(`length_months`) == 1)) {
          stop(paste("Error! Invalid data for `length_months`. Must be an integer:", `length_months`))
        }
        self$`length_months` <- `length_months`
      }
      if (!is.null(`unit_count`)) {
        if (!(is.numeric(`unit_count`) && length(`unit_count`) == 1)) {
          stop(paste("Error! Invalid data for `unit_count`. Must be an integer:", `unit_count`))
        }
        self$`unit_count` <- `unit_count`
      }
      if (!is.null(`unit_name`)) {
        if (!(is.character(`unit_name`) && length(`unit_name`) == 1)) {
          stop(paste("Error! Invalid data for `unit_name`. Must be a string:", `unit_name`))
        }
        self$`unit_name` <- `unit_name`
      }
      if (!is.null(`display_name`)) {
        if (!(is.character(`display_name`) && length(`display_name`) == 1)) {
          stop(paste("Error! Invalid data for `display_name`. Must be a string:", `display_name`))
        }
        self$`display_name` <- `display_name`
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
    #' @return MetadataTimeseriesPeriod as a base R list.
    #' @examples
    #' # convert array of MetadataTimeseriesPeriod (x) to a data frame
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
    #' Convert MetadataTimeseriesPeriod to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MetadataTimeseriesPeriodObject <- list()
      if (!is.null(self$`period_id`)) {
        MetadataTimeseriesPeriodObject[["period_id"]] <-
          self$`period_id`
      }
      if (!is.null(self$`length_seconds`)) {
        MetadataTimeseriesPeriodObject[["length_seconds"]] <-
          self$`length_seconds`
      }
      if (!is.null(self$`length_months`)) {
        MetadataTimeseriesPeriodObject[["length_months"]] <-
          self$`length_months`
      }
      if (!is.null(self$`unit_count`)) {
        MetadataTimeseriesPeriodObject[["unit_count"]] <-
          self$`unit_count`
      }
      if (!is.null(self$`unit_name`)) {
        MetadataTimeseriesPeriodObject[["unit_name"]] <-
          self$`unit_name`
      }
      if (!is.null(self$`display_name`)) {
        MetadataTimeseriesPeriodObject[["display_name"]] <-
          self$`display_name`
      }
      return(MetadataTimeseriesPeriodObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MetadataTimeseriesPeriod
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetadataTimeseriesPeriod
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`period_id`)) {
        self$`period_id` <- this_object$`period_id`
      }
      if (!is.null(this_object$`length_seconds`)) {
        self$`length_seconds` <- this_object$`length_seconds`
      }
      if (!is.null(this_object$`length_months`)) {
        self$`length_months` <- this_object$`length_months`
      }
      if (!is.null(this_object$`unit_count`)) {
        self$`unit_count` <- this_object$`unit_count`
      }
      if (!is.null(this_object$`unit_name`)) {
        self$`unit_name` <- this_object$`unit_name`
      }
      if (!is.null(this_object$`display_name`)) {
        self$`display_name` <- this_object$`display_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MetadataTimeseriesPeriod in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MetadataTimeseriesPeriod
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetadataTimeseriesPeriod
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`period_id` <- this_object$`period_id`
      self$`length_seconds` <- this_object$`length_seconds`
      self$`length_months` <- this_object$`length_months`
      self$`unit_count` <- this_object$`unit_count`
      self$`unit_name` <- this_object$`unit_name`
      self$`display_name` <- this_object$`display_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to MetadataTimeseriesPeriod and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MetadataTimeseriesPeriod
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
# MetadataTimeseriesPeriod$unlock()
#
## Below is an example to define the print function
# MetadataTimeseriesPeriod$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MetadataTimeseriesPeriod$lock()

