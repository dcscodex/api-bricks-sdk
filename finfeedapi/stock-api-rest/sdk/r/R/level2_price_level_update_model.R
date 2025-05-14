#' Create a new Level2PriceLevelUpdateModel
#'
#' @description
#' Represents the response DTO for price level update information
#'
#' @docType class
#' @title Level2PriceLevelUpdateModel
#' @description Level2PriceLevelUpdateModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the price level update was recorded as DateTime character [optional]
#' @field is_side_buy Indicates if this is a price level update for the Buy Side. character [optional]
#' @field is_event_processing_complete Indicates if event processing is complete. character [optional]
#' @field size Aggregate quoted size at the price level integer [optional]
#' @field price Price level as decimal numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Level2PriceLevelUpdateModel <- R6::R6Class(
  "Level2PriceLevelUpdateModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `is_side_buy` = NULL,
    `is_event_processing_complete` = NULL,
    `size` = NULL,
    `price` = NULL,

    #' @description
    #' Initialize a new Level2PriceLevelUpdateModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the price level update was recorded as DateTime
    #' @param is_side_buy Indicates if this is a price level update for the Buy Side.
    #' @param is_event_processing_complete Indicates if event processing is complete.
    #' @param size Aggregate quoted size at the price level
    #' @param price Price level as decimal
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `is_side_buy` = NULL, `is_event_processing_complete` = NULL, `size` = NULL, `price` = NULL, ...) {
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
      if (!is.null(`is_side_buy`)) {
        if (!(is.logical(`is_side_buy`) && length(`is_side_buy`) == 1)) {
          stop(paste("Error! Invalid data for `is_side_buy`. Must be a boolean:", `is_side_buy`))
        }
        self$`is_side_buy` <- `is_side_buy`
      }
      if (!is.null(`is_event_processing_complete`)) {
        if (!(is.logical(`is_event_processing_complete`) && length(`is_event_processing_complete`) == 1)) {
          stop(paste("Error! Invalid data for `is_event_processing_complete`. Must be a boolean:", `is_event_processing_complete`))
        }
        self$`is_event_processing_complete` <- `is_event_processing_complete`
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
    #' @return Level2PriceLevelUpdateModel as a base R list.
    #' @examples
    #' # convert array of Level2PriceLevelUpdateModel (x) to a data frame
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
    #' Convert Level2PriceLevelUpdateModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Level2PriceLevelUpdateModelObject <- list()
      if (!is.null(self$`symbol`)) {
        Level2PriceLevelUpdateModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        Level2PriceLevelUpdateModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        Level2PriceLevelUpdateModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`is_side_buy`)) {
        Level2PriceLevelUpdateModelObject[["is_side_buy"]] <-
          self$`is_side_buy`
      }
      if (!is.null(self$`is_event_processing_complete`)) {
        Level2PriceLevelUpdateModelObject[["is_event_processing_complete"]] <-
          self$`is_event_processing_complete`
      }
      if (!is.null(self$`size`)) {
        Level2PriceLevelUpdateModelObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`price`)) {
        Level2PriceLevelUpdateModelObject[["price"]] <-
          self$`price`
      }
      return(Level2PriceLevelUpdateModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Level2PriceLevelUpdateModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level2PriceLevelUpdateModel
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
      if (!is.null(this_object$`is_side_buy`)) {
        self$`is_side_buy` <- this_object$`is_side_buy`
      }
      if (!is.null(this_object$`is_event_processing_complete`)) {
        self$`is_event_processing_complete` <- this_object$`is_event_processing_complete`
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
    #' @return Level2PriceLevelUpdateModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Level2PriceLevelUpdateModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level2PriceLevelUpdateModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`is_side_buy` <- this_object$`is_side_buy`
      self$`is_event_processing_complete` <- this_object$`is_event_processing_complete`
      self$`size` <- this_object$`size`
      self$`price` <- this_object$`price`
      self
    },

    #' @description
    #' Validate JSON input with respect to Level2PriceLevelUpdateModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Level2PriceLevelUpdateModel
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
# Level2PriceLevelUpdateModel$unlock()
#
## Below is an example to define the print function
# Level2PriceLevelUpdateModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Level2PriceLevelUpdateModel$lock()

