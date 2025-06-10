#' Create a new OptionsOptionExchangeGroup
#'
#' @description
#' Represents an option exchange group data model.
#'
#' @docType class
#' @title OptionsOptionExchangeGroup
#' @description OptionsOptionExchangeGroup Class
#' @format An \code{R6Class} generator object
#' @field asset_id_base The base asset identifier. character [optional]
#' @field asset_id_quote The quote asset identifier. character [optional]
#' @field underlying_price The underlying price of the option. numeric [optional]
#' @field time_expiration The expiration time of the option. character [optional]
#' @field strikes The list of strikes available. list(\link{OptionsStrike}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OptionsOptionExchangeGroup <- R6::R6Class(
  "OptionsOptionExchangeGroup",
  public = list(
    `asset_id_base` = NULL,
    `asset_id_quote` = NULL,
    `underlying_price` = NULL,
    `time_expiration` = NULL,
    `strikes` = NULL,

    #' @description
    #' Initialize a new OptionsOptionExchangeGroup class.
    #'
    #' @param asset_id_base The base asset identifier.
    #' @param asset_id_quote The quote asset identifier.
    #' @param underlying_price The underlying price of the option.
    #' @param time_expiration The expiration time of the option.
    #' @param strikes The list of strikes available.
    #' @param ... Other optional arguments.
    initialize = function(`asset_id_base` = NULL, `asset_id_quote` = NULL, `underlying_price` = NULL, `time_expiration` = NULL, `strikes` = NULL, ...) {
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
      if (!is.null(`underlying_price`)) {
        if (!(is.numeric(`underlying_price`) && length(`underlying_price`) == 1)) {
          stop(paste("Error! Invalid data for `underlying_price`. Must be a number:", `underlying_price`))
        }
        self$`underlying_price` <- `underlying_price`
      }
      if (!is.null(`time_expiration`)) {
        if (!is.character(`time_expiration`)) {
          stop(paste("Error! Invalid data for `time_expiration`. Must be a string:", `time_expiration`))
        }
        self$`time_expiration` <- `time_expiration`
      }
      if (!is.null(`strikes`)) {
        stopifnot(is.vector(`strikes`), length(`strikes`) != 0)
        sapply(`strikes`, function(x) stopifnot(R6::is.R6(x)))
        self$`strikes` <- `strikes`
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
    #' @return OptionsOptionExchangeGroup as a base R list.
    #' @examples
    #' # convert array of OptionsOptionExchangeGroup (x) to a data frame
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
    #' Convert OptionsOptionExchangeGroup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OptionsOptionExchangeGroupObject <- list()
      if (!is.null(self$`asset_id_base`)) {
        OptionsOptionExchangeGroupObject[["asset_id_base"]] <-
          self$`asset_id_base`
      }
      if (!is.null(self$`asset_id_quote`)) {
        OptionsOptionExchangeGroupObject[["asset_id_quote"]] <-
          self$`asset_id_quote`
      }
      if (!is.null(self$`underlying_price`)) {
        OptionsOptionExchangeGroupObject[["underlying_price"]] <-
          self$`underlying_price`
      }
      if (!is.null(self$`time_expiration`)) {
        OptionsOptionExchangeGroupObject[["time_expiration"]] <-
          self$`time_expiration`
      }
      if (!is.null(self$`strikes`)) {
        OptionsOptionExchangeGroupObject[["strikes"]] <-
          lapply(self$`strikes`, function(x) x$toSimpleType())
      }
      return(OptionsOptionExchangeGroupObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OptionsOptionExchangeGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of OptionsOptionExchangeGroup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`asset_id_base`)) {
        self$`asset_id_base` <- this_object$`asset_id_base`
      }
      if (!is.null(this_object$`asset_id_quote`)) {
        self$`asset_id_quote` <- this_object$`asset_id_quote`
      }
      if (!is.null(this_object$`underlying_price`)) {
        self$`underlying_price` <- this_object$`underlying_price`
      }
      if (!is.null(this_object$`time_expiration`)) {
        self$`time_expiration` <- this_object$`time_expiration`
      }
      if (!is.null(this_object$`strikes`)) {
        self$`strikes` <- ApiClient$new()$deserializeObj(this_object$`strikes`, "array[OptionsStrike]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OptionsOptionExchangeGroup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OptionsOptionExchangeGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of OptionsOptionExchangeGroup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`asset_id_base` <- this_object$`asset_id_base`
      self$`asset_id_quote` <- this_object$`asset_id_quote`
      self$`underlying_price` <- this_object$`underlying_price`
      self$`time_expiration` <- this_object$`time_expiration`
      self$`strikes` <- ApiClient$new()$deserializeObj(this_object$`strikes`, "array[OptionsStrike]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OptionsOptionExchangeGroup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OptionsOptionExchangeGroup
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
# OptionsOptionExchangeGroup$unlock()
#
## Below is an example to define the print function
# OptionsOptionExchangeGroup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OptionsOptionExchangeGroup$lock()

