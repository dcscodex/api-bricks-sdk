#' Create a new V1ExternalAsset
#'
#' @description
#' Represents an external asset with description.
#'
#' @docType class
#' @title V1ExternalAsset
#' @description V1ExternalAsset Class
#' @format An \code{R6Class} generator object
#' @field asset_id Gets or sets the asset identifier. character [optional]
#' @field description Gets or sets the description of the asset. character [optional]
#' @field asset_type Gets or sets the type/category of the asset. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1ExternalAsset <- R6::R6Class(
  "V1ExternalAsset",
  public = list(
    `asset_id` = NULL,
    `description` = NULL,
    `asset_type` = NULL,

    #' @description
    #' Initialize a new V1ExternalAsset class.
    #'
    #' @param asset_id Gets or sets the asset identifier.
    #' @param description Gets or sets the description of the asset.
    #' @param asset_type Gets or sets the type/category of the asset.
    #' @param ... Other optional arguments.
    initialize = function(`asset_id` = NULL, `description` = NULL, `asset_type` = NULL, ...) {
      if (!is.null(`asset_id`)) {
        if (!(is.character(`asset_id`) && length(`asset_id`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id`. Must be a string:", `asset_id`))
        }
        self$`asset_id` <- `asset_id`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`asset_type`)) {
        if (!(is.character(`asset_type`) && length(`asset_type`) == 1)) {
          stop(paste("Error! Invalid data for `asset_type`. Must be a string:", `asset_type`))
        }
        self$`asset_type` <- `asset_type`
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
    #' @return V1ExternalAsset as a base R list.
    #' @examples
    #' # convert array of V1ExternalAsset (x) to a data frame
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
    #' Convert V1ExternalAsset to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1ExternalAssetObject <- list()
      if (!is.null(self$`asset_id`)) {
        V1ExternalAssetObject[["asset_id"]] <-
          self$`asset_id`
      }
      if (!is.null(self$`description`)) {
        V1ExternalAssetObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`asset_type`)) {
        V1ExternalAssetObject[["asset_type"]] <-
          self$`asset_type`
      }
      return(V1ExternalAssetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExternalAsset
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExternalAsset
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`asset_id`)) {
        self$`asset_id` <- this_object$`asset_id`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`asset_type`)) {
        self$`asset_type` <- this_object$`asset_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1ExternalAsset in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExternalAsset
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExternalAsset
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`asset_id` <- this_object$`asset_id`
      self$`description` <- this_object$`description`
      self$`asset_type` <- this_object$`asset_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1ExternalAsset and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1ExternalAsset
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
# V1ExternalAsset$unlock()
#
## Below is an example to define the print function
# V1ExternalAsset$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1ExternalAsset$lock()

