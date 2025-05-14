#' Create a new IndexesIndexValueComponent
#'
#' @description
#' IndexesIndexValueComponent Class
#'
#' @docType class
#' @title IndexesIndexValueComponent
#' @description IndexesIndexValueComponent Class
#' @format An \code{R6Class} generator object
#' @field component_id  character [optional]
#' @field component_value  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IndexesIndexValueComponent <- R6::R6Class(
  "IndexesIndexValueComponent",
  public = list(
    `component_id` = NULL,
    `component_value` = NULL,

    #' @description
    #' Initialize a new IndexesIndexValueComponent class.
    #'
    #' @param component_id component_id
    #' @param component_value component_value
    #' @param ... Other optional arguments.
    initialize = function(`component_id` = NULL, `component_value` = NULL, ...) {
      if (!is.null(`component_id`)) {
        if (!(is.character(`component_id`) && length(`component_id`) == 1)) {
          stop(paste("Error! Invalid data for `component_id`. Must be a string:", `component_id`))
        }
        self$`component_id` <- `component_id`
      }
      if (!is.null(`component_value`)) {
        if (!(is.numeric(`component_value`) && length(`component_value`) == 1)) {
          stop(paste("Error! Invalid data for `component_value`. Must be a number:", `component_value`))
        }
        self$`component_value` <- `component_value`
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
    #' @return IndexesIndexValueComponent as a base R list.
    #' @examples
    #' # convert array of IndexesIndexValueComponent (x) to a data frame
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
    #' Convert IndexesIndexValueComponent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IndexesIndexValueComponentObject <- list()
      if (!is.null(self$`component_id`)) {
        IndexesIndexValueComponentObject[["component_id"]] <-
          self$`component_id`
      }
      if (!is.null(self$`component_value`)) {
        IndexesIndexValueComponentObject[["component_value"]] <-
          self$`component_value`
      }
      return(IndexesIndexValueComponentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexValueComponent
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexValueComponent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`component_id`)) {
        self$`component_id` <- this_object$`component_id`
      }
      if (!is.null(this_object$`component_value`)) {
        self$`component_value` <- this_object$`component_value`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IndexesIndexValueComponent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexValueComponent
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexValueComponent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`component_id` <- this_object$`component_id`
      self$`component_value` <- this_object$`component_value`
      self
    },

    #' @description
    #' Validate JSON input with respect to IndexesIndexValueComponent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IndexesIndexValueComponent
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
# IndexesIndexValueComponent$unlock()
#
## Below is an example to define the print function
# IndexesIndexValueComponent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IndexesIndexValueComponent$lock()

