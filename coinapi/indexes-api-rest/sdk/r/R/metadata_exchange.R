#' Create a new MetadataExchange
#'
#' @description
#' Represents an exchange.
#'
#' @docType class
#' @title MetadataExchange
#' @description MetadataExchange Class
#' @format An \code{R6Class} generator object
#' @field exchange_id Gets or sets the exchange ID. character [optional]
#' @field website Gets or sets the website URL of the exchange. character [optional]
#' @field name Gets or sets the name of the exchange. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MetadataExchange <- R6::R6Class(
  "MetadataExchange",
  public = list(
    `exchange_id` = NULL,
    `website` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new MetadataExchange class.
    #'
    #' @param exchange_id Gets or sets the exchange ID.
    #' @param website Gets or sets the website URL of the exchange.
    #' @param name Gets or sets the name of the exchange.
    #' @param ... Other optional arguments.
    initialize = function(`exchange_id` = NULL, `website` = NULL, `name` = NULL, ...) {
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`website`)) {
        if (!(is.character(`website`) && length(`website`) == 1)) {
          stop(paste("Error! Invalid data for `website`. Must be a string:", `website`))
        }
        self$`website` <- `website`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return MetadataExchange as a base R list.
    #' @examples
    #' # convert array of MetadataExchange (x) to a data frame
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
    #' Convert MetadataExchange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MetadataExchangeObject <- list()
      if (!is.null(self$`exchange_id`)) {
        MetadataExchangeObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`website`)) {
        MetadataExchangeObject[["website"]] <-
          self$`website`
      }
      if (!is.null(self$`name`)) {
        MetadataExchangeObject[["name"]] <-
          self$`name`
      }
      return(MetadataExchangeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MetadataExchange
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetadataExchange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`website`)) {
        self$`website` <- this_object$`website`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MetadataExchange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MetadataExchange
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetadataExchange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self$`website` <- this_object$`website`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to MetadataExchange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MetadataExchange
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
# MetadataExchange$unlock()
#
## Below is an example to define the print function
# MetadataExchange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MetadataExchange$lock()

