#' Create a new V1ExternalExchange
#'
#' @description
#' Represents an exchange with external mapping for metrics.
#'
#' @docType class
#' @title V1ExternalExchange
#' @description V1ExternalExchange Class
#' @format An \code{R6Class} generator object
#' @field exchange_id Gets or sets the internal exchange identifier. character [optional]
#' @field external_name Gets or sets the external protocol name/slug. character [optional]
#' @field description Gets or sets the description of the exchange. character [optional]
#' @field source_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1ExternalExchange <- R6::R6Class(
  "V1ExternalExchange",
  public = list(
    `exchange_id` = NULL,
    `external_name` = NULL,
    `description` = NULL,
    `source_id` = NULL,

    #' @description
    #' Initialize a new V1ExternalExchange class.
    #'
    #' @param exchange_id Gets or sets the internal exchange identifier.
    #' @param external_name Gets or sets the external protocol name/slug.
    #' @param description Gets or sets the description of the exchange.
    #' @param source_id source_id
    #' @param ... Other optional arguments.
    initialize = function(`exchange_id` = NULL, `external_name` = NULL, `description` = NULL, `source_id` = NULL, ...) {
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`external_name`)) {
        if (!(is.character(`external_name`) && length(`external_name`) == 1)) {
          stop(paste("Error! Invalid data for `external_name`. Must be a string:", `external_name`))
        }
        self$`external_name` <- `external_name`
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
    #' @return V1ExternalExchange as a base R list.
    #' @examples
    #' # convert array of V1ExternalExchange (x) to a data frame
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
    #' Convert V1ExternalExchange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1ExternalExchangeObject <- list()
      if (!is.null(self$`exchange_id`)) {
        V1ExternalExchangeObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`external_name`)) {
        V1ExternalExchangeObject[["external_name"]] <-
          self$`external_name`
      }
      if (!is.null(self$`description`)) {
        V1ExternalExchangeObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`source_id`)) {
        V1ExternalExchangeObject[["source_id"]] <-
          self$`source_id`
      }
      return(V1ExternalExchangeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExternalExchange
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExternalExchange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`external_name`)) {
        self$`external_name` <- this_object$`external_name`
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
    #' @return V1ExternalExchange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExternalExchange
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExternalExchange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self$`external_name` <- this_object$`external_name`
      self$`description` <- this_object$`description`
      self$`source_id` <- this_object$`source_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1ExternalExchange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1ExternalExchange
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
# V1ExternalExchange$unlock()
#
## Below is an example to define the print function
# V1ExternalExchange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1ExternalExchange$lock()

