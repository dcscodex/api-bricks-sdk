#' Create a new AdminShortSalePriceTestStatusModel
#'
#' @description
#' Represents the response DTO for short sale price test status information
#'
#' @docType class
#' @title AdminShortSalePriceTestStatusModel
#' @description AdminShortSalePriceTestStatusModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the short sale price test status was recorded as DateTime character [optional]
#' @field short_sale_price_test_status Short sale price test status as byte value integer [optional]
#' @field short_sale_price_test_status_code Short sale price test status as hex string character [optional]
#' @field short_sale_price_test_status_text Human-readable description of the short sale price test status character [optional]
#' @field is_short_sale_price_test_not_in_effect Indicates if the short sale price test is not in effect character [optional]
#' @field is_short_sale_price_test_in_effect Indicates if the short sale price test is in effect character [optional]
#' @field detail Detail of the short sale price test as byte value integer [optional]
#' @field detail_code Detail of the short sale price test as character string character [optional]
#' @field detail_text Human-readable description of the short sale price test detail character [optional]
#' @field is_detail_no_price_test Indicates if there is no price test in place character [optional]
#' @field is_detail_activated Indicates if the short sale price test restriction is in effect due to an intraday price drop character [optional]
#' @field is_detail_continued Indicates if the short sale price test restriction remains in effect from prior day character [optional]
#' @field is_detail_deactivated Indicates if the short sale price test restriction is deactivated character [optional]
#' @field is_detail_not_available Indicates if the detail is not available character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminShortSalePriceTestStatusModel <- R6::R6Class(
  "AdminShortSalePriceTestStatusModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `short_sale_price_test_status` = NULL,
    `short_sale_price_test_status_code` = NULL,
    `short_sale_price_test_status_text` = NULL,
    `is_short_sale_price_test_not_in_effect` = NULL,
    `is_short_sale_price_test_in_effect` = NULL,
    `detail` = NULL,
    `detail_code` = NULL,
    `detail_text` = NULL,
    `is_detail_no_price_test` = NULL,
    `is_detail_activated` = NULL,
    `is_detail_continued` = NULL,
    `is_detail_deactivated` = NULL,
    `is_detail_not_available` = NULL,

    #' @description
    #' Initialize a new AdminShortSalePriceTestStatusModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the short sale price test status was recorded as DateTime
    #' @param short_sale_price_test_status Short sale price test status as byte value
    #' @param short_sale_price_test_status_code Short sale price test status as hex string
    #' @param short_sale_price_test_status_text Human-readable description of the short sale price test status
    #' @param is_short_sale_price_test_not_in_effect Indicates if the short sale price test is not in effect
    #' @param is_short_sale_price_test_in_effect Indicates if the short sale price test is in effect
    #' @param detail Detail of the short sale price test as byte value
    #' @param detail_code Detail of the short sale price test as character string
    #' @param detail_text Human-readable description of the short sale price test detail
    #' @param is_detail_no_price_test Indicates if there is no price test in place
    #' @param is_detail_activated Indicates if the short sale price test restriction is in effect due to an intraday price drop
    #' @param is_detail_continued Indicates if the short sale price test restriction remains in effect from prior day
    #' @param is_detail_deactivated Indicates if the short sale price test restriction is deactivated
    #' @param is_detail_not_available Indicates if the detail is not available
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `short_sale_price_test_status` = NULL, `short_sale_price_test_status_code` = NULL, `short_sale_price_test_status_text` = NULL, `is_short_sale_price_test_not_in_effect` = NULL, `is_short_sale_price_test_in_effect` = NULL, `detail` = NULL, `detail_code` = NULL, `detail_text` = NULL, `is_detail_no_price_test` = NULL, `is_detail_activated` = NULL, `is_detail_continued` = NULL, `is_detail_deactivated` = NULL, `is_detail_not_available` = NULL, ...) {
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
      if (!is.null(`short_sale_price_test_status`)) {
        if (!(is.numeric(`short_sale_price_test_status`) && length(`short_sale_price_test_status`) == 1)) {
          stop(paste("Error! Invalid data for `short_sale_price_test_status`. Must be an integer:", `short_sale_price_test_status`))
        }
        self$`short_sale_price_test_status` <- `short_sale_price_test_status`
      }
      if (!is.null(`short_sale_price_test_status_code`)) {
        if (!(is.character(`short_sale_price_test_status_code`) && length(`short_sale_price_test_status_code`) == 1)) {
          stop(paste("Error! Invalid data for `short_sale_price_test_status_code`. Must be a string:", `short_sale_price_test_status_code`))
        }
        self$`short_sale_price_test_status_code` <- `short_sale_price_test_status_code`
      }
      if (!is.null(`short_sale_price_test_status_text`)) {
        if (!(is.character(`short_sale_price_test_status_text`) && length(`short_sale_price_test_status_text`) == 1)) {
          stop(paste("Error! Invalid data for `short_sale_price_test_status_text`. Must be a string:", `short_sale_price_test_status_text`))
        }
        self$`short_sale_price_test_status_text` <- `short_sale_price_test_status_text`
      }
      if (!is.null(`is_short_sale_price_test_not_in_effect`)) {
        if (!(is.logical(`is_short_sale_price_test_not_in_effect`) && length(`is_short_sale_price_test_not_in_effect`) == 1)) {
          stop(paste("Error! Invalid data for `is_short_sale_price_test_not_in_effect`. Must be a boolean:", `is_short_sale_price_test_not_in_effect`))
        }
        self$`is_short_sale_price_test_not_in_effect` <- `is_short_sale_price_test_not_in_effect`
      }
      if (!is.null(`is_short_sale_price_test_in_effect`)) {
        if (!(is.logical(`is_short_sale_price_test_in_effect`) && length(`is_short_sale_price_test_in_effect`) == 1)) {
          stop(paste("Error! Invalid data for `is_short_sale_price_test_in_effect`. Must be a boolean:", `is_short_sale_price_test_in_effect`))
        }
        self$`is_short_sale_price_test_in_effect` <- `is_short_sale_price_test_in_effect`
      }
      if (!is.null(`detail`)) {
        if (!(is.numeric(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be an integer:", `detail`))
        }
        self$`detail` <- `detail`
      }
      if (!is.null(`detail_code`)) {
        if (!(is.character(`detail_code`) && length(`detail_code`) == 1)) {
          stop(paste("Error! Invalid data for `detail_code`. Must be a string:", `detail_code`))
        }
        self$`detail_code` <- `detail_code`
      }
      if (!is.null(`detail_text`)) {
        if (!(is.character(`detail_text`) && length(`detail_text`) == 1)) {
          stop(paste("Error! Invalid data for `detail_text`. Must be a string:", `detail_text`))
        }
        self$`detail_text` <- `detail_text`
      }
      if (!is.null(`is_detail_no_price_test`)) {
        if (!(is.logical(`is_detail_no_price_test`) && length(`is_detail_no_price_test`) == 1)) {
          stop(paste("Error! Invalid data for `is_detail_no_price_test`. Must be a boolean:", `is_detail_no_price_test`))
        }
        self$`is_detail_no_price_test` <- `is_detail_no_price_test`
      }
      if (!is.null(`is_detail_activated`)) {
        if (!(is.logical(`is_detail_activated`) && length(`is_detail_activated`) == 1)) {
          stop(paste("Error! Invalid data for `is_detail_activated`. Must be a boolean:", `is_detail_activated`))
        }
        self$`is_detail_activated` <- `is_detail_activated`
      }
      if (!is.null(`is_detail_continued`)) {
        if (!(is.logical(`is_detail_continued`) && length(`is_detail_continued`) == 1)) {
          stop(paste("Error! Invalid data for `is_detail_continued`. Must be a boolean:", `is_detail_continued`))
        }
        self$`is_detail_continued` <- `is_detail_continued`
      }
      if (!is.null(`is_detail_deactivated`)) {
        if (!(is.logical(`is_detail_deactivated`) && length(`is_detail_deactivated`) == 1)) {
          stop(paste("Error! Invalid data for `is_detail_deactivated`. Must be a boolean:", `is_detail_deactivated`))
        }
        self$`is_detail_deactivated` <- `is_detail_deactivated`
      }
      if (!is.null(`is_detail_not_available`)) {
        if (!(is.logical(`is_detail_not_available`) && length(`is_detail_not_available`) == 1)) {
          stop(paste("Error! Invalid data for `is_detail_not_available`. Must be a boolean:", `is_detail_not_available`))
        }
        self$`is_detail_not_available` <- `is_detail_not_available`
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
    #' @return AdminShortSalePriceTestStatusModel as a base R list.
    #' @examples
    #' # convert array of AdminShortSalePriceTestStatusModel (x) to a data frame
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
    #' Convert AdminShortSalePriceTestStatusModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminShortSalePriceTestStatusModelObject <- list()
      if (!is.null(self$`symbol`)) {
        AdminShortSalePriceTestStatusModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        AdminShortSalePriceTestStatusModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminShortSalePriceTestStatusModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`short_sale_price_test_status`)) {
        AdminShortSalePriceTestStatusModelObject[["short_sale_price_test_status"]] <-
          self$`short_sale_price_test_status`
      }
      if (!is.null(self$`short_sale_price_test_status_code`)) {
        AdminShortSalePriceTestStatusModelObject[["short_sale_price_test_status_code"]] <-
          self$`short_sale_price_test_status_code`
      }
      if (!is.null(self$`short_sale_price_test_status_text`)) {
        AdminShortSalePriceTestStatusModelObject[["short_sale_price_test_status_text"]] <-
          self$`short_sale_price_test_status_text`
      }
      if (!is.null(self$`is_short_sale_price_test_not_in_effect`)) {
        AdminShortSalePriceTestStatusModelObject[["is_short_sale_price_test_not_in_effect"]] <-
          self$`is_short_sale_price_test_not_in_effect`
      }
      if (!is.null(self$`is_short_sale_price_test_in_effect`)) {
        AdminShortSalePriceTestStatusModelObject[["is_short_sale_price_test_in_effect"]] <-
          self$`is_short_sale_price_test_in_effect`
      }
      if (!is.null(self$`detail`)) {
        AdminShortSalePriceTestStatusModelObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`detail_code`)) {
        AdminShortSalePriceTestStatusModelObject[["detail_code"]] <-
          self$`detail_code`
      }
      if (!is.null(self$`detail_text`)) {
        AdminShortSalePriceTestStatusModelObject[["detail_text"]] <-
          self$`detail_text`
      }
      if (!is.null(self$`is_detail_no_price_test`)) {
        AdminShortSalePriceTestStatusModelObject[["is_detail_no_price_test"]] <-
          self$`is_detail_no_price_test`
      }
      if (!is.null(self$`is_detail_activated`)) {
        AdminShortSalePriceTestStatusModelObject[["is_detail_activated"]] <-
          self$`is_detail_activated`
      }
      if (!is.null(self$`is_detail_continued`)) {
        AdminShortSalePriceTestStatusModelObject[["is_detail_continued"]] <-
          self$`is_detail_continued`
      }
      if (!is.null(self$`is_detail_deactivated`)) {
        AdminShortSalePriceTestStatusModelObject[["is_detail_deactivated"]] <-
          self$`is_detail_deactivated`
      }
      if (!is.null(self$`is_detail_not_available`)) {
        AdminShortSalePriceTestStatusModelObject[["is_detail_not_available"]] <-
          self$`is_detail_not_available`
      }
      return(AdminShortSalePriceTestStatusModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminShortSalePriceTestStatusModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminShortSalePriceTestStatusModel
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
      if (!is.null(this_object$`short_sale_price_test_status`)) {
        self$`short_sale_price_test_status` <- this_object$`short_sale_price_test_status`
      }
      if (!is.null(this_object$`short_sale_price_test_status_code`)) {
        self$`short_sale_price_test_status_code` <- this_object$`short_sale_price_test_status_code`
      }
      if (!is.null(this_object$`short_sale_price_test_status_text`)) {
        self$`short_sale_price_test_status_text` <- this_object$`short_sale_price_test_status_text`
      }
      if (!is.null(this_object$`is_short_sale_price_test_not_in_effect`)) {
        self$`is_short_sale_price_test_not_in_effect` <- this_object$`is_short_sale_price_test_not_in_effect`
      }
      if (!is.null(this_object$`is_short_sale_price_test_in_effect`)) {
        self$`is_short_sale_price_test_in_effect` <- this_object$`is_short_sale_price_test_in_effect`
      }
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      if (!is.null(this_object$`detail_code`)) {
        self$`detail_code` <- this_object$`detail_code`
      }
      if (!is.null(this_object$`detail_text`)) {
        self$`detail_text` <- this_object$`detail_text`
      }
      if (!is.null(this_object$`is_detail_no_price_test`)) {
        self$`is_detail_no_price_test` <- this_object$`is_detail_no_price_test`
      }
      if (!is.null(this_object$`is_detail_activated`)) {
        self$`is_detail_activated` <- this_object$`is_detail_activated`
      }
      if (!is.null(this_object$`is_detail_continued`)) {
        self$`is_detail_continued` <- this_object$`is_detail_continued`
      }
      if (!is.null(this_object$`is_detail_deactivated`)) {
        self$`is_detail_deactivated` <- this_object$`is_detail_deactivated`
      }
      if (!is.null(this_object$`is_detail_not_available`)) {
        self$`is_detail_not_available` <- this_object$`is_detail_not_available`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminShortSalePriceTestStatusModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminShortSalePriceTestStatusModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminShortSalePriceTestStatusModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`short_sale_price_test_status` <- this_object$`short_sale_price_test_status`
      self$`short_sale_price_test_status_code` <- this_object$`short_sale_price_test_status_code`
      self$`short_sale_price_test_status_text` <- this_object$`short_sale_price_test_status_text`
      self$`is_short_sale_price_test_not_in_effect` <- this_object$`is_short_sale_price_test_not_in_effect`
      self$`is_short_sale_price_test_in_effect` <- this_object$`is_short_sale_price_test_in_effect`
      self$`detail` <- this_object$`detail`
      self$`detail_code` <- this_object$`detail_code`
      self$`detail_text` <- this_object$`detail_text`
      self$`is_detail_no_price_test` <- this_object$`is_detail_no_price_test`
      self$`is_detail_activated` <- this_object$`is_detail_activated`
      self$`is_detail_continued` <- this_object$`is_detail_continued`
      self$`is_detail_deactivated` <- this_object$`is_detail_deactivated`
      self$`is_detail_not_available` <- this_object$`is_detail_not_available`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminShortSalePriceTestStatusModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminShortSalePriceTestStatusModel
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
# AdminShortSalePriceTestStatusModel$unlock()
#
## Below is an example to define the print function
# AdminShortSalePriceTestStatusModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminShortSalePriceTestStatusModel$lock()

