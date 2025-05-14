#' Create a new AdminSystemEventModel
#'
#' @description
#' Represents the response DTO for system event information
#'
#' @docType class
#' @title AdminSystemEventModel
#' @description AdminSystemEventModel Class
#' @format An \code{R6Class} generator object
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the system event was recorded as DateTime character [optional]
#' @field system_event System event as byte value integer [optional]
#' @field system_event_code System event as string character [optional]
#' @field system_event_text Human-readable description of the system event character [optional]
#' @field is_system_event_start_of_messages Indicates if the system event is 'Start of Messages' (O).  Outside of heartbeat messages on the lower level protocol,   the start of day message is the first message sent in any trading session. character [optional]
#' @field is_system_event_start_of_system_hours Indicates if the system event is 'Start of System Hours' (S).  This message indicates that IEX is open and ready to start accepting orders. character [optional]
#' @field is_system_event_start_of_regular_market_hours Indicates if the system event is 'Start of Regular Market Hours' (R).  This message indicates that DAY and GTX orders, as well as market orders and pegged orders,   are available for execution on IEX. character [optional]
#' @field is_system_event_end_of_regular_market_hours Indicates if the system event is 'End of Regular Market Hours' (M).  This message indicates that DAY orders, market orders, and pegged orders   are no longer accepted by IEX. character [optional]
#' @field is_system_event_end_of_system_hours Indicates if the system event is 'End of System Hours' (E).  This message indicates that IEX is now closed and will not accept   any new orders during this trading session. It is still possible   to receive messages after the end of day. character [optional]
#' @field is_system_event_end_of_messages Indicates if the system event is 'End of Messages' (C).  This is always the last message sent in any trading session. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminSystemEventModel <- R6::R6Class(
  "AdminSystemEventModel",
  public = list(
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `system_event` = NULL,
    `system_event_code` = NULL,
    `system_event_text` = NULL,
    `is_system_event_start_of_messages` = NULL,
    `is_system_event_start_of_system_hours` = NULL,
    `is_system_event_start_of_regular_market_hours` = NULL,
    `is_system_event_end_of_regular_market_hours` = NULL,
    `is_system_event_end_of_system_hours` = NULL,
    `is_system_event_end_of_messages` = NULL,

    #' @description
    #' Initialize a new AdminSystemEventModel class.
    #'
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the system event was recorded as DateTime
    #' @param system_event System event as byte value
    #' @param system_event_code System event as string
    #' @param system_event_text Human-readable description of the system event
    #' @param is_system_event_start_of_messages Indicates if the system event is 'Start of Messages' (O).  Outside of heartbeat messages on the lower level protocol,   the start of day message is the first message sent in any trading session.
    #' @param is_system_event_start_of_system_hours Indicates if the system event is 'Start of System Hours' (S).  This message indicates that IEX is open and ready to start accepting orders.
    #' @param is_system_event_start_of_regular_market_hours Indicates if the system event is 'Start of Regular Market Hours' (R).  This message indicates that DAY and GTX orders, as well as market orders and pegged orders,   are available for execution on IEX.
    #' @param is_system_event_end_of_regular_market_hours Indicates if the system event is 'End of Regular Market Hours' (M).  This message indicates that DAY orders, market orders, and pegged orders   are no longer accepted by IEX.
    #' @param is_system_event_end_of_system_hours Indicates if the system event is 'End of System Hours' (E).  This message indicates that IEX is now closed and will not accept   any new orders during this trading session. It is still possible   to receive messages after the end of day.
    #' @param is_system_event_end_of_messages Indicates if the system event is 'End of Messages' (C).  This is always the last message sent in any trading session.
    #' @param ... Other optional arguments.
    initialize = function(`timestamp_nanos` = NULL, `timestamp` = NULL, `system_event` = NULL, `system_event_code` = NULL, `system_event_text` = NULL, `is_system_event_start_of_messages` = NULL, `is_system_event_start_of_system_hours` = NULL, `is_system_event_start_of_regular_market_hours` = NULL, `is_system_event_end_of_regular_market_hours` = NULL, `is_system_event_end_of_system_hours` = NULL, `is_system_event_end_of_messages` = NULL, ...) {
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
      if (!is.null(`system_event`)) {
        if (!(is.numeric(`system_event`) && length(`system_event`) == 1)) {
          stop(paste("Error! Invalid data for `system_event`. Must be an integer:", `system_event`))
        }
        self$`system_event` <- `system_event`
      }
      if (!is.null(`system_event_code`)) {
        if (!(is.character(`system_event_code`) && length(`system_event_code`) == 1)) {
          stop(paste("Error! Invalid data for `system_event_code`. Must be a string:", `system_event_code`))
        }
        self$`system_event_code` <- `system_event_code`
      }
      if (!is.null(`system_event_text`)) {
        if (!(is.character(`system_event_text`) && length(`system_event_text`) == 1)) {
          stop(paste("Error! Invalid data for `system_event_text`. Must be a string:", `system_event_text`))
        }
        self$`system_event_text` <- `system_event_text`
      }
      if (!is.null(`is_system_event_start_of_messages`)) {
        if (!(is.logical(`is_system_event_start_of_messages`) && length(`is_system_event_start_of_messages`) == 1)) {
          stop(paste("Error! Invalid data for `is_system_event_start_of_messages`. Must be a boolean:", `is_system_event_start_of_messages`))
        }
        self$`is_system_event_start_of_messages` <- `is_system_event_start_of_messages`
      }
      if (!is.null(`is_system_event_start_of_system_hours`)) {
        if (!(is.logical(`is_system_event_start_of_system_hours`) && length(`is_system_event_start_of_system_hours`) == 1)) {
          stop(paste("Error! Invalid data for `is_system_event_start_of_system_hours`. Must be a boolean:", `is_system_event_start_of_system_hours`))
        }
        self$`is_system_event_start_of_system_hours` <- `is_system_event_start_of_system_hours`
      }
      if (!is.null(`is_system_event_start_of_regular_market_hours`)) {
        if (!(is.logical(`is_system_event_start_of_regular_market_hours`) && length(`is_system_event_start_of_regular_market_hours`) == 1)) {
          stop(paste("Error! Invalid data for `is_system_event_start_of_regular_market_hours`. Must be a boolean:", `is_system_event_start_of_regular_market_hours`))
        }
        self$`is_system_event_start_of_regular_market_hours` <- `is_system_event_start_of_regular_market_hours`
      }
      if (!is.null(`is_system_event_end_of_regular_market_hours`)) {
        if (!(is.logical(`is_system_event_end_of_regular_market_hours`) && length(`is_system_event_end_of_regular_market_hours`) == 1)) {
          stop(paste("Error! Invalid data for `is_system_event_end_of_regular_market_hours`. Must be a boolean:", `is_system_event_end_of_regular_market_hours`))
        }
        self$`is_system_event_end_of_regular_market_hours` <- `is_system_event_end_of_regular_market_hours`
      }
      if (!is.null(`is_system_event_end_of_system_hours`)) {
        if (!(is.logical(`is_system_event_end_of_system_hours`) && length(`is_system_event_end_of_system_hours`) == 1)) {
          stop(paste("Error! Invalid data for `is_system_event_end_of_system_hours`. Must be a boolean:", `is_system_event_end_of_system_hours`))
        }
        self$`is_system_event_end_of_system_hours` <- `is_system_event_end_of_system_hours`
      }
      if (!is.null(`is_system_event_end_of_messages`)) {
        if (!(is.logical(`is_system_event_end_of_messages`) && length(`is_system_event_end_of_messages`) == 1)) {
          stop(paste("Error! Invalid data for `is_system_event_end_of_messages`. Must be a boolean:", `is_system_event_end_of_messages`))
        }
        self$`is_system_event_end_of_messages` <- `is_system_event_end_of_messages`
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
    #' @return AdminSystemEventModel as a base R list.
    #' @examples
    #' # convert array of AdminSystemEventModel (x) to a data frame
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
    #' Convert AdminSystemEventModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminSystemEventModelObject <- list()
      if (!is.null(self$`timestamp_nanos`)) {
        AdminSystemEventModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminSystemEventModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`system_event`)) {
        AdminSystemEventModelObject[["system_event"]] <-
          self$`system_event`
      }
      if (!is.null(self$`system_event_code`)) {
        AdminSystemEventModelObject[["system_event_code"]] <-
          self$`system_event_code`
      }
      if (!is.null(self$`system_event_text`)) {
        AdminSystemEventModelObject[["system_event_text"]] <-
          self$`system_event_text`
      }
      if (!is.null(self$`is_system_event_start_of_messages`)) {
        AdminSystemEventModelObject[["is_system_event_start_of_messages"]] <-
          self$`is_system_event_start_of_messages`
      }
      if (!is.null(self$`is_system_event_start_of_system_hours`)) {
        AdminSystemEventModelObject[["is_system_event_start_of_system_hours"]] <-
          self$`is_system_event_start_of_system_hours`
      }
      if (!is.null(self$`is_system_event_start_of_regular_market_hours`)) {
        AdminSystemEventModelObject[["is_system_event_start_of_regular_market_hours"]] <-
          self$`is_system_event_start_of_regular_market_hours`
      }
      if (!is.null(self$`is_system_event_end_of_regular_market_hours`)) {
        AdminSystemEventModelObject[["is_system_event_end_of_regular_market_hours"]] <-
          self$`is_system_event_end_of_regular_market_hours`
      }
      if (!is.null(self$`is_system_event_end_of_system_hours`)) {
        AdminSystemEventModelObject[["is_system_event_end_of_system_hours"]] <-
          self$`is_system_event_end_of_system_hours`
      }
      if (!is.null(self$`is_system_event_end_of_messages`)) {
        AdminSystemEventModelObject[["is_system_event_end_of_messages"]] <-
          self$`is_system_event_end_of_messages`
      }
      return(AdminSystemEventModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminSystemEventModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminSystemEventModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`timestamp_nanos`)) {
        self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`system_event`)) {
        self$`system_event` <- this_object$`system_event`
      }
      if (!is.null(this_object$`system_event_code`)) {
        self$`system_event_code` <- this_object$`system_event_code`
      }
      if (!is.null(this_object$`system_event_text`)) {
        self$`system_event_text` <- this_object$`system_event_text`
      }
      if (!is.null(this_object$`is_system_event_start_of_messages`)) {
        self$`is_system_event_start_of_messages` <- this_object$`is_system_event_start_of_messages`
      }
      if (!is.null(this_object$`is_system_event_start_of_system_hours`)) {
        self$`is_system_event_start_of_system_hours` <- this_object$`is_system_event_start_of_system_hours`
      }
      if (!is.null(this_object$`is_system_event_start_of_regular_market_hours`)) {
        self$`is_system_event_start_of_regular_market_hours` <- this_object$`is_system_event_start_of_regular_market_hours`
      }
      if (!is.null(this_object$`is_system_event_end_of_regular_market_hours`)) {
        self$`is_system_event_end_of_regular_market_hours` <- this_object$`is_system_event_end_of_regular_market_hours`
      }
      if (!is.null(this_object$`is_system_event_end_of_system_hours`)) {
        self$`is_system_event_end_of_system_hours` <- this_object$`is_system_event_end_of_system_hours`
      }
      if (!is.null(this_object$`is_system_event_end_of_messages`)) {
        self$`is_system_event_end_of_messages` <- this_object$`is_system_event_end_of_messages`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminSystemEventModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminSystemEventModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminSystemEventModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`system_event` <- this_object$`system_event`
      self$`system_event_code` <- this_object$`system_event_code`
      self$`system_event_text` <- this_object$`system_event_text`
      self$`is_system_event_start_of_messages` <- this_object$`is_system_event_start_of_messages`
      self$`is_system_event_start_of_system_hours` <- this_object$`is_system_event_start_of_system_hours`
      self$`is_system_event_start_of_regular_market_hours` <- this_object$`is_system_event_start_of_regular_market_hours`
      self$`is_system_event_end_of_regular_market_hours` <- this_object$`is_system_event_end_of_regular_market_hours`
      self$`is_system_event_end_of_system_hours` <- this_object$`is_system_event_end_of_system_hours`
      self$`is_system_event_end_of_messages` <- this_object$`is_system_event_end_of_messages`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminSystemEventModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminSystemEventModel
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
# AdminSystemEventModel$unlock()
#
## Below is an example to define the print function
# AdminSystemEventModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminSystemEventModel$lock()

