#' Create a new FinFeedAPISymbolModel
#'
#' @description
#' FinFeedAPISymbolModel Class
#'
#' @docType class
#' @title FinFeedAPISymbolModel
#' @description FinFeedAPISymbolModel Class
#' @format An \code{R6Class} generator object
#' @field symbol_id  character [optional]
#' @field exchange_id  character [optional]
#' @field security_category  character [optional]
#' @field name  character [optional]
#' @field date  character [optional]
#' @field asset_class  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FinFeedAPISymbolModel <- R6::R6Class(
  "FinFeedAPISymbolModel",
  inherit = AnyType,
  public = list(
    `symbol_id` = NULL,
    `exchange_id` = NULL,
    `security_category` = NULL,
    `name` = NULL,
    `date` = NULL,
    `asset_class` = NULL,
    `_field_list` = c("symbol_id", "exchange_id", "security_category", "name", "date", "asset_class"),
    `additional_properties` = list(),

    #' @description
    #' Initialize a new FinFeedAPISymbolModel class.
    #'
    #' @param symbol_id symbol_id
    #' @param exchange_id exchange_id
    #' @param security_category security_category
    #' @param name name
    #' @param date date
    #' @param asset_class asset_class
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    initialize = function(`symbol_id` = NULL, `exchange_id` = NULL, `security_category` = NULL, `name` = NULL, `date` = NULL, `asset_class` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`symbol_id`)) {
        if (!(is.character(`symbol_id`) && length(`symbol_id`) == 1)) {
          stop(paste("Error! Invalid data for `symbol_id`. Must be a string:", `symbol_id`))
        }
        self$`symbol_id` <- `symbol_id`
      }
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`security_category`)) {
        if (!(is.character(`security_category`) && length(`security_category`) == 1)) {
          stop(paste("Error! Invalid data for `security_category`. Must be a string:", `security_category`))
        }
        self$`security_category` <- `security_category`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`asset_class`)) {
        if (!(is.character(`asset_class`) && length(`asset_class`) == 1)) {
          stop(paste("Error! Invalid data for `asset_class`. Must be a string:", `asset_class`))
        }
        self$`asset_class` <- `asset_class`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
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
    #' @return FinFeedAPISymbolModel as a base R list.
    #' @examples
    #' # convert array of FinFeedAPISymbolModel (x) to a data frame
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
    #' Convert FinFeedAPISymbolModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FinFeedAPISymbolModelObject <- list()
      if (!is.null(self$`symbol_id`)) {
        FinFeedAPISymbolModelObject[["symbol_id"]] <-
          self$`symbol_id`
      }
      if (!is.null(self$`exchange_id`)) {
        FinFeedAPISymbolModelObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`security_category`)) {
        FinFeedAPISymbolModelObject[["security_category"]] <-
          self$`security_category`
      }
      if (!is.null(self$`name`)) {
        FinFeedAPISymbolModelObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`date`)) {
        FinFeedAPISymbolModelObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`asset_class`)) {
        FinFeedAPISymbolModelObject[["asset_class"]] <-
          self$`asset_class`
      }
      for (key in names(self$additional_properties)) {
        FinFeedAPISymbolModelObject[[key]] <- self$additional_properties[[key]]
      }

      return(FinFeedAPISymbolModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FinFeedAPISymbolModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of FinFeedAPISymbolModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol_id`)) {
        self$`symbol_id` <- this_object$`symbol_id`
      }
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`security_category`)) {
        self$`security_category` <- this_object$`security_category`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`asset_class`)) {
        self$`asset_class` <- this_object$`asset_class`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FinFeedAPISymbolModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      for (key in names(self$additional_properties)) {
        simple[[key]] <- self$additional_properties[[key]]
      }
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FinFeedAPISymbolModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of FinFeedAPISymbolModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol_id` <- this_object$`symbol_id`
      self$`exchange_id` <- this_object$`exchange_id`
      self$`security_category` <- this_object$`security_category`
      self$`name` <- this_object$`name`
      self$`date` <- this_object$`date`
      self$`asset_class` <- this_object$`asset_class`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' Validate JSON input with respect to FinFeedAPISymbolModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FinFeedAPISymbolModel
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
# FinFeedAPISymbolModel$unlock()
#
## Below is an example to define the print function
# FinFeedAPISymbolModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FinFeedAPISymbolModel$lock()

