#' Create a new OptionsStrike
#'
#' @description
#' Represents a strike within the option exchange group.
#'
#' @docType class
#' @title OptionsStrike
#' @description OptionsStrike Class
#' @format An \code{R6Class} generator object
#' @field strike_price The strike price. numeric [optional]
#' @field call  \link{V1QuoteTrade} [optional]
#' @field put  \link{V1QuoteTrade} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OptionsStrike <- R6::R6Class(
  "OptionsStrike",
  public = list(
    `strike_price` = NULL,
    `call` = NULL,
    `put` = NULL,

    #' @description
    #' Initialize a new OptionsStrike class.
    #'
    #' @param strike_price The strike price.
    #' @param call call
    #' @param put put
    #' @param ... Other optional arguments.
    initialize = function(`strike_price` = NULL, `call` = NULL, `put` = NULL, ...) {
      if (!is.null(`strike_price`)) {
        if (!(is.numeric(`strike_price`) && length(`strike_price`) == 1)) {
          stop(paste("Error! Invalid data for `strike_price`. Must be a number:", `strike_price`))
        }
        self$`strike_price` <- `strike_price`
      }
      if (!is.null(`call`)) {
        stopifnot(R6::is.R6(`call`))
        self$`call` <- `call`
      }
      if (!is.null(`put`)) {
        stopifnot(R6::is.R6(`put`))
        self$`put` <- `put`
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
    #' @return OptionsStrike as a base R list.
    #' @examples
    #' # convert array of OptionsStrike (x) to a data frame
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
    #' Convert OptionsStrike to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OptionsStrikeObject <- list()
      if (!is.null(self$`strike_price`)) {
        OptionsStrikeObject[["strike_price"]] <-
          self$`strike_price`
      }
      if (!is.null(self$`call`)) {
        OptionsStrikeObject[["call"]] <-
          self$`call`$toSimpleType()
      }
      if (!is.null(self$`put`)) {
        OptionsStrikeObject[["put"]] <-
          self$`put`$toSimpleType()
      }
      return(OptionsStrikeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OptionsStrike
    #'
    #' @param input_json the JSON input
    #' @return the instance of OptionsStrike
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`strike_price`)) {
        self$`strike_price` <- this_object$`strike_price`
      }
      if (!is.null(this_object$`call`)) {
        `call_object` <- V1QuoteTrade$new()
        `call_object`$fromJSON(jsonlite::toJSON(this_object$`call`, auto_unbox = TRUE, digits = NA))
        self$`call` <- `call_object`
      }
      if (!is.null(this_object$`put`)) {
        `put_object` <- V1QuoteTrade$new()
        `put_object`$fromJSON(jsonlite::toJSON(this_object$`put`, auto_unbox = TRUE, digits = NA))
        self$`put` <- `put_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OptionsStrike in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OptionsStrike
    #'
    #' @param input_json the JSON input
    #' @return the instance of OptionsStrike
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`strike_price` <- this_object$`strike_price`
      self$`call` <- V1QuoteTrade$new()$fromJSON(jsonlite::toJSON(this_object$`call`, auto_unbox = TRUE, digits = NA))
      self$`put` <- V1QuoteTrade$new()$fromJSON(jsonlite::toJSON(this_object$`put`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to OptionsStrike and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OptionsStrike
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
# OptionsStrike$unlock()
#
## Below is an example to define the print function
# OptionsStrike$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OptionsStrike$lock()

