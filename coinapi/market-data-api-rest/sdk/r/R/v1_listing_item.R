#' Create a new V1ListingItem
#'
#' @description
#' Represents a listing item.
#'
#' @docType class
#' @title V1ListingItem
#' @description V1ListingItem Class
#' @format An \code{R6Class} generator object
#' @field metric_id Gets or sets the metric ID. character [optional]
#' @field symbol_id Gets or sets the symbol ID. character [optional]
#' @field symbol_id_external Gets or sets the symbol ID from the exchange. character [optional]
#' @field exchange_id Gets or sets the exchange ID. character [optional]
#' @field asset_id Gets or sets the asset ID. character [optional]
#' @field asset_id_external Gets or sets the asset ID from the exchange. character [optional]
#' @field chain_id Gets or sets the chain id. character [optional]
#' @field network_id Gets or sets the network id. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1ListingItem <- R6::R6Class(
  "V1ListingItem",
  public = list(
    `metric_id` = NULL,
    `symbol_id` = NULL,
    `symbol_id_external` = NULL,
    `exchange_id` = NULL,
    `asset_id` = NULL,
    `asset_id_external` = NULL,
    `chain_id` = NULL,
    `network_id` = NULL,

    #' @description
    #' Initialize a new V1ListingItem class.
    #'
    #' @param metric_id Gets or sets the metric ID.
    #' @param symbol_id Gets or sets the symbol ID.
    #' @param symbol_id_external Gets or sets the symbol ID from the exchange.
    #' @param exchange_id Gets or sets the exchange ID.
    #' @param asset_id Gets or sets the asset ID.
    #' @param asset_id_external Gets or sets the asset ID from the exchange.
    #' @param chain_id Gets or sets the chain id.
    #' @param network_id Gets or sets the network id.
    #' @param ... Other optional arguments.
    initialize = function(`metric_id` = NULL, `symbol_id` = NULL, `symbol_id_external` = NULL, `exchange_id` = NULL, `asset_id` = NULL, `asset_id_external` = NULL, `chain_id` = NULL, `network_id` = NULL, ...) {
      if (!is.null(`metric_id`)) {
        if (!(is.character(`metric_id`) && length(`metric_id`) == 1)) {
          stop(paste("Error! Invalid data for `metric_id`. Must be a string:", `metric_id`))
        }
        self$`metric_id` <- `metric_id`
      }
      if (!is.null(`symbol_id`)) {
        if (!(is.character(`symbol_id`) && length(`symbol_id`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id`. Must be a string:", `symbol_id`))
        }
        self$`symbol_id` <- `symbol_id`
      }
      if (!is.null(`symbol_id_external`)) {
        if (!(is.character(`symbol_id_external`) && length(`symbol_id_external`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id_external`. Must be a string:", `symbol_id_external`))
        }
        self$`symbol_id_external` <- `symbol_id_external`
      }
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
      if (!is.null(`asset_id_external`)) {
        if (!(is.character(`asset_id_external`) && length(`asset_id_external`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_external`. Must be a string:", `asset_id_external`))
        }
        self$`asset_id_external` <- `asset_id_external`
      }
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
    #' @return V1ListingItem as a base R list.
    #' @examples
    #' # convert array of V1ListingItem (x) to a data frame
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
    #' Convert V1ListingItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1ListingItemObject <- list()
      if (!is.null(self$`metric_id`)) {
        V1ListingItemObject[["metric_id"]] <-
          self$`metric_id`
      }
      if (!is.null(self$`symbol_id`)) {
        V1ListingItemObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`symbol_id_external`)) {
        V1ListingItemObject[["symbol_id_external"]] <-
          self$`symbol_id_external`
      }
      if (!is.null(self$`exchange_id`)) {
        V1ListingItemObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`asset_id`)) {
        V1ListingItemObject[["asset_id"]] <-
          self$`asset_id`
      }
      if (!is.null(self$`asset_id_external`)) {
        V1ListingItemObject[["asset_id_external"]] <-
          self$`asset_id_external`
      }
      if (!is.null(self$`chain_id`)) {
        V1ListingItemObject[["chain_id"]] <-
          self$`chain_id`
      }
      if (!is.null(self$`network_id`)) {
        V1ListingItemObject[["network_id"]] <-
          self$`network_id`
      }
      return(V1ListingItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ListingItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ListingItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metric_id`)) {
        self$`metric_id` <- this_object$`metric_id`
      }
      if (!is.null(this_object$`symbol_id`)) {
        self$`symbol_id` <- this_object$`symbol_id`
      }
      if (!is.null(this_object$`symbol_id_external`)) {
        self$`symbol_id_external` <- this_object$`symbol_id_external`
      }
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`asset_id`)) {
        self$`asset_id` <- this_object$`asset_id`
      }
      if (!is.null(this_object$`asset_id_external`)) {
        self$`asset_id_external` <- this_object$`asset_id_external`
      }
      if (!is.null(this_object$`chain_id`)) {
        self$`chain_id` <- this_object$`chain_id`
      }
      if (!is.null(this_object$`network_id`)) {
        self$`network_id` <- this_object$`network_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1ListingItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ListingItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ListingItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metric_id` <- this_object$`metric_id`
      self$`symbol_id` <- this_object$`symbol_id`
      self$`symbol_id_external` <- this_object$`symbol_id_external`
      self$`exchange_id` <- this_object$`exchange_id`
      self$`asset_id` <- this_object$`asset_id`
      self$`asset_id_external` <- this_object$`asset_id_external`
      self$`chain_id` <- this_object$`chain_id`
      self$`network_id` <- this_object$`network_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1ListingItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1ListingItem
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
# V1ListingItem$unlock()
#
## Below is an example to define the print function
# V1ListingItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1ListingItem$lock()

