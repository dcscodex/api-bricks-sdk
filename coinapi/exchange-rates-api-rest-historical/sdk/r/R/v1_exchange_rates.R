#' Create a new V1ExchangeRates
#'
#' @description
#' Represents exchange rates for a specific base asset.
#'
#' @docType class
#' @title V1ExchangeRates
#' @description V1ExchangeRates Class
#' @format An \code{R6Class} generator object
#' @field asset_id_base Gets or sets the base asset ID. character [optional]
#' @field rates Gets or sets the list of exchange rates. list(\link{V1ExchangeRatesRate}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1ExchangeRates <- R6::R6Class(
  "V1ExchangeRates",
  public = list(
    `asset_id_base` = NULL,
    `rates` = NULL,

    #' @description
    #' Initialize a new V1ExchangeRates class.
    #'
    #' @param asset_id_base Gets or sets the base asset ID.
    #' @param rates Gets or sets the list of exchange rates.
    #' @param ... Other optional arguments.
    initialize = function(`asset_id_base` = NULL, `rates` = NULL, ...) {
      if (!is.null(`asset_id_base`)) {
        if (!(is.character(`asset_id_base`) && length(`asset_id_base`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id_base`. Must be a string:", `asset_id_base`))
        }
        self$`asset_id_base` <- `asset_id_base`
      }
      if (!is.null(`rates`)) {
        stopifnot(is.vector(`rates`), length(`rates`) != 0)
        sapply(`rates`, function(x) stopifnot(R6::is.R6(x)))
        self$`rates` <- `rates`
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
    #' @return V1ExchangeRates as a base R list.
    #' @examples
    #' # convert array of V1ExchangeRates (x) to a data frame
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
    #' Convert V1ExchangeRates to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1ExchangeRatesObject <- list()
      if (!is.null(self$`asset_id_base`)) {
        V1ExchangeRatesObject[["asset_id_base"]] <-
          self$`asset_id_base`
      }
      if (!is.null(self$`rates`)) {
        V1ExchangeRatesObject[["rates"]] <-
          lapply(self$`rates`, function(x) x$toSimpleType())
      }
      return(V1ExchangeRatesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExchangeRates
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExchangeRates
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`asset_id_base`)) {
        self$`asset_id_base` <- this_object$`asset_id_base`
      }
      if (!is.null(this_object$`rates`)) {
        self$`rates` <- ApiClient$new()$deserializeObj(this_object$`rates`, "array[V1ExchangeRatesRate]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1ExchangeRates in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1ExchangeRates
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1ExchangeRates
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`asset_id_base` <- this_object$`asset_id_base`
      self$`rates` <- ApiClient$new()$deserializeObj(this_object$`rates`, "array[V1ExchangeRatesRate]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V1ExchangeRates and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1ExchangeRates
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
# V1ExchangeRates$unlock()
#
## Below is an example to define the print function
# V1ExchangeRates$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1ExchangeRates$lock()

