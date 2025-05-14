#' Create a new AdminTradingStatusModel
#'
#' @description
#' Represents the response DTO for trading status information
#'
#' @docType class
#' @title AdminTradingStatusModel
#' @description AdminTradingStatusModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the trading status was recorded as DateTime character [optional]
#' @field is_trading_live Gets whether the security is currently trading on IEX character [optional]
#' @field is_trading_halted Gets whether the security is halted across all US equity markets character [optional]
#' @field is_trading_in_order_acceptance_period Gets whether the security is in Order Acceptance Period on IEX character [optional]
#' @field is_trading_paused Gets whether the security is paused and in Order Acceptance Period on IEX character [optional]
#' @field is_reason_halt_news_pending Gets whether the halt reason is News Pending character [optional]
#' @field is_reason_ipo_not_yet_trading Gets whether the halt reason is IPO Not Yet Trading character [optional]
#' @field is_reason_ipo_deferred Gets whether the halt reason is IPO Deferred character [optional]
#' @field is_reason_halt_news_dissemination Gets whether the order acceptance period reason is Halt News Dissemination character [optional]
#' @field is_reason_ipo_order_acceptance_period Gets whether the order acceptance period reason is IPO Order Acceptance Period character [optional]
#' @field is_reason_ipo_pre_launch_period Gets whether the order acceptance period reason is IPO Pre-Launch Period character [optional]
#' @field is_reason_market_wide_circuit_breaker_level1 Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached character [optional]
#' @field is_reason_market_wide_circuit_breaker_level2 Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached character [optional]
#' @field is_reason_market_wide_circuit_breaker_level3 Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached character [optional]
#' @field is_reason_not_applicable Gets whether the reason is Not Applicable character [optional]
#' @field is_reason_not_available Gets whether the halt reason is Not Available character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminTradingStatusModel <- R6::R6Class(
  "AdminTradingStatusModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `is_trading_live` = NULL,
    `is_trading_halted` = NULL,
    `is_trading_in_order_acceptance_period` = NULL,
    `is_trading_paused` = NULL,
    `is_reason_halt_news_pending` = NULL,
    `is_reason_ipo_not_yet_trading` = NULL,
    `is_reason_ipo_deferred` = NULL,
    `is_reason_halt_news_dissemination` = NULL,
    `is_reason_ipo_order_acceptance_period` = NULL,
    `is_reason_ipo_pre_launch_period` = NULL,
    `is_reason_market_wide_circuit_breaker_level1` = NULL,
    `is_reason_market_wide_circuit_breaker_level2` = NULL,
    `is_reason_market_wide_circuit_breaker_level3` = NULL,
    `is_reason_not_applicable` = NULL,
    `is_reason_not_available` = NULL,

    #' @description
    #' Initialize a new AdminTradingStatusModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the trading status was recorded as DateTime
    #' @param is_trading_live Gets whether the security is currently trading on IEX
    #' @param is_trading_halted Gets whether the security is halted across all US equity markets
    #' @param is_trading_in_order_acceptance_period Gets whether the security is in Order Acceptance Period on IEX
    #' @param is_trading_paused Gets whether the security is paused and in Order Acceptance Period on IEX
    #' @param is_reason_halt_news_pending Gets whether the halt reason is News Pending
    #' @param is_reason_ipo_not_yet_trading Gets whether the halt reason is IPO Not Yet Trading
    #' @param is_reason_ipo_deferred Gets whether the halt reason is IPO Deferred
    #' @param is_reason_halt_news_dissemination Gets whether the order acceptance period reason is Halt News Dissemination
    #' @param is_reason_ipo_order_acceptance_period Gets whether the order acceptance period reason is IPO Order Acceptance Period
    #' @param is_reason_ipo_pre_launch_period Gets whether the order acceptance period reason is IPO Pre-Launch Period
    #' @param is_reason_market_wide_circuit_breaker_level1 Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 1 – Breached
    #' @param is_reason_market_wide_circuit_breaker_level2 Gets whether the order acceptance period reason is Market-Wide Circuit Breaker Level 2 – Breached
    #' @param is_reason_market_wide_circuit_breaker_level3 Gets whether the halt reason is Market-Wide Circuit Breaker Level 3 – Breached
    #' @param is_reason_not_applicable Gets whether the reason is Not Applicable
    #' @param is_reason_not_available Gets whether the halt reason is Not Available
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `is_trading_live` = NULL, `is_trading_halted` = NULL, `is_trading_in_order_acceptance_period` = NULL, `is_trading_paused` = NULL, `is_reason_halt_news_pending` = NULL, `is_reason_ipo_not_yet_trading` = NULL, `is_reason_ipo_deferred` = NULL, `is_reason_halt_news_dissemination` = NULL, `is_reason_ipo_order_acceptance_period` = NULL, `is_reason_ipo_pre_launch_period` = NULL, `is_reason_market_wide_circuit_breaker_level1` = NULL, `is_reason_market_wide_circuit_breaker_level2` = NULL, `is_reason_market_wide_circuit_breaker_level3` = NULL, `is_reason_not_applicable` = NULL, `is_reason_not_available` = NULL, ...) {
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
      if (!is.null(`is_trading_live`)) {
        if (!(is.logical(`is_trading_live`) && length(`is_trading_live`) == 1)) {
          stop(paste("Error! Invalid data for `is_trading_live`. Must be a boolean:", `is_trading_live`))
        }
        self$`is_trading_live` <- `is_trading_live`
      }
      if (!is.null(`is_trading_halted`)) {
        if (!(is.logical(`is_trading_halted`) && length(`is_trading_halted`) == 1)) {
          stop(paste("Error! Invalid data for `is_trading_halted`. Must be a boolean:", `is_trading_halted`))
        }
        self$`is_trading_halted` <- `is_trading_halted`
      }
      if (!is.null(`is_trading_in_order_acceptance_period`)) {
        if (!(is.logical(`is_trading_in_order_acceptance_period`) && length(`is_trading_in_order_acceptance_period`) == 1)) {
          stop(paste("Error! Invalid data for `is_trading_in_order_acceptance_period`. Must be a boolean:", `is_trading_in_order_acceptance_period`))
        }
        self$`is_trading_in_order_acceptance_period` <- `is_trading_in_order_acceptance_period`
      }
      if (!is.null(`is_trading_paused`)) {
        if (!(is.logical(`is_trading_paused`) && length(`is_trading_paused`) == 1)) {
          stop(paste("Error! Invalid data for `is_trading_paused`. Must be a boolean:", `is_trading_paused`))
        }
        self$`is_trading_paused` <- `is_trading_paused`
      }
      if (!is.null(`is_reason_halt_news_pending`)) {
        if (!(is.logical(`is_reason_halt_news_pending`) && length(`is_reason_halt_news_pending`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_halt_news_pending`. Must be a boolean:", `is_reason_halt_news_pending`))
        }
        self$`is_reason_halt_news_pending` <- `is_reason_halt_news_pending`
      }
      if (!is.null(`is_reason_ipo_not_yet_trading`)) {
        if (!(is.logical(`is_reason_ipo_not_yet_trading`) && length(`is_reason_ipo_not_yet_trading`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_ipo_not_yet_trading`. Must be a boolean:", `is_reason_ipo_not_yet_trading`))
        }
        self$`is_reason_ipo_not_yet_trading` <- `is_reason_ipo_not_yet_trading`
      }
      if (!is.null(`is_reason_ipo_deferred`)) {
        if (!(is.logical(`is_reason_ipo_deferred`) && length(`is_reason_ipo_deferred`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_ipo_deferred`. Must be a boolean:", `is_reason_ipo_deferred`))
        }
        self$`is_reason_ipo_deferred` <- `is_reason_ipo_deferred`
      }
      if (!is.null(`is_reason_halt_news_dissemination`)) {
        if (!(is.logical(`is_reason_halt_news_dissemination`) && length(`is_reason_halt_news_dissemination`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_halt_news_dissemination`. Must be a boolean:", `is_reason_halt_news_dissemination`))
        }
        self$`is_reason_halt_news_dissemination` <- `is_reason_halt_news_dissemination`
      }
      if (!is.null(`is_reason_ipo_order_acceptance_period`)) {
        if (!(is.logical(`is_reason_ipo_order_acceptance_period`) && length(`is_reason_ipo_order_acceptance_period`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_ipo_order_acceptance_period`. Must be a boolean:", `is_reason_ipo_order_acceptance_period`))
        }
        self$`is_reason_ipo_order_acceptance_period` <- `is_reason_ipo_order_acceptance_period`
      }
      if (!is.null(`is_reason_ipo_pre_launch_period`)) {
        if (!(is.logical(`is_reason_ipo_pre_launch_period`) && length(`is_reason_ipo_pre_launch_period`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_ipo_pre_launch_period`. Must be a boolean:", `is_reason_ipo_pre_launch_period`))
        }
        self$`is_reason_ipo_pre_launch_period` <- `is_reason_ipo_pre_launch_period`
      }
      if (!is.null(`is_reason_market_wide_circuit_breaker_level1`)) {
        if (!(is.logical(`is_reason_market_wide_circuit_breaker_level1`) && length(`is_reason_market_wide_circuit_breaker_level1`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_market_wide_circuit_breaker_level1`. Must be a boolean:", `is_reason_market_wide_circuit_breaker_level1`))
        }
        self$`is_reason_market_wide_circuit_breaker_level1` <- `is_reason_market_wide_circuit_breaker_level1`
      }
      if (!is.null(`is_reason_market_wide_circuit_breaker_level2`)) {
        if (!(is.logical(`is_reason_market_wide_circuit_breaker_level2`) && length(`is_reason_market_wide_circuit_breaker_level2`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_market_wide_circuit_breaker_level2`. Must be a boolean:", `is_reason_market_wide_circuit_breaker_level2`))
        }
        self$`is_reason_market_wide_circuit_breaker_level2` <- `is_reason_market_wide_circuit_breaker_level2`
      }
      if (!is.null(`is_reason_market_wide_circuit_breaker_level3`)) {
        if (!(is.logical(`is_reason_market_wide_circuit_breaker_level3`) && length(`is_reason_market_wide_circuit_breaker_level3`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_market_wide_circuit_breaker_level3`. Must be a boolean:", `is_reason_market_wide_circuit_breaker_level3`))
        }
        self$`is_reason_market_wide_circuit_breaker_level3` <- `is_reason_market_wide_circuit_breaker_level3`
      }
      if (!is.null(`is_reason_not_applicable`)) {
        if (!(is.logical(`is_reason_not_applicable`) && length(`is_reason_not_applicable`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_not_applicable`. Must be a boolean:", `is_reason_not_applicable`))
        }
        self$`is_reason_not_applicable` <- `is_reason_not_applicable`
      }
      if (!is.null(`is_reason_not_available`)) {
        if (!(is.logical(`is_reason_not_available`) && length(`is_reason_not_available`) == 1)) {
          stop(paste("Error! Invalid data for `is_reason_not_available`. Must be a boolean:", `is_reason_not_available`))
        }
        self$`is_reason_not_available` <- `is_reason_not_available`
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
    #' @return AdminTradingStatusModel as a base R list.
    #' @examples
    #' # convert array of AdminTradingStatusModel (x) to a data frame
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
    #' Convert AdminTradingStatusModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminTradingStatusModelObject <- list()
      if (!is.null(self$`symbol`)) {
        AdminTradingStatusModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        AdminTradingStatusModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminTradingStatusModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`is_trading_live`)) {
        AdminTradingStatusModelObject[["is_trading_live"]] <-
          self$`is_trading_live`
      }
      if (!is.null(self$`is_trading_halted`)) {
        AdminTradingStatusModelObject[["is_trading_halted"]] <-
          self$`is_trading_halted`
      }
      if (!is.null(self$`is_trading_in_order_acceptance_period`)) {
        AdminTradingStatusModelObject[["is_trading_in_order_acceptance_period"]] <-
          self$`is_trading_in_order_acceptance_period`
      }
      if (!is.null(self$`is_trading_paused`)) {
        AdminTradingStatusModelObject[["is_trading_paused"]] <-
          self$`is_trading_paused`
      }
      if (!is.null(self$`is_reason_halt_news_pending`)) {
        AdminTradingStatusModelObject[["is_reason_halt_news_pending"]] <-
          self$`is_reason_halt_news_pending`
      }
      if (!is.null(self$`is_reason_ipo_not_yet_trading`)) {
        AdminTradingStatusModelObject[["is_reason_ipo_not_yet_trading"]] <-
          self$`is_reason_ipo_not_yet_trading`
      }
      if (!is.null(self$`is_reason_ipo_deferred`)) {
        AdminTradingStatusModelObject[["is_reason_ipo_deferred"]] <-
          self$`is_reason_ipo_deferred`
      }
      if (!is.null(self$`is_reason_halt_news_dissemination`)) {
        AdminTradingStatusModelObject[["is_reason_halt_news_dissemination"]] <-
          self$`is_reason_halt_news_dissemination`
      }
      if (!is.null(self$`is_reason_ipo_order_acceptance_period`)) {
        AdminTradingStatusModelObject[["is_reason_ipo_order_acceptance_period"]] <-
          self$`is_reason_ipo_order_acceptance_period`
      }
      if (!is.null(self$`is_reason_ipo_pre_launch_period`)) {
        AdminTradingStatusModelObject[["is_reason_ipo_pre_launch_period"]] <-
          self$`is_reason_ipo_pre_launch_period`
      }
      if (!is.null(self$`is_reason_market_wide_circuit_breaker_level1`)) {
        AdminTradingStatusModelObject[["is_reason_market_wide_circuit_breaker_level1"]] <-
          self$`is_reason_market_wide_circuit_breaker_level1`
      }
      if (!is.null(self$`is_reason_market_wide_circuit_breaker_level2`)) {
        AdminTradingStatusModelObject[["is_reason_market_wide_circuit_breaker_level2"]] <-
          self$`is_reason_market_wide_circuit_breaker_level2`
      }
      if (!is.null(self$`is_reason_market_wide_circuit_breaker_level3`)) {
        AdminTradingStatusModelObject[["is_reason_market_wide_circuit_breaker_level3"]] <-
          self$`is_reason_market_wide_circuit_breaker_level3`
      }
      if (!is.null(self$`is_reason_not_applicable`)) {
        AdminTradingStatusModelObject[["is_reason_not_applicable"]] <-
          self$`is_reason_not_applicable`
      }
      if (!is.null(self$`is_reason_not_available`)) {
        AdminTradingStatusModelObject[["is_reason_not_available"]] <-
          self$`is_reason_not_available`
      }
      return(AdminTradingStatusModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminTradingStatusModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminTradingStatusModel
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
      if (!is.null(this_object$`is_trading_live`)) {
        self$`is_trading_live` <- this_object$`is_trading_live`
      }
      if (!is.null(this_object$`is_trading_halted`)) {
        self$`is_trading_halted` <- this_object$`is_trading_halted`
      }
      if (!is.null(this_object$`is_trading_in_order_acceptance_period`)) {
        self$`is_trading_in_order_acceptance_period` <- this_object$`is_trading_in_order_acceptance_period`
      }
      if (!is.null(this_object$`is_trading_paused`)) {
        self$`is_trading_paused` <- this_object$`is_trading_paused`
      }
      if (!is.null(this_object$`is_reason_halt_news_pending`)) {
        self$`is_reason_halt_news_pending` <- this_object$`is_reason_halt_news_pending`
      }
      if (!is.null(this_object$`is_reason_ipo_not_yet_trading`)) {
        self$`is_reason_ipo_not_yet_trading` <- this_object$`is_reason_ipo_not_yet_trading`
      }
      if (!is.null(this_object$`is_reason_ipo_deferred`)) {
        self$`is_reason_ipo_deferred` <- this_object$`is_reason_ipo_deferred`
      }
      if (!is.null(this_object$`is_reason_halt_news_dissemination`)) {
        self$`is_reason_halt_news_dissemination` <- this_object$`is_reason_halt_news_dissemination`
      }
      if (!is.null(this_object$`is_reason_ipo_order_acceptance_period`)) {
        self$`is_reason_ipo_order_acceptance_period` <- this_object$`is_reason_ipo_order_acceptance_period`
      }
      if (!is.null(this_object$`is_reason_ipo_pre_launch_period`)) {
        self$`is_reason_ipo_pre_launch_period` <- this_object$`is_reason_ipo_pre_launch_period`
      }
      if (!is.null(this_object$`is_reason_market_wide_circuit_breaker_level1`)) {
        self$`is_reason_market_wide_circuit_breaker_level1` <- this_object$`is_reason_market_wide_circuit_breaker_level1`
      }
      if (!is.null(this_object$`is_reason_market_wide_circuit_breaker_level2`)) {
        self$`is_reason_market_wide_circuit_breaker_level2` <- this_object$`is_reason_market_wide_circuit_breaker_level2`
      }
      if (!is.null(this_object$`is_reason_market_wide_circuit_breaker_level3`)) {
        self$`is_reason_market_wide_circuit_breaker_level3` <- this_object$`is_reason_market_wide_circuit_breaker_level3`
      }
      if (!is.null(this_object$`is_reason_not_applicable`)) {
        self$`is_reason_not_applicable` <- this_object$`is_reason_not_applicable`
      }
      if (!is.null(this_object$`is_reason_not_available`)) {
        self$`is_reason_not_available` <- this_object$`is_reason_not_available`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminTradingStatusModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminTradingStatusModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminTradingStatusModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`is_trading_live` <- this_object$`is_trading_live`
      self$`is_trading_halted` <- this_object$`is_trading_halted`
      self$`is_trading_in_order_acceptance_period` <- this_object$`is_trading_in_order_acceptance_period`
      self$`is_trading_paused` <- this_object$`is_trading_paused`
      self$`is_reason_halt_news_pending` <- this_object$`is_reason_halt_news_pending`
      self$`is_reason_ipo_not_yet_trading` <- this_object$`is_reason_ipo_not_yet_trading`
      self$`is_reason_ipo_deferred` <- this_object$`is_reason_ipo_deferred`
      self$`is_reason_halt_news_dissemination` <- this_object$`is_reason_halt_news_dissemination`
      self$`is_reason_ipo_order_acceptance_period` <- this_object$`is_reason_ipo_order_acceptance_period`
      self$`is_reason_ipo_pre_launch_period` <- this_object$`is_reason_ipo_pre_launch_period`
      self$`is_reason_market_wide_circuit_breaker_level1` <- this_object$`is_reason_market_wide_circuit_breaker_level1`
      self$`is_reason_market_wide_circuit_breaker_level2` <- this_object$`is_reason_market_wide_circuit_breaker_level2`
      self$`is_reason_market_wide_circuit_breaker_level3` <- this_object$`is_reason_market_wide_circuit_breaker_level3`
      self$`is_reason_not_applicable` <- this_object$`is_reason_not_applicable`
      self$`is_reason_not_available` <- this_object$`is_reason_not_available`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminTradingStatusModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminTradingStatusModel
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
# AdminTradingStatusModel$unlock()
#
## Below is an example to define the print function
# AdminTradingStatusModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminTradingStatusModel$lock()

