#' Create a new TradeTradeModel
#'
#' @description
#' Represents the response DTO for a single trade event (report or break).
#'
#' @docType class
#' @title TradeTradeModel
#' @description TradeTradeModel Class
#' @format An \code{R6Class} generator object
#' @field is_trade_break Indicates if this record represents a trade break (true) or a trade report (false). character [optional]
#' @field symbol The stock symbol. character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch. integer [optional]
#' @field timestamp Time when the event was recorded as DateTime (UTC). character [optional]
#' @field size Trade volume (or break volume) in number of shares. integer [optional]
#' @field price Trade price (or break price) as decimal. numeric [optional]
#' @field trade_id IEX trade identifier (same for report and its corresponding break). integer [optional]
#' @field is_intermarket_sweep Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\"ISO\"). False: Non-Intermarket Sweep Order. character [optional]
#' @field is_extended_hours_trade Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade. character [optional]
#' @field is_odd_lot_trade Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade. character [optional]
#' @field is_trade_through_exempt Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue's quotation, OR the trade was a single-price cross. character [optional]
#' @field is_single_price_cross_trade Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TradeTradeModel <- R6::R6Class(
  "TradeTradeModel",
  public = list(
    `is_trade_break` = NULL,
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `size` = NULL,
    `price` = NULL,
    `trade_id` = NULL,
    `is_intermarket_sweep` = NULL,
    `is_extended_hours_trade` = NULL,
    `is_odd_lot_trade` = NULL,
    `is_trade_through_exempt` = NULL,
    `is_single_price_cross_trade` = NULL,

    #' @description
    #' Initialize a new TradeTradeModel class.
    #'
    #' @param is_trade_break Indicates if this record represents a trade break (true) or a trade report (false).
    #' @param symbol The stock symbol.
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch.
    #' @param timestamp Time when the event was recorded as DateTime (UTC).
    #' @param size Trade volume (or break volume) in number of shares.
    #' @param price Trade price (or break price) as decimal.
    #' @param trade_id IEX trade identifier (same for report and its corresponding break).
    #' @param is_intermarket_sweep Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\"ISO\"). False: Non-Intermarket Sweep Order.
    #' @param is_extended_hours_trade Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade.
    #' @param is_odd_lot_trade Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade.
    #' @param is_trade_through_exempt Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue's quotation, OR the trade was a single-price cross.
    #' @param is_single_price_cross_trade Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading.
    #' @param ... Other optional arguments.
    initialize = function(`is_trade_break` = NULL, `symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `size` = NULL, `price` = NULL, `trade_id` = NULL, `is_intermarket_sweep` = NULL, `is_extended_hours_trade` = NULL, `is_odd_lot_trade` = NULL, `is_trade_through_exempt` = NULL, `is_single_price_cross_trade` = NULL, ...) {
      if (!is.null(`is_trade_break`)) {
        if (!(is.logical(`is_trade_break`) && length(`is_trade_break`) == 1)) {
          stop(paste("Error! Invalid data for `is_trade_break`. Must be a boolean:", `is_trade_break`))
        }
        self$`is_trade_break` <- `is_trade_break`
      }
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
      if (!is.null(`trade_id`)) {
        if (!(is.numeric(`trade_id`) && length(`trade_id`) == 1)) {
          stop(paste("Error! Invalid data for `trade_id`. Must be an integer:", `trade_id`))
        }
        self$`trade_id` <- `trade_id`
      }
      if (!is.null(`is_intermarket_sweep`)) {
        if (!(is.logical(`is_intermarket_sweep`) && length(`is_intermarket_sweep`) == 1)) {
          stop(paste("Error! Invalid data for `is_intermarket_sweep`. Must be a boolean:", `is_intermarket_sweep`))
        }
        self$`is_intermarket_sweep` <- `is_intermarket_sweep`
      }
      if (!is.null(`is_extended_hours_trade`)) {
        if (!(is.logical(`is_extended_hours_trade`) && length(`is_extended_hours_trade`) == 1)) {
          stop(paste("Error! Invalid data for `is_extended_hours_trade`. Must be a boolean:", `is_extended_hours_trade`))
        }
        self$`is_extended_hours_trade` <- `is_extended_hours_trade`
      }
      if (!is.null(`is_odd_lot_trade`)) {
        if (!(is.logical(`is_odd_lot_trade`) && length(`is_odd_lot_trade`) == 1)) {
          stop(paste("Error! Invalid data for `is_odd_lot_trade`. Must be a boolean:", `is_odd_lot_trade`))
        }
        self$`is_odd_lot_trade` <- `is_odd_lot_trade`
      }
      if (!is.null(`is_trade_through_exempt`)) {
        if (!(is.logical(`is_trade_through_exempt`) && length(`is_trade_through_exempt`) == 1)) {
          stop(paste("Error! Invalid data for `is_trade_through_exempt`. Must be a boolean:", `is_trade_through_exempt`))
        }
        self$`is_trade_through_exempt` <- `is_trade_through_exempt`
      }
      if (!is.null(`is_single_price_cross_trade`)) {
        if (!(is.logical(`is_single_price_cross_trade`) && length(`is_single_price_cross_trade`) == 1)) {
          stop(paste("Error! Invalid data for `is_single_price_cross_trade`. Must be a boolean:", `is_single_price_cross_trade`))
        }
        self$`is_single_price_cross_trade` <- `is_single_price_cross_trade`
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
    #' @return TradeTradeModel as a base R list.
    #' @examples
    #' # convert array of TradeTradeModel (x) to a data frame
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
    #' Convert TradeTradeModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TradeTradeModelObject <- list()
      if (!is.null(self$`is_trade_break`)) {
        TradeTradeModelObject[["is_trade_break"]] <-
          self$`is_trade_break`
      }
      if (!is.null(self$`symbol`)) {
        TradeTradeModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        TradeTradeModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        TradeTradeModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`size`)) {
        TradeTradeModelObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`price`)) {
        TradeTradeModelObject[["price"]] <-
          self$`price`
      }
      if (!is.null(self$`trade_id`)) {
        TradeTradeModelObject[["trade_id"]] <-
          self$`trade_id`
      }
      if (!is.null(self$`is_intermarket_sweep`)) {
        TradeTradeModelObject[["is_intermarket_sweep"]] <-
          self$`is_intermarket_sweep`
      }
      if (!is.null(self$`is_extended_hours_trade`)) {
        TradeTradeModelObject[["is_extended_hours_trade"]] <-
          self$`is_extended_hours_trade`
      }
      if (!is.null(self$`is_odd_lot_trade`)) {
        TradeTradeModelObject[["is_odd_lot_trade"]] <-
          self$`is_odd_lot_trade`
      }
      if (!is.null(self$`is_trade_through_exempt`)) {
        TradeTradeModelObject[["is_trade_through_exempt"]] <-
          self$`is_trade_through_exempt`
      }
      if (!is.null(self$`is_single_price_cross_trade`)) {
        TradeTradeModelObject[["is_single_price_cross_trade"]] <-
          self$`is_single_price_cross_trade`
      }
      return(TradeTradeModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TradeTradeModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of TradeTradeModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`is_trade_break`)) {
        self$`is_trade_break` <- this_object$`is_trade_break`
      }
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`timestamp_nanos`)) {
        self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      }
      if (!is.null(this_object$`timestamp`)) {
        self$`timestamp` <- this_object$`timestamp`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`price`)) {
        self$`price` <- this_object$`price`
      }
      if (!is.null(this_object$`trade_id`)) {
        self$`trade_id` <- this_object$`trade_id`
      }
      if (!is.null(this_object$`is_intermarket_sweep`)) {
        self$`is_intermarket_sweep` <- this_object$`is_intermarket_sweep`
      }
      if (!is.null(this_object$`is_extended_hours_trade`)) {
        self$`is_extended_hours_trade` <- this_object$`is_extended_hours_trade`
      }
      if (!is.null(this_object$`is_odd_lot_trade`)) {
        self$`is_odd_lot_trade` <- this_object$`is_odd_lot_trade`
      }
      if (!is.null(this_object$`is_trade_through_exempt`)) {
        self$`is_trade_through_exempt` <- this_object$`is_trade_through_exempt`
      }
      if (!is.null(this_object$`is_single_price_cross_trade`)) {
        self$`is_single_price_cross_trade` <- this_object$`is_single_price_cross_trade`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TradeTradeModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TradeTradeModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of TradeTradeModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`is_trade_break` <- this_object$`is_trade_break`
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`size` <- this_object$`size`
      self$`price` <- this_object$`price`
      self$`trade_id` <- this_object$`trade_id`
      self$`is_intermarket_sweep` <- this_object$`is_intermarket_sweep`
      self$`is_extended_hours_trade` <- this_object$`is_extended_hours_trade`
      self$`is_odd_lot_trade` <- this_object$`is_odd_lot_trade`
      self$`is_trade_through_exempt` <- this_object$`is_trade_through_exempt`
      self$`is_single_price_cross_trade` <- this_object$`is_single_price_cross_trade`
      self
    },

    #' @description
    #' Validate JSON input with respect to TradeTradeModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TradeTradeModel
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
# TradeTradeModel$unlock()
#
## Below is an example to define the print function
# TradeTradeModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TradeTradeModel$lock()

