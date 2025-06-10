#' Create a new V1TimeseriesPeriod
#'
#' @description
#' Represents a timeseries period used in exchange rate data.
#'
#' @docType class
#' @title V1TimeseriesPeriod
#' @description V1TimeseriesPeriod Class
#' @format An \code{R6Class} generator object
#' @field period_id The period ID. character [optional]
#' @field length_seconds The length of the period in seconds. integer [optional]
#' @field length_months The length of the period in months. integer [optional]
#' @field unit_count The unit count. integer [optional]
#' @field unit_name The unit name. character [optional]
#' @field display_name The display name of the timeseries period. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1TimeseriesPeriod <- R6::R6Class(
  "V1TimeseriesPeriod",
  public = list(
    `period_id` = NULL,
    `length_seconds` = NULL,
    `length_months` = NULL,
    `unit_count` = NULL,
    `unit_name` = NULL,
    `display_name` = NULL,

    #' @description
    #' Initialize a new V1TimeseriesPeriod class.
    #'
    #' @param period_id The period ID.
    #' @param length_seconds The length of the period in seconds.
    #' @param length_months The length of the period in months.
    #' @param unit_count The unit count.
    #' @param unit_name The unit name.
    #' @param display_name The display name of the timeseries period.
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
    #' @return V1TimeseriesPeriod as a base R list.
    #' @examples
    #' # convert array of V1TimeseriesPeriod (x) to a data frame
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
    #' Convert V1TimeseriesPeriod to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1TimeseriesPeriodObject <- list()
      if (!is.null(self$`period_id`)) {
        V1TimeseriesPeriodObject[["period_id"]] <-
          self$`period_id`
      }
      if (!is.null(self$`length_seconds`)) {
        V1TimeseriesPeriodObject[["length_seconds"]] <-
          self$`length_seconds`
      }
      if (!is.null(self$`length_months`)) {
        V1TimeseriesPeriodObject[["length_months"]] <-
          self$`length_months`
      }
      if (!is.null(self$`unit_count`)) {
        V1TimeseriesPeriodObject[["unit_count"]] <-
          self$`unit_count`
      }
      if (!is.null(self$`unit_name`)) {
        V1TimeseriesPeriodObject[["unit_name"]] <-
          self$`unit_name`
      }
      if (!is.null(self$`display_name`)) {
        V1TimeseriesPeriodObject[["display_name"]] <-
          self$`display_name`
      }
      return(V1TimeseriesPeriodObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1TimeseriesPeriod
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1TimeseriesPeriod
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
    #' @return V1TimeseriesPeriod in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1TimeseriesPeriod
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1TimeseriesPeriod
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
    #' Validate JSON input with respect to V1TimeseriesPeriod and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1TimeseriesPeriod
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
# V1TimeseriesPeriod$unlock()
#
## Below is an example to define the print function
# V1TimeseriesPeriod$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1TimeseriesPeriod$lock()

