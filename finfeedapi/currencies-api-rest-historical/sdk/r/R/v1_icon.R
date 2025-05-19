#' Create a new V1Icon
#'
#' @description
#' Represents an icon.
#'
#' @docType class
#' @title V1Icon
#' @description V1Icon Class
#' @format An \code{R6Class} generator object
#' @field exchange_id Gets or sets the exchange ID associated with the icon. character [optional]
#' @field asset_id Gets or sets the asset ID associated with the icon. character [optional]
#' @field url Gets or sets the URL of the icon. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1Icon <- R6::R6Class(
  "V1Icon",
  public = list(
    `exchange_id` = NULL,
    `asset_id` = NULL,
    `url` = NULL,

    #' @description
    #' Initialize a new V1Icon class.
    #'
    #' @param exchange_id Gets or sets the exchange ID associated with the icon.
    #' @param asset_id Gets or sets the asset ID associated with the icon.
    #' @param url Gets or sets the URL of the icon.
    #' @param ... Other optional arguments.
    initialize = function(`exchange_id` = NULL, `asset_id` = NULL, `url` = NULL, ...) {
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
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
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
    #' @return V1Icon as a base R list.
    #' @examples
    #' # convert array of V1Icon (x) to a data frame
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
    #' Convert V1Icon to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1IconObject <- list()
      if (!is.null(self$`exchange_id`)) {
        V1IconObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`asset_id`)) {
        V1IconObject[["asset_id"]] <-
          self$`asset_id`
      }
      if (!is.null(self$`url`)) {
        V1IconObject[["url"]] <-
          self$`url`
      }
      return(V1IconObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Icon
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Icon
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`asset_id`)) {
        self$`asset_id` <- this_object$`asset_id`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1Icon in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Icon
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Icon
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self$`asset_id` <- this_object$`asset_id`
      self$`url` <- this_object$`url`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1Icon and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1Icon
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
# V1Icon$unlock()
#
## Below is an example to define the print function
# V1Icon$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1Icon$lock()

