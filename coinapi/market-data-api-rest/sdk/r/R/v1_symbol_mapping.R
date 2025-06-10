#' Create a new V1SymbolMapping
#'
#' @description
#' Represents symbol mapping information for exchange symbols.
#'
#' @docType class
#' @title V1SymbolMapping
#' @description V1SymbolMapping Class
#' @format An \code{R6Class} generator object
#' @field symbol_id The symbol ID. character [optional]
#' @field symbol_id_exchange The exchange-specific symbol ID. character [optional]
#' @field coinapi_datainfo_id The CoinAPI DataInfo ID. integer [optional]
#' @field asset_id_base_exchange The exchange-specific base asset ID. character [optional]
#' @field asset_id_quote_exchange The exchange-specific quote asset ID. character [optional]
#' @field asset_id_base The base asset ID. character [optional]
#' @field asset_id_quote The quote asset ID. character [optional]
#' @field price_precision The price precision. numeric [optional]
#' @field size_precision The size precision. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1SymbolMapping <- R6::R6Class(
  "V1SymbolMapping",
  public = list(
    `symbol_id` = NULL,
    `symbol_id_exchange` = NULL,
    `coinapi_datainfo_id` = NULL,
    `asset_id_base_exchange` = NULL,
    `asset_id_quote_exchange` = NULL,
    `asset_id_base` = NULL,
    `asset_id_quote` = NULL,
    `price_precision` = NULL,
    `size_precision` = NULL,

    #' @description
    #' Initialize a new V1SymbolMapping class.
    #'
    #' @param symbol_id The symbol ID.
    #' @param symbol_id_exchange The exchange-specific symbol ID.
    #' @param coinapi_datainfo_id The CoinAPI DataInfo ID.
    #' @param asset_id_base_exchange The exchange-specific base asset ID.
    #' @param asset_id_quote_exchange The exchange-specific quote asset ID.
    #' @param asset_id_base The base asset ID.
    #' @param asset_id_quote The quote asset ID.
    #' @param price_precision The price precision.
    #' @param size_precision The size precision.
    #' @param ... Other optional arguments.
    initialize = function(`symbol_id` = NULL, `symbol_id_exchange` = NULL, `coinapi_datainfo_id` = NULL, `asset_id_base_exchange` = NULL, `asset_id_quote_exchange` = NULL, `asset_id_base` = NULL, `asset_id_quote` = NULL, `price_precision` = NULL, `size_precision` = NULL, ...) {
      if (!is.null(`symbol_id`)) {
        if (!(is.character(`symbol_id`) && length(`symbol_id`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id`. Must be a string:", `symbol_id`))
        }
        self$`symbol_id` <- `symbol_id`
      }
      if (!is.null(`symbol_id_exchange`)) {
        if (!(is.character(`symbol_id_exchange`) && length(`symbol_id_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id_exchange`. Must be a string:", `symbol_id_exchange`))
        }
        self$`symbol_id_exchange` <- `symbol_id_exchange`
      }
      if (!is.null(`coinapi_datainfo_id`)) {
        if (!(is.numeric(`coinapi_datainfo_id`) && length(`coinapi_datainfo_id`) == 1)) {
          stop(paste("Error! Invalid data for `coinapi_datainfo_id`. Must be an integer:", `coinapi_datainfo_id`))
        }
        self$`coinapi_datainfo_id` <- `coinapi_datainfo_id`
      }
      if (!is.null(`asset_id_base_exchange`)) {
        if (!(is.character(`asset_id_base_exchange`) && length(`asset_id_base_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_base_exchange`. Must be a string:", `asset_id_base_exchange`))
        }
        self$`asset_id_base_exchange` <- `asset_id_base_exchange`
      }
      if (!is.null(`asset_id_quote_exchange`)) {
        if (!(is.character(`asset_id_quote_exchange`) && length(`asset_id_quote_exchange`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_quote_exchange`. Must be a string:", `asset_id_quote_exchange`))
        }
        self$`asset_id_quote_exchange` <- `asset_id_quote_exchange`
      }
      if (!is.null(`asset_id_base`)) {
        if (!(is.character(`asset_id_base`) && length(`asset_id_base`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_base`. Must be a string:", `asset_id_base`))
        }
        self$`asset_id_base` <- `asset_id_base`
      }
      if (!is.null(`asset_id_quote`)) {
        if (!(is.character(`asset_id_quote`) && length(`asset_id_quote`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_quote`. Must be a string:", `asset_id_quote`))
        }
        self$`asset_id_quote` <- `asset_id_quote`
      }
      if (!is.null(`price_precision`)) {
        if (!(is.numeric(`price_precision`) && length(`price_precision`) == 1)) {
          stop(paste("Error! Invalid data for `price_precision`. Must be a number:", `price_precision`))
        }
        self$`price_precision` <- `price_precision`
      }
      if (!is.null(`size_precision`)) {
        if (!(is.numeric(`size_precision`) && length(`size_precision`) == 1)) {
          stop(paste("Error! Invalid data for `size_precision`. Must be a number:", `size_precision`))
        }
        self$`size_precision` <- `size_precision`
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
    #' @return V1SymbolMapping as a base R list.
    #' @examples
    #' # convert array of V1SymbolMapping (x) to a data frame
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
    #' Convert V1SymbolMapping to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1SymbolMappingObject <- list()
      if (!is.null(self$`symbol_id`)) {
        V1SymbolMappingObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`symbol_id_exchange`)) {
        V1SymbolMappingObject[["symbol_id_exchange"]] <-
          self$`symbol_id_exchange`
      }
      if (!is.null(self$`coinapi_datainfo_id`)) {
        V1SymbolMappingObject[["coinapi_datainfo_id"]] <-
          self$`coinapi_datainfo_id`
      }
      if (!is.null(self$`asset_id_base_exchange`)) {
        V1SymbolMappingObject[["asset_id_base_exchange"]] <-
          self$`asset_id_base_exchange`
      }
      if (!is.null(self$`asset_id_quote_exchange`)) {
        V1SymbolMappingObject[["asset_id_quote_exchange"]] <-
          self$`asset_id_quote_exchange`
      }
      if (!is.null(self$`asset_id_base`)) {
        V1SymbolMappingObject[["asset_id_base"]] <-
          self$`asset_id_base`
      }
      if (!is.null(self$`asset_id_quote`)) {
        V1SymbolMappingObject[["asset_id_quote"]] <-
          self$`asset_id_quote`
      }
      if (!is.null(self$`price_precision`)) {
        V1SymbolMappingObject[["price_precision"]] <-
          self$`price_precision`
      }
      if (!is.null(self$`size_precision`)) {
        V1SymbolMappingObject[["size_precision"]] <-
          self$`size_precision`
      }
      return(V1SymbolMappingObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1SymbolMapping
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1SymbolMapping
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol_id`)) {
        self$`symbol_id` <- this_object$`symbol_id`
      }
      if (!is.null(this_object$`symbol_id_exchange`)) {
        self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      }
      if (!is.null(this_object$`coinapi_datainfo_id`)) {
        self$`coinapi_datainfo_id` <- this_object$`coinapi_datainfo_id`
      }
      if (!is.null(this_object$`asset_id_base_exchange`)) {
        self$`asset_id_base_exchange` <- this_object$`asset_id_base_exchange`
      }
      if (!is.null(this_object$`asset_id_quote_exchange`)) {
        self$`asset_id_quote_exchange` <- this_object$`asset_id_quote_exchange`
      }
      if (!is.null(this_object$`asset_id_base`)) {
        self$`asset_id_base` <- this_object$`asset_id_base`
      }
      if (!is.null(this_object$`asset_id_quote`)) {
        self$`asset_id_quote` <- this_object$`asset_id_quote`
      }
      if (!is.null(this_object$`price_precision`)) {
        self$`price_precision` <- this_object$`price_precision`
      }
      if (!is.null(this_object$`size_precision`)) {
        self$`size_precision` <- this_object$`size_precision`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1SymbolMapping in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1SymbolMapping
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1SymbolMapping
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id` <- this_object$`symbol_id`
      self$`symbol_id_exchange` <- this_object$`symbol_id_exchange`
      self$`coinapi_datainfo_id` <- this_object$`coinapi_datainfo_id`
      self$`asset_id_base_exchange` <- this_object$`asset_id_base_exchange`
      self$`asset_id_quote_exchange` <- this_object$`asset_id_quote_exchange`
      self$`asset_id_base` <- this_object$`asset_id_base`
      self$`asset_id_quote` <- this_object$`asset_id_quote`
      self$`price_precision` <- this_object$`price_precision`
      self$`size_precision` <- this_object$`size_precision`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1SymbolMapping and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1SymbolMapping
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
# V1SymbolMapping$unlock()
#
## Below is an example to define the print function
# V1SymbolMapping$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1SymbolMapping$lock()

