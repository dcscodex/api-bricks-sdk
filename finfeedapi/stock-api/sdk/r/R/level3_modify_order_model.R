#' Create a new Level3ModifyOrderModel
#'
#' @description
#' Represents the response DTO for order modify information
#'
#' @docType class
#' @title Level3ModifyOrderModel
#' @description Level3ModifyOrderModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the order was modified as DateTime (UTC) character [optional]
#' @field order_id_reference Order identifier reference integer [optional]
#' @field is_priority_reset Indicates if priority is reseted character [optional]
#' @field size New total quoted size in number of shares integer [optional]
#' @field price Price as decimal numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Level3ModifyOrderModel <- R6::R6Class(
  "Level3ModifyOrderModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `order_id_reference` = NULL,
    `is_priority_reset` = NULL,
    `size` = NULL,
    `price` = NULL,

    #' @description
    #' Initialize a new Level3ModifyOrderModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the order was modified as DateTime (UTC)
    #' @param order_id_reference Order identifier reference
    #' @param is_priority_reset Indicates if priority is reseted
    #' @param size New total quoted size in number of shares
    #' @param price Price as decimal
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `order_id_reference` = NULL, `is_priority_reset` = NULL, `size` = NULL, `price` = NULL, ...) {
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
      if (!is.null(`order_id_reference`)) {
        if (!(is.numeric(`order_id_reference`) && length(`order_id_reference`) == 1)) {
          stop(paste("Error! Invalid data for `order_id_reference`. Must be an integer:", `order_id_reference`))
        }
        self$`order_id_reference` <- `order_id_reference`
      }
      if (!is.null(`is_priority_reset`)) {
        if (!(is.logical(`is_priority_reset`) && length(`is_priority_reset`) == 1)) {
          stop(paste("Error! Invalid data for `is_priority_reset`. Must be a boolean:", `is_priority_reset`))
        }
        self$`is_priority_reset` <- `is_priority_reset`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`price`)) {
        if (!(is.numeric(`price`) && length(`price`) == 1)) {
          stop(paste("Error! Invalid data for `price`. Must be a number:", `price`))
        }
        self$`price` <- `price`
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
    #' @return Level3ModifyOrderModel as a base R list.
    #' @examples
    #' # convert array of Level3ModifyOrderModel (x) to a data frame
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
    #' Convert Level3ModifyOrderModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Level3ModifyOrderModelObject <- list()
      if (!is.null(self$`symbol`)) {
        Level3ModifyOrderModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        Level3ModifyOrderModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        Level3ModifyOrderModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`order_id_reference`)) {
        Level3ModifyOrderModelObject[["order_id_reference"]] <-
          self$`order_id_reference`
      }
      if (!is.null(self$`is_priority_reset`)) {
        Level3ModifyOrderModelObject[["is_priority_reset"]] <-
          self$`is_priority_reset`
      }
      if (!is.null(self$`size`)) {
        Level3ModifyOrderModelObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`price`)) {
        Level3ModifyOrderModelObject[["price"]] <-
          self$`price`
      }
      return(Level3ModifyOrderModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Level3ModifyOrderModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level3ModifyOrderModel
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
      if (!is.null(this_object$`order_id_reference`)) {
        self$`order_id_reference` <- this_object$`order_id_reference`
      }
      if (!is.null(this_object$`is_priority_reset`)) {
        self$`is_priority_reset` <- this_object$`is_priority_reset`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Level3ModifyOrderModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Level3ModifyOrderModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level3ModifyOrderModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`order_id_reference` <- this_object$`order_id_reference`
      self$`is_priority_reset` <- this_object$`is_priority_reset`
      self$`size` <- this_object$`size`
      self$`price` <- this_object$`price`
      self
    },

    #' @description
    #' Validate JSON input with respect to Level3ModifyOrderModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Level3ModifyOrderModel
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
# Level3ModifyOrderModel$unlock()
#
## Below is an example to define the print function
# Level3ModifyOrderModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Level3ModifyOrderModel$lock()

