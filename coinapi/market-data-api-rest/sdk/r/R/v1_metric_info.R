#' Create a new V1MetricInfo
#'
#' @description
#' Represents a metric information.
#'
#' @docType class
#' @title V1MetricInfo
#' @description V1MetricInfo Class
#' @format An \code{R6Class} generator object
#' @field metric_id Gets or sets the metric identifier. character [optional]
#' @field description Gets or sets the description of the metric. character [optional]
#' @field source_id Gets or sets the source identifier of the metric. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1MetricInfo <- R6::R6Class(
  "V1MetricInfo",
  public = list(
    `metric_id` = NULL,
    `description` = NULL,
    `source_id` = NULL,

    #' @description
    #' Initialize a new V1MetricInfo class.
    #'
    #' @param metric_id Gets or sets the metric identifier.
    #' @param description Gets or sets the description of the metric.
    #' @param source_id Gets or sets the source identifier of the metric.
    #' @param ... Other optional arguments.
    initialize = function(`metric_id` = NULL, `description` = NULL, `source_id` = NULL, ...) {
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
      if (!is.null(`source_id`)) {
        if (!(is.character(`source_id`) && length(`source_id`) == 1)) {
          stop(paste("Error! Invalid data for `source_id`. Must be a string:", `source_id`))
        }
        self$`source_id` <- `source_id`
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
    #' @return V1MetricInfo as a base R list.
    #' @examples
    #' # convert array of V1MetricInfo (x) to a data frame
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
    #' Convert V1MetricInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1MetricInfoObject <- list()
      if (!is.null(self$`metric_id`)) {
        V1MetricInfoObject[["metric_id"]] <-
          self$`metric_id`
      }
      if (!is.null(self$`description`)) {
        V1MetricInfoObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`source_id`)) {
        V1MetricInfoObject[["source_id"]] <-
          self$`source_id`
      }
      return(V1MetricInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1MetricInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1MetricInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metric_id`)) {
        self$`metric_id` <- this_object$`metric_id`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`source_id`)) {
        self$`source_id` <- this_object$`source_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1MetricInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1MetricInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1MetricInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metric_id` <- this_object$`metric_id`
      self$`description` <- this_object$`description`
      self$`source_id` <- this_object$`source_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1MetricInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1MetricInfo
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
# V1MetricInfo$unlock()
#
## Below is an example to define the print function
# V1MetricInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1MetricInfo$lock()

