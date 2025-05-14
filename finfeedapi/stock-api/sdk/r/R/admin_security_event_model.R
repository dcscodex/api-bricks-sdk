#' Create a new AdminSecurityEventModel
#'
#' @description
#' Represents the response DTO for security event information
#'
#' @docType class
#' @title AdminSecurityEventModel
#' @description AdminSecurityEventModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the security event was recorded as DateTime character [optional]
#' @field security_event Security event as byte value integer [optional]
#' @field security_event_code Security event as character string ('O' or 'C') character [optional]
#' @field security_event_text Human-readable description of the security event character [optional]
#' @field is_opening_process_complete Indicates if the security event is 'Opening Process Complete' ('O'/0x4f). character [optional]
#' @field is_closing_process_complete Indicates if the security event is 'Closing Process Complete' ('C'/0x43). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminSecurityEventModel <- R6::R6Class(
  "AdminSecurityEventModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `security_event` = NULL,
    `security_event_code` = NULL,
    `security_event_text` = NULL,
    `is_opening_process_complete` = NULL,
    `is_closing_process_complete` = NULL,

    #' @description
    #' Initialize a new AdminSecurityEventModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the security event was recorded as DateTime
    #' @param security_event Security event as byte value
    #' @param security_event_code Security event as character string ('O' or 'C')
    #' @param security_event_text Human-readable description of the security event
    #' @param is_opening_process_complete Indicates if the security event is 'Opening Process Complete' ('O'/0x4f).
    #' @param is_closing_process_complete Indicates if the security event is 'Closing Process Complete' ('C'/0x43).
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `security_event` = NULL, `security_event_code` = NULL, `security_event_text` = NULL, `is_opening_process_complete` = NULL, `is_closing_process_complete` = NULL, ...) {
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
      if (!is.null(`security_event`)) {
        if (!(is.numeric(`security_event`) && length(`security_event`) == 1)) {
          stop(paste("Error! Invalid data for `security_event`. Must be an integer:", `security_event`))
        }
        self$`security_event` <- `security_event`
      }
      if (!is.null(`security_event_code`)) {
        if (!(is.character(`security_event_code`) && length(`security_event_code`) == 1)) {
          stop(paste("Error! Invalid data for `security_event_code`. Must be a string:", `security_event_code`))
        }
        self$`security_event_code` <- `security_event_code`
      }
      if (!is.null(`security_event_text`)) {
        if (!(is.character(`security_event_text`) && length(`security_event_text`) == 1)) {
          stop(paste("Error! Invalid data for `security_event_text`. Must be a string:", `security_event_text`))
        }
        self$`security_event_text` <- `security_event_text`
      }
      if (!is.null(`is_opening_process_complete`)) {
        if (!(is.logical(`is_opening_process_complete`) && length(`is_opening_process_complete`) == 1)) {
          stop(paste("Error! Invalid data for `is_opening_process_complete`. Must be a boolean:", `is_opening_process_complete`))
        }
        self$`is_opening_process_complete` <- `is_opening_process_complete`
      }
      if (!is.null(`is_closing_process_complete`)) {
        if (!(is.logical(`is_closing_process_complete`) && length(`is_closing_process_complete`) == 1)) {
          stop(paste("Error! Invalid data for `is_closing_process_complete`. Must be a boolean:", `is_closing_process_complete`))
        }
        self$`is_closing_process_complete` <- `is_closing_process_complete`
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
    #' @return AdminSecurityEventModel as a base R list.
    #' @examples
    #' # convert array of AdminSecurityEventModel (x) to a data frame
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
    #' Convert AdminSecurityEventModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminSecurityEventModelObject <- list()
      if (!is.null(self$`symbol`)) {
        AdminSecurityEventModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        AdminSecurityEventModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminSecurityEventModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`security_event`)) {
        AdminSecurityEventModelObject[["security_event"]] <-
          self$`security_event`
      }
      if (!is.null(self$`security_event_code`)) {
        AdminSecurityEventModelObject[["security_event_code"]] <-
          self$`security_event_code`
      }
      if (!is.null(self$`security_event_text`)) {
        AdminSecurityEventModelObject[["security_event_text"]] <-
          self$`security_event_text`
      }
      if (!is.null(self$`is_opening_process_complete`)) {
        AdminSecurityEventModelObject[["is_opening_process_complete"]] <-
          self$`is_opening_process_complete`
      }
      if (!is.null(self$`is_closing_process_complete`)) {
        AdminSecurityEventModelObject[["is_closing_process_complete"]] <-
          self$`is_closing_process_complete`
      }
      return(AdminSecurityEventModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminSecurityEventModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminSecurityEventModel
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
      if (!is.null(this_object$`security_event`)) {
        self$`security_event` <- this_object$`security_event`
      }
      if (!is.null(this_object$`security_event_code`)) {
        self$`security_event_code` <- this_object$`security_event_code`
      }
      if (!is.null(this_object$`security_event_text`)) {
        self$`security_event_text` <- this_object$`security_event_text`
      }
      if (!is.null(this_object$`is_opening_process_complete`)) {
        self$`is_opening_process_complete` <- this_object$`is_opening_process_complete`
      }
      if (!is.null(this_object$`is_closing_process_complete`)) {
        self$`is_closing_process_complete` <- this_object$`is_closing_process_complete`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminSecurityEventModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminSecurityEventModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminSecurityEventModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`security_event` <- this_object$`security_event`
      self$`security_event_code` <- this_object$`security_event_code`
      self$`security_event_text` <- this_object$`security_event_text`
      self$`is_opening_process_complete` <- this_object$`is_opening_process_complete`
      self$`is_closing_process_complete` <- this_object$`is_closing_process_complete`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminSecurityEventModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminSecurityEventModel
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
# AdminSecurityEventModel$unlock()
#
## Below is an example to define the print function
# AdminSecurityEventModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminSecurityEventModel$lock()

