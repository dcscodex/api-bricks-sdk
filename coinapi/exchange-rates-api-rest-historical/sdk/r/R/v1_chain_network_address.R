#' Create a new V1ChainNetworkAddress
#'
#' @description
#' Contains information about assets' chain network addresses
#'
#' @docType class
#' @title V1ChainNetworkAddress
#' @description V1ChainNetworkAddress Class
#' @format An \code{R6Class} generator object
#' @field chain_id Gets or sets chain id character [optional]
#' @field network_id Gets or sets network id character [optional]
#' @field address Gets or sets chain address character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1ChainNetworkAddress <- R6::R6Class(
  "V1ChainNetworkAddress",
  public = list(
    `chain_id` = NULL,
    `network_id` = NULL,
    `address` = NULL,

    #' @description
    #' Initialize a new V1ChainNetworkAddress class.
    #'
    #' @param chain_id Gets or sets chain id
    #' @param network_id Gets or sets network id
    #' @param address Gets or sets chain address
    #' @param ... Other optional arguments.
    initialize = function(`chain_id` = NULL, `network_id` = NULL, `address` = NULL, ...) {
      if (!is.null(`chain_id`)) {
        if (!(is.character(`chain_id`) && length(`chain_id`) == 1)) {
          stop(paste("Error! Invalid data for `chain_id`. Must be a string:", `chain_id`))
        }
        self$`chain_id` <- `chain_id`
      }
      if (!is.null(`network_id`)) {
        if (!(is.character(`network_id`) && length(`network_id`) == 1)) {
          stop(paste("Error! Invalid data for `network_id`. Must be a string:", `network_id`))
        }
        self$`network_id` <- `network_id`
      }
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
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
    #' @return V1ChainNetworkAddress as a base R list.
    #' @examples
    #' # convert array of V1ChainNetworkAddress (x) to a data frame
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
    #' Convert V1ChainNetworkAddress to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1ChainNetworkAddressObject <- list()
      if (!is.null(self$`chain_id`)) {
        V1ChainNetworkAddressObject[["chain_id"]] <-
          self$`chain_id`
      }
      if (!is.null(self$`network_id`)) {
        V1ChainNetworkAddressObject[["network_id"]] <-
          self$`network_id`
      }
      if (!is.null(self$`address`)) {
        V1ChainNetworkAddressObject[["address"]] <-
          self$`address`
      }
      return(V1ChainNetworkAddressObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ChainNetworkAddress
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ChainNetworkAddress
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`chain_id`)) {
        self$`chain_id` <- this_object$`chain_id`
      }
      if (!is.null(this_object$`network_id`)) {
        self$`network_id` <- this_object$`network_id`
      }
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1ChainNetworkAddress in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ChainNetworkAddress
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ChainNetworkAddress
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`chain_id` <- this_object$`chain_id`
      self$`network_id` <- this_object$`network_id`
      self$`address` <- this_object$`address`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1ChainNetworkAddress and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1ChainNetworkAddress
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
# V1ChainNetworkAddress$unlock()
#
## Below is an example to define the print function
# V1ChainNetworkAddress$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1ChainNetworkAddress$lock()

