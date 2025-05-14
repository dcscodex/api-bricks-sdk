#' Create a new AdminOperationalHaltStatusModel
#'
#' @description
#' Represents the response DTO for operational halt status information
#'
#' @docType class
#' @title AdminOperationalHaltStatusModel
#' @description AdminOperationalHaltStatusModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the operational halt status was recorded as DateTime character [optional]
#' @field operational_halt_status Operational halt status as byte value integer [optional]
#' @field operational_halt_status_code Operational halt status as character string character [optional]
#' @field operational_halt_status_text Human-readable description of the operational halt status character [optional]
#' @field is_operationally_halted Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f). character [optional]
#' @field is_not_operationally_halted Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminOperationalHaltStatusModel <- R6::R6Class(
  "AdminOperationalHaltStatusModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `operational_halt_status` = NULL,
    `operational_halt_status_code` = NULL,
    `operational_halt_status_text` = NULL,
    `is_operationally_halted` = NULL,
    `is_not_operationally_halted` = NULL,

    #' @description
    #' Initialize a new AdminOperationalHaltStatusModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the operational halt status was recorded as DateTime
    #' @param operational_halt_status Operational halt status as byte value
    #' @param operational_halt_status_code Operational halt status as character string
    #' @param operational_halt_status_text Human-readable description of the operational halt status
    #' @param is_operationally_halted Indicates if the status is 'IEX specific operational trading halt' ('O'/0x4f).
    #' @param is_not_operationally_halted Indicates if the status is 'Not operationally halted on IEX' ('N'/0x4e).
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `operational_halt_status` = NULL, `operational_halt_status_code` = NULL, `operational_halt_status_text` = NULL, `is_operationally_halted` = NULL, `is_not_operationally_halted` = NULL, ...) {
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
      if (!is.null(`operational_halt_status`)) {
        if (!(is.numeric(`operational_halt_status`) && length(`operational_halt_status`) == 1)) {
          stop(paste("Error! Invalid data for `operational_halt_status`. Must be an integer:", `operational_halt_status`))
        }
        self$`operational_halt_status` <- `operational_halt_status`
      }
      if (!is.null(`operational_halt_status_code`)) {
        if (!(is.character(`operational_halt_status_code`) && length(`operational_halt_status_code`) == 1)) {
          stop(paste("Error! Invalid data for `operational_halt_status_code`. Must be a string:", `operational_halt_status_code`))
        }
        self$`operational_halt_status_code` <- `operational_halt_status_code`
      }
      if (!is.null(`operational_halt_status_text`)) {
        if (!(is.character(`operational_halt_status_text`) && length(`operational_halt_status_text`) == 1)) {
          stop(paste("Error! Invalid data for `operational_halt_status_text`. Must be a string:", `operational_halt_status_text`))
        }
        self$`operational_halt_status_text` <- `operational_halt_status_text`
      }
      if (!is.null(`is_operationally_halted`)) {
        if (!(is.logical(`is_operationally_halted`) && length(`is_operationally_halted`) == 1)) {
          stop(paste("Error! Invalid data for `is_operationally_halted`. Must be a boolean:", `is_operationally_halted`))
        }
        self$`is_operationally_halted` <- `is_operationally_halted`
      }
      if (!is.null(`is_not_operationally_halted`)) {
        if (!(is.logical(`is_not_operationally_halted`) && length(`is_not_operationally_halted`) == 1)) {
          stop(paste("Error! Invalid data for `is_not_operationally_halted`. Must be a boolean:", `is_not_operationally_halted`))
        }
        self$`is_not_operationally_halted` <- `is_not_operationally_halted`
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
    #' @return AdminOperationalHaltStatusModel as a base R list.
    #' @examples
    #' # convert array of AdminOperationalHaltStatusModel (x) to a data frame
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
    #' Convert AdminOperationalHaltStatusModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminOperationalHaltStatusModelObject <- list()
      if (!is.null(self$`symbol`)) {
        AdminOperationalHaltStatusModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        AdminOperationalHaltStatusModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminOperationalHaltStatusModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`operational_halt_status`)) {
        AdminOperationalHaltStatusModelObject[["operational_halt_status"]] <-
          self$`operational_halt_status`
      }
      if (!is.null(self$`operational_halt_status_code`)) {
        AdminOperationalHaltStatusModelObject[["operational_halt_status_code"]] <-
          self$`operational_halt_status_code`
      }
      if (!is.null(self$`operational_halt_status_text`)) {
        AdminOperationalHaltStatusModelObject[["operational_halt_status_text"]] <-
          self$`operational_halt_status_text`
      }
      if (!is.null(self$`is_operationally_halted`)) {
        AdminOperationalHaltStatusModelObject[["is_operationally_halted"]] <-
          self$`is_operationally_halted`
      }
      if (!is.null(self$`is_not_operationally_halted`)) {
        AdminOperationalHaltStatusModelObject[["is_not_operationally_halted"]] <-
          self$`is_not_operationally_halted`
      }
      return(AdminOperationalHaltStatusModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminOperationalHaltStatusModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminOperationalHaltStatusModel
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
      if (!is.null(this_object$`operational_halt_status`)) {
        self$`operational_halt_status` <- this_object$`operational_halt_status`
      }
      if (!is.null(this_object$`operational_halt_status_code`)) {
        self$`operational_halt_status_code` <- this_object$`operational_halt_status_code`
      }
      if (!is.null(this_object$`operational_halt_status_text`)) {
        self$`operational_halt_status_text` <- this_object$`operational_halt_status_text`
      }
      if (!is.null(this_object$`is_operationally_halted`)) {
        self$`is_operationally_halted` <- this_object$`is_operationally_halted`
      }
      if (!is.null(this_object$`is_not_operationally_halted`)) {
        self$`is_not_operationally_halted` <- this_object$`is_not_operationally_halted`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminOperationalHaltStatusModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminOperationalHaltStatusModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminOperationalHaltStatusModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`operational_halt_status` <- this_object$`operational_halt_status`
      self$`operational_halt_status_code` <- this_object$`operational_halt_status_code`
      self$`operational_halt_status_text` <- this_object$`operational_halt_status_text`
      self$`is_operationally_halted` <- this_object$`is_operationally_halted`
      self$`is_not_operationally_halted` <- this_object$`is_not_operationally_halted`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminOperationalHaltStatusModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminOperationalHaltStatusModel
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
# AdminOperationalHaltStatusModel$unlock()
#
## Below is an example to define the print function
# AdminOperationalHaltStatusModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminOperationalHaltStatusModel$lock()

