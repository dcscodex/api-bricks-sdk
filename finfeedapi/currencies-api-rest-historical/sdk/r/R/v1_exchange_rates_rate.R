#' Create a new V1ExchangeRatesRate
#'
#' @description
#' Represents an exchange rate within a collection of exchange rates.
#'
#' @docType class
#' @title V1ExchangeRatesRate
#' @description V1ExchangeRatesRate Class
#' @format An \code{R6Class} generator object
#' @field time Gets or sets the time of the exchange rate. character [optional]
#' @field asset_id_quote Gets or sets the quote asset ID of the exchange rate. character [optional]
#' @field rate Gets or sets the exchange rate value. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1ExchangeRatesRate <- R6::R6Class(
  "V1ExchangeRatesRate",
  public = list(
    `time` = NULL,
    `asset_id_quote` = NULL,
    `rate` = NULL,

    #' @description
    #' Initialize a new V1ExchangeRatesRate class.
    #'
    #' @param time Gets or sets the time of the exchange rate.
    #' @param asset_id_quote Gets or sets the quote asset ID of the exchange rate.
    #' @param rate Gets or sets the exchange rate value.
    #' @param ... Other optional arguments.
    initialize = function(`time` = NULL, `asset_id_quote` = NULL, `rate` = NULL, ...) {
      if (!is.null(`time`)) {
        if (!is.character(`time`)) {
          stop(paste("Error! Invalid data for `time`. Must be a string:", `time`))
        }
        self$`time` <- `time`
      }
      if (!is.null(`asset_id_quote`)) {
        if (!(is.character(`asset_id_quote`) && length(`asset_id_quote`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_quote`. Must be a string:", `asset_id_quote`))
        }
        self$`asset_id_quote` <- `asset_id_quote`
      }
      if (!is.null(`rate`)) {
        if (!(is.numeric(`rate`) && length(`rate`) == 1)) {
          stop(paste("Error! Invalid data for `rate`. Must be a number:", `rate`))
        }
        self$`rate` <- `rate`
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
    #' @return V1ExchangeRatesRate as a base R list.
    #' @examples
    #' # convert array of V1ExchangeRatesRate (x) to a data frame
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
    #' Convert V1ExchangeRatesRate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1ExchangeRatesRateObject <- list()
      if (!is.null(self$`time`)) {
        V1ExchangeRatesRateObject[["time"]] <-
          self$`time`
      }
      if (!is.null(self$`asset_id_quote`)) {
        V1ExchangeRatesRateObject[["asset_id_quote"]] <-
          self$`asset_id_quote`
      }
      if (!is.null(self$`rate`)) {
        V1ExchangeRatesRateObject[["rate"]] <-
          self$`rate`
      }
      return(V1ExchangeRatesRateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExchangeRatesRate
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExchangeRatesRate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`time`)) {
        self$`time` <- this_object$`time`
      }
      if (!is.null(this_object$`asset_id_quote`)) {
        self$`asset_id_quote` <- this_object$`asset_id_quote`
      }
      if (!is.null(this_object$`rate`)) {
        self$`rate` <- this_object$`rate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1ExchangeRatesRate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExchangeRatesRate
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExchangeRatesRate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`time` <- this_object$`time`
      self$`asset_id_quote` <- this_object$`asset_id_quote`
      self$`rate` <- this_object$`rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1ExchangeRatesRate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1ExchangeRatesRate
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
# V1ExchangeRatesRate$unlock()
#
## Below is an example to define the print function
# V1ExchangeRatesRate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1ExchangeRatesRate$lock()

