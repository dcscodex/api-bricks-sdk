#' Create a new AdminOfficialPriceModel
#'
#' @description
#' Represents the response DTO for official price information
#'
#' @docType class
#' @title AdminOfficialPriceModel
#' @description AdminOfficialPriceModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the official price was recorded as DateTime character [optional]
#' @field price_type Type of price as byte value integer [optional]
#' @field price_type_code Type of price as character string character [optional]
#' @field price_type_text Human-readable description of the price type character [optional]
#' @field is_price_type_opening Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51). character [optional]
#' @field is_price_type_closing Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d). character [optional]
#' @field official_price Official price as decimal numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminOfficialPriceModel <- R6::R6Class(
  "AdminOfficialPriceModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `price_type` = NULL,
    `price_type_code` = NULL,
    `price_type_text` = NULL,
    `is_price_type_opening` = NULL,
    `is_price_type_closing` = NULL,
    `official_price` = NULL,

    #' @description
    #' Initialize a new AdminOfficialPriceModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the official price was recorded as DateTime
    #' @param price_type Type of price as byte value
    #' @param price_type_code Type of price as character string
    #' @param price_type_text Human-readable description of the price type
    #' @param is_price_type_opening Indicates if the price type is 'IEX Official Opening Price' ('Q'/0x51).
    #' @param is_price_type_closing Indicates if the price type is 'IEX Official Closing Price' ('M'/0x4d).
    #' @param official_price Official price as decimal
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `price_type` = NULL, `price_type_code` = NULL, `price_type_text` = NULL, `is_price_type_opening` = NULL, `is_price_type_closing` = NULL, `official_price` = NULL, ...) {
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`timestamp_nanos`)) {
        if (!(is.numeric(`timestamp_nanos`) && length(`timestamp_nanos`) == 1)) {
          stop(paste("Error! Invalid data for `timestamp_nanos`. Must be an integer:", `timestamp_nanos`))
        }
        self$`timestamp_nanos` <- `timestamp_nanos`
      }
      if (!is.null(`timestamp`)) {
        if (!is.character(`timestamp`)) {
          stop(paste("Error! Invalid data for `timestamp`. Must be a string:", `timestamp`))
        }
        self$`timestamp` <- `timestamp`
      }
      if (!is.null(`price_type`)) {
        if (!(is.numeric(`price_type`) && length(`price_type`) == 1)) {
          stop(paste("Error! Invalid data for `price_type`. Must be an integer:", `price_type`))
        }
        self$`price_type` <- `price_type`
      }
      if (!is.null(`price_type_code`)) {
        if (!(is.character(`price_type_code`) && length(`price_type_code`) == 1)) {
          stop(paste("Error! Invalid data for `price_type_code`. Must be a string:", `price_type_code`))
        }
        self$`price_type_code` <- `price_type_code`
      }
      if (!is.null(`price_type_text`)) {
        if (!(is.character(`price_type_text`) && length(`price_type_text`) == 1)) {
          stop(paste("Error! Invalid data for `price_type_text`. Must be a string:", `price_type_text`))
        }
        self$`price_type_text` <- `price_type_text`
      }
      if (!is.null(`is_price_type_opening`)) {
        if (!(is.logical(`is_price_type_opening`) && length(`is_price_type_opening`) == 1)) {
          stop(paste("Error! Invalid data for `is_price_type_opening`. Must be a boolean:", `is_price_type_opening`))
        }
        self$`is_price_type_opening` <- `is_price_type_opening`
      }
      if (!is.null(`is_price_type_closing`)) {
        if (!(is.logical(`is_price_type_closing`) && length(`is_price_type_closing`) == 1)) {
          stop(paste("Error! Invalid data for `is_price_type_closing`. Must be a boolean:", `is_price_type_closing`))
        }
        self$`is_price_type_closing` <- `is_price_type_closing`
      }
      if (!is.null(`official_price`)) {
        if (!(is.numeric(`official_price`) && length(`official_price`) == 1)) {
          stop(paste("Error! Invalid data for `official_price`. Must be a number:", `official_price`))
        }
        self$`official_price` <- `official_price`
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
    #' @return AdminOfficialPriceModel as a base R list.
    #' @examples
    #' # convert array of AdminOfficialPriceModel (x) to a data frame
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
    #' Convert AdminOfficialPriceModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminOfficialPriceModelObject <- list()
      if (!is.null(self$`symbol`)) {
        AdminOfficialPriceModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        AdminOfficialPriceModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminOfficialPriceModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`price_type`)) {
        AdminOfficialPriceModelObject[["price_type"]] <-
          self$`price_type`
      }
      if (!is.null(self$`price_type_code`)) {
        AdminOfficialPriceModelObject[["price_type_code"]] <-
          self$`price_type_code`
      }
      if (!is.null(self$`price_type_text`)) {
        AdminOfficialPriceModelObject[["price_type_text"]] <-
          self$`price_type_text`
      }
      if (!is.null(self$`is_price_type_opening`)) {
        AdminOfficialPriceModelObject[["is_price_type_opening"]] <-
          self$`is_price_type_opening`
      }
      if (!is.null(self$`is_price_type_closing`)) {
        AdminOfficialPriceModelObject[["is_price_type_closing"]] <-
          self$`is_price_type_closing`
      }
      if (!is.null(self$`official_price`)) {
        AdminOfficialPriceModelObject[["official_price"]] <-
          self$`official_price`
      }
      return(AdminOfficialPriceModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminOfficialPriceModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminOfficialPriceModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`timestamp_nanos`)) {
        self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`price_type`)) {
        self$`price_type` <- this_object$`price_type`
      }
      if (!is.null(this_object$`price_type_code`)) {
        self$`price_type_code` <- this_object$`price_type_code`
      }
      if (!is.null(this_object$`price_type_text`)) {
        self$`price_type_text` <- this_object$`price_type_text`
      }
      if (!is.null(this_object$`is_price_type_opening`)) {
        self$`is_price_type_opening` <- this_object$`is_price_type_opening`
      }
      if (!is.null(this_object$`is_price_type_closing`)) {
        self$`is_price_type_closing` <- this_object$`is_price_type_closing`
      }
      if (!is.null(this_object$`official_price`)) {
        self$`official_price` <- this_object$`official_price`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminOfficialPriceModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminOfficialPriceModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminOfficialPriceModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`price_type` <- this_object$`price_type`
      self$`price_type_code` <- this_object$`price_type_code`
      self$`price_type_text` <- this_object$`price_type_text`
      self$`is_price_type_opening` <- this_object$`is_price_type_opening`
      self$`is_price_type_closing` <- this_object$`is_price_type_closing`
      self$`official_price` <- this_object$`official_price`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminOfficialPriceModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminOfficialPriceModel
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
# AdminOfficialPriceModel$unlock()
#
## Below is an example to define the print function
# AdminOfficialPriceModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminOfficialPriceModel$lock()

