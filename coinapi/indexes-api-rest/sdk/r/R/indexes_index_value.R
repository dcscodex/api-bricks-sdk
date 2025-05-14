#' Create a new IndexesIndexValue
#'
#' @description
#' IndexesIndexValue Class
#'
#' @docType class
#' @title IndexesIndexValue
#' @description IndexesIndexValue Class
#' @format An \code{R6Class} generator object
#' @field timestamp  character [optional]
#' @field value  numeric [optional]
#' @field composition  list(\link{IndexesIndexValueComponent}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IndexesIndexValue <- R6::R6Class(
  "IndexesIndexValue",
  public = list(
    `timestamp` = NULL,
    `value` = NULL,
    `composition` = NULL,

    #' @description
    #' Initialize a new IndexesIndexValue class.
    #'
    #' @param timestamp timestamp
    #' @param value value
    #' @param composition composition
    #' @param ... Other optional arguments.
    initialize = function(`timestamp` = NULL, `value` = NULL, `composition` = NULL, ...) {
      if (!is.null(`timestamp`)) {
        if (!is.character(`timestamp`)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`value`)) {
        if (!(is.numeric(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a number:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`composition`)) {
        stopifnot(is.vector(`composition`), length(`composition`) != 0)
        sapply(`composition`, function(x) stopifnot(R6::is.R6(x)))
        self$`composition` <- `composition`
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
    #' @return IndexesIndexValue as a base R list.
    #' @examples
    #' # convert array of IndexesIndexValue (x) to a data frame
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
    #' Convert IndexesIndexValue to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IndexesIndexValueObject <- list()
      if (!is.null(self$`timestamp`)) {
        IndexesIndexValueObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`value`)) {
        IndexesIndexValueObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`composition`)) {
        IndexesIndexValueObject[["composition"]] <-
          lapply(self$`composition`, function(x) x$toSimpleType())
      }
      return(IndexesIndexValueObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexValue
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`composition`)) {
        self$`composition` <- ApiClient$new()$deserializeObj(this_object$`composition`, "array[IndexesIndexValueComponent]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IndexesIndexValue in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexValue
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexValue
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`timestamp` <- this_object$`timestamp`
      self$`value` <- this_object$`value`
      self$`composition` <- ApiClient$new()$deserializeObj(this_object$`composition`, "array[IndexesIndexValueComponent]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to IndexesIndexValue and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IndexesIndexValue
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
# IndexesIndexValue$unlock()
#
## Below is an example to define the print function
# IndexesIndexValue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IndexesIndexValue$lock()

