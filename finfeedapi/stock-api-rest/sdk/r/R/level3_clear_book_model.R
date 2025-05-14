#' Create a new Level3ClearBookModel
#'
#' @description
#' Represents the response DTO for clear book information
#'
#' @docType class
#' @title Level3ClearBookModel
#' @description Level3ClearBookModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the book was cleared as DateTime character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Level3ClearBookModel <- R6::R6Class(
  "Level3ClearBookModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,

    #' @description
    #' Initialize a new Level3ClearBookModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the book was cleared as DateTime
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, ...) {
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`timestamp_nanos`)) {
        if (!(is.numeric(`timestamp_nanos`) && length(`timestamp_nanos`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp_nanos`. Must be an integer:", `timestamp_nanos`))
        }
        self$`timestamp_nanos` <- `timestamp_nanos`
      }
      if (!is.null(`timestamp`)) {
        if (!is.character(`timestamp`)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
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
    #' @return Level3ClearBookModel as a base R list.
    #' @examples
    #' # convert array of Level3ClearBookModel (x) to a data frame
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
    #' Convert Level3ClearBookModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Level3ClearBookModelObject <- list()
      if (!is.null(self$`symbol`)) {
        Level3ClearBookModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        Level3ClearBookModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        Level3ClearBookModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      return(Level3ClearBookModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Level3ClearBookModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level3ClearBookModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`timestamp_nanos`)) {
        self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Level3ClearBookModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Level3ClearBookModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level3ClearBookModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self
    },

    #' @description
    #' Validate JSON input with respect to Level3ClearBookModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Level3ClearBookModel
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
# Level3ClearBookModel$unlock()
#
## Below is an example to define the print function
# Level3ClearBookModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Level3ClearBookModel$lock()

