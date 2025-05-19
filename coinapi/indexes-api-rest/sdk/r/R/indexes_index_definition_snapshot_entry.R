#' Create a new IndexesIndexDefinitionSnapshotEntry
#'
#' @description
#' IndexesIndexDefinitionSnapshotEntry Class
#'
#' @docType class
#' @title IndexesIndexDefinitionSnapshotEntry
#' @description IndexesIndexDefinitionSnapshotEntry Class
#' @format An \code{R6Class} generator object
#' @field index_id  character [optional]
#' @field timestamp  character [optional]
#' @field value  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IndexesIndexDefinitionSnapshotEntry <- R6::R6Class(
  "IndexesIndexDefinitionSnapshotEntry",
  public = list(
    `index_id` = NULL,
    `timestamp` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new IndexesIndexDefinitionSnapshotEntry class.
    #'
    #' @param index_id index_id
    #' @param timestamp timestamp
    #' @param value value
    #' @param ... Other optional arguments.
    initialize = function(`index_id` = NULL, `timestamp` = NULL, `value` = NULL, ...) {
      if (!is.null(`index_id`)) {
        if (!(is.character(`index_id`) && length(`index_id`) == 1)) {
          stop(paste("Error! Invalid data for `index_id`. Must be a string:", `index_id`))
        }
        self$`index_id` <- `index_id`
      }
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
    #' @return IndexesIndexDefinitionSnapshotEntry as a base R list.
    #' @examples
    #' # convert array of IndexesIndexDefinitionSnapshotEntry (x) to a data frame
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
    #' Convert IndexesIndexDefinitionSnapshotEntry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IndexesIndexDefinitionSnapshotEntryObject <- list()
      if (!is.null(self$`index_id`)) {
        IndexesIndexDefinitionSnapshotEntryObject[["index_id"]] <-
          self$`index_id`
      }
      if (!is.null(self$`timestamp`)) {
        IndexesIndexDefinitionSnapshotEntryObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`value`)) {
        IndexesIndexDefinitionSnapshotEntryObject[["value"]] <-
          self$`value`
      }
      return(IndexesIndexDefinitionSnapshotEntryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexDefinitionSnapshotEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexDefinitionSnapshotEntry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`index_id`)) {
        self$`index_id` <- this_object$`index_id`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
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
    #' @return IndexesIndexDefinitionSnapshotEntry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexDefinitionSnapshotEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexDefinitionSnapshotEntry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`index_id` <- this_object$`index_id`
      self$`timestamp` <- this_object$`timestamp`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to IndexesIndexDefinitionSnapshotEntry and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IndexesIndexDefinitionSnapshotEntry
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
# IndexesIndexDefinitionSnapshotEntry$unlock()
#
## Below is an example to define the print function
# IndexesIndexDefinitionSnapshotEntry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IndexesIndexDefinitionSnapshotEntry$lock()

