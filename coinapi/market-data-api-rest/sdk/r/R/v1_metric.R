#' Create a new V1Metric
#'
#' @description
#' Represents a metric.
#'
#' @docType class
#' @title V1Metric
#' @description V1Metric Class
#' @format An \code{R6Class} generator object
#' @field metric_id Gets or sets the metric ID. character [optional]
#' @field description Gets or sets the metric description. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1Metric <- R6::R6Class(
  "V1Metric",
  public = list(
    `metric_id` = NULL,
    `description` = NULL,

    #' @description
    #' Initialize a new V1Metric class.
    #'
    #' @param metric_id Gets or sets the metric ID.
    #' @param description Gets or sets the metric description.
    #' @param ... Other optional arguments.
    initialize = function(`metric_id` = NULL, `description` = NULL, ...) {
      if (!is.null(`metric_id`)) {
        if (!(is.character(`metric_id`) && length(`metric_id`) == 1)) {
          stop(paste("Error! Invalid data for `metric_id`. Must be a string:", `metric_id`))
        }
        self$`metric_id` <- `metric_id`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return V1Metric as a base R list.
    #' @examples
    #' # convert array of V1Metric (x) to a data frame
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
    #' Convert V1Metric to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1MetricObject <- list()
      if (!is.null(self$`metric_id`)) {
        V1MetricObject[["metric_id"]] <-
          self$`metric_id`
      }
      if (!is.null(self$`description`)) {
        V1MetricObject[["description"]] <-
          self$`description`
      }
      return(V1MetricObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Metric
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Metric
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metric_id`)) {
        self$`metric_id` <- this_object$`metric_id`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1Metric in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Metric
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Metric
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metric_id` <- this_object$`metric_id`
      self$`description` <- this_object$`description`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1Metric and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1Metric
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
# V1Metric$unlock()
#
## Below is an example to define the print function
# V1Metric$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1Metric$lock()

