#' Create a new V1Exchange
#'
#' @description
#' Represents an exchange.
#'
#' @docType class
#' @title V1Exchange
#' @description V1Exchange Class
#' @format An \code{R6Class} generator object
#' @field exchange_id Gets or sets the exchange ID. character [optional]
#' @field website Gets or sets the website URL of the exchange. character [optional]
#' @field name Gets or sets the name of the exchange. character [optional]
#' @field data_start  character [optional]
#' @field data_end  character [optional]
#' @field data_quote_start Gets or sets the start date of quote data. character [optional]
#' @field data_quote_end Gets or sets the end date of quote data. character [optional]
#' @field data_orderbook_start Gets or sets the start date of order book data. character [optional]
#' @field data_orderbook_end Gets or sets the end date of order book data. character [optional]
#' @field data_trade_start Gets or sets the start date of trade data. character [optional]
#' @field data_trade_end Gets or sets the end date of trade data. character [optional]
#' @field data_trade_count Gets or sets the number of trades. integer [optional]
#' @field data_symbols_count Gets or sets the number of symbols. integer [optional]
#' @field volume_1hrs_usd Gets or sets the USD volume in the last 1 hour. numeric [optional]
#' @field volume_1day_usd Gets or sets the USD volume in the last 1 day. numeric [optional]
#' @field volume_1mth_usd Gets or sets the USD volume in the last 1 month. numeric [optional]
#' @field metric_id Gets or sets the list of metric IDs. list(character) [optional]
#' @field icons Gets or sets the list of icons for the exchange. list(\link{V1Icon}) [optional]
#' @field rank Rank of the exchange. numeric [optional]
#' @field integration_status Status of the integration character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1Exchange <- R6::R6Class(
  "V1Exchange",
  public = list(
    `exchange_id` = NULL,
    `website` = NULL,
    `name` = NULL,
    `data_start` = NULL,
    `data_end` = NULL,
    `data_quote_start` = NULL,
    `data_quote_end` = NULL,
    `data_orderbook_start` = NULL,
    `data_orderbook_end` = NULL,
    `data_trade_start` = NULL,
    `data_trade_end` = NULL,
    `data_trade_count` = NULL,
    `data_symbols_count` = NULL,
    `volume_1hrs_usd` = NULL,
    `volume_1day_usd` = NULL,
    `volume_1mth_usd` = NULL,
    `metric_id` = NULL,
    `icons` = NULL,
    `rank` = NULL,
    `integration_status` = NULL,

    #' @description
    #' Initialize a new V1Exchange class.
    #'
    #' @param exchange_id Gets or sets the exchange ID.
    #' @param website Gets or sets the website URL of the exchange.
    #' @param name Gets or sets the name of the exchange.
    #' @param data_start data_start
    #' @param data_end data_end
    #' @param data_quote_start Gets or sets the start date of quote data.
    #' @param data_quote_end Gets or sets the end date of quote data.
    #' @param data_orderbook_start Gets or sets the start date of order book data.
    #' @param data_orderbook_end Gets or sets the end date of order book data.
    #' @param data_trade_start Gets or sets the start date of trade data.
    #' @param data_trade_end Gets or sets the end date of trade data.
    #' @param data_trade_count Gets or sets the number of trades.
    #' @param data_symbols_count Gets or sets the number of symbols.
    #' @param volume_1hrs_usd Gets or sets the USD volume in the last 1 hour.
    #' @param volume_1day_usd Gets or sets the USD volume in the last 1 day.
    #' @param volume_1mth_usd Gets or sets the USD volume in the last 1 month.
    #' @param metric_id Gets or sets the list of metric IDs.
    #' @param icons Gets or sets the list of icons for the exchange.
    #' @param rank Rank of the exchange.
    #' @param integration_status Status of the integration
    #' @param ... Other optional arguments.
    initialize = function(`exchange_id` = NULL, `website` = NULL, `name` = NULL, `data_start` = NULL, `data_end` = NULL, `data_quote_start` = NULL, `data_quote_end` = NULL, `data_orderbook_start` = NULL, `data_orderbook_end` = NULL, `data_trade_start` = NULL, `data_trade_end` = NULL, `data_trade_count` = NULL, `data_symbols_count` = NULL, `volume_1hrs_usd` = NULL, `volume_1day_usd` = NULL, `volume_1mth_usd` = NULL, `metric_id` = NULL, `icons` = NULL, `rank` = NULL, `integration_status` = NULL, ...) {
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`website`)) {
        if (!(is.character(`website`) && length(`website`) == 1)) {
          stop(paste("Error! Invalid data for `website`. Must be a string:", `website`))
        }
        self$`website` <- `website`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`data_start`)) {
        if (!(is.character(`data_start`) && length(`data_start`) == 1)) {
          stop(paste("Error! Invalid data for `data_start`. Must be a string:", `data_start`))
        }
        self$`data_start` <- `data_start`
      }
      if (!is.null(`data_end`)) {
        if (!(is.character(`data_end`) && length(`data_end`) == 1)) {
          stop(paste("Error! Invalid data for `data_end`. Must be a string:", `data_end`))
        }
        self$`data_end` <- `data_end`
      }
      if (!is.null(`data_quote_start`)) {
        if (!is.character(`data_quote_start`)) {
          stop(paste("Error! Invalid data for `data_quote_start`. Must be a string:", `data_quote_start`))
        }
        self$`data_quote_start` <- `data_quote_start`
      }
      if (!is.null(`data_quote_end`)) {
        if (!is.character(`data_quote_end`)) {
          stop(paste("Error! Invalid data for `data_quote_end`. Must be a string:", `data_quote_end`))
        }
        self$`data_quote_end` <- `data_quote_end`
      }
      if (!is.null(`data_orderbook_start`)) {
        if (!is.character(`data_orderbook_start`)) {
          stop(paste("Error! Invalid data for `data_orderbook_start`. Must be a string:", `data_orderbook_start`))
        }
        self$`data_orderbook_start` <- `data_orderbook_start`
      }
      if (!is.null(`data_orderbook_end`)) {
        if (!is.character(`data_orderbook_end`)) {
          stop(paste("Error! Invalid data for `data_orderbook_end`. Must be a string:", `data_orderbook_end`))
        }
        self$`data_orderbook_end` <- `data_orderbook_end`
      }
      if (!is.null(`data_trade_start`)) {
        if (!is.character(`data_trade_start`)) {
          stop(paste("Error! Invalid data for `data_trade_start`. Must be a string:", `data_trade_start`))
        }
        self$`data_trade_start` <- `data_trade_start`
      }
      if (!is.null(`data_trade_end`)) {
        if (!is.character(`data_trade_end`)) {
          stop(paste("Error! Invalid data for `data_trade_end`. Must be a string:", `data_trade_end`))
        }
        self$`data_trade_end` <- `data_trade_end`
      }
      if (!is.null(`data_trade_count`)) {
        if (!(is.numeric(`data_trade_count`) && length(`data_trade_count`) == 1)) {
          stop(paste("Error! Invalid data for `data_trade_count`. Must be an integer:", `data_trade_count`))
        }
        self$`data_trade_count` <- `data_trade_count`
      }
      if (!is.null(`data_symbols_count`)) {
        if (!(is.numeric(`data_symbols_count`) && length(`data_symbols_count`) == 1)) {
          stop(paste("Error! Invalid data for `data_symbols_count`. Must be an integer:", `data_symbols_count`))
        }
        self$`data_symbols_count` <- `data_symbols_count`
      }
      if (!is.null(`volume_1hrs_usd`)) {
        if (!(is.numeric(`volume_1hrs_usd`) && length(`volume_1hrs_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1hrs_usd`. Must be a number:", `volume_1hrs_usd`))
        }
        self$`volume_1hrs_usd` <- `volume_1hrs_usd`
      }
      if (!is.null(`volume_1day_usd`)) {
        if (!(is.numeric(`volume_1day_usd`) && length(`volume_1day_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1day_usd`. Must be a number:", `volume_1day_usd`))
        }
        self$`volume_1day_usd` <- `volume_1day_usd`
      }
      if (!is.null(`volume_1mth_usd`)) {
        if (!(is.numeric(`volume_1mth_usd`) && length(`volume_1mth_usd`) == 1)) {
          stop(paste("Error! Invalid data for `volume_1mth_usd`. Must be a number:", `volume_1mth_usd`))
        }
        self$`volume_1mth_usd` <- `volume_1mth_usd`
      }
      if (!is.null(`metric_id`)) {
        stopifnot(is.vector(`metric_id`), length(`metric_id`) != 0)
        sapply(`metric_id`, function(x) stopifnot(is.character(x)))
        self$`metric_id` <- `metric_id`
      }
      if (!is.null(`icons`)) {
        stopifnot(is.vector(`icons`), length(`icons`) != 0)
        sapply(`icons`, function(x) stopifnot(R6::is.R6(x)))
        self$`icons` <- `icons`
      }
      if (!is.null(`rank`)) {
        if (!(is.numeric(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be a number:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`integration_status`)) {
        if (!(is.character(`integration_status`) && length(`integration_status`) == 1)) {
          stop(paste("Error! Invalid data for `integration_status`. Must be a string:", `integration_status`))
        }
        self$`integration_status` <- `integration_status`
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
    #' @return V1Exchange as a base R list.
    #' @examples
    #' # convert array of V1Exchange (x) to a data frame
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
    #' Convert V1Exchange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1ExchangeObject <- list()
      if (!is.null(self$`exchange_id`)) {
        V1ExchangeObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`website`)) {
        V1ExchangeObject[["website"]] <-
          self$`website`
      }
      if (!is.null(self$`name`)) {
        V1ExchangeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`data_start`)) {
        V1ExchangeObject[["data_start"]] <-
          self$`data_start`
      }
      if (!is.null(self$`data_end`)) {
        V1ExchangeObject[["data_end"]] <-
          self$`data_end`
      }
      if (!is.null(self$`data_quote_start`)) {
        V1ExchangeObject[["data_quote_start"]] <-
          self$`data_quote_start`
      }
      if (!is.null(self$`data_quote_end`)) {
        V1ExchangeObject[["data_quote_end"]] <-
          self$`data_quote_end`
      }
      if (!is.null(self$`data_orderbook_start`)) {
        V1ExchangeObject[["data_orderbook_start"]] <-
          self$`data_orderbook_start`
      }
      if (!is.null(self$`data_orderbook_end`)) {
        V1ExchangeObject[["data_orderbook_end"]] <-
          self$`data_orderbook_end`
      }
      if (!is.null(self$`data_trade_start`)) {
        V1ExchangeObject[["data_trade_start"]] <-
          self$`data_trade_start`
      }
      if (!is.null(self$`data_trade_end`)) {
        V1ExchangeObject[["data_trade_end"]] <-
          self$`data_trade_end`
      }
      if (!is.null(self$`data_trade_count`)) {
        V1ExchangeObject[["data_trade_count"]] <-
          self$`data_trade_count`
      }
      if (!is.null(self$`data_symbols_count`)) {
        V1ExchangeObject[["data_symbols_count"]] <-
          self$`data_symbols_count`
      }
      if (!is.null(self$`volume_1hrs_usd`)) {
        V1ExchangeObject[["volume_1hrs_usd"]] <-
          self$`volume_1hrs_usd`
      }
      if (!is.null(self$`volume_1day_usd`)) {
        V1ExchangeObject[["volume_1day_usd"]] <-
          self$`volume_1day_usd`
      }
      if (!is.null(self$`volume_1mth_usd`)) {
        V1ExchangeObject[["volume_1mth_usd"]] <-
          self$`volume_1mth_usd`
      }
      if (!is.null(self$`metric_id`)) {
        V1ExchangeObject[["metric_id"]] <-
          self$`metric_id`
      }
      if (!is.null(self$`icons`)) {
        V1ExchangeObject[["icons"]] <-
          lapply(self$`icons`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`rank`)) {
        V1ExchangeObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`integration_status`)) {
        V1ExchangeObject[["integration_status"]] <-
          self$`integration_status`
      }
      return(V1ExchangeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Exchange
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Exchange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`website`)) {
        self$`website` <- this_object$`website`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`data_start`)) {
        self$`data_start` <- this_object$`data_start`
      }
      if (!is.null(this_object$`data_end`)) {
        self$`data_end` <- this_object$`data_end`
      }
      if (!is.null(this_object$`data_quote_start`)) {
        self$`data_quote_start` <- this_object$`data_quote_start`
      }
      if (!is.null(this_object$`data_quote_end`)) {
        self$`data_quote_end` <- this_object$`data_quote_end`
      }
      if (!is.null(this_object$`data_orderbook_start`)) {
        self$`data_orderbook_start` <- this_object$`data_orderbook_start`
      }
      if (!is.null(this_object$`data_orderbook_end`)) {
        self$`data_orderbook_end` <- this_object$`data_orderbook_end`
      }
      if (!is.null(this_object$`data_trade_start`)) {
        self$`data_trade_start` <- this_object$`data_trade_start`
      }
      if (!is.null(this_object$`data_trade_end`)) {
        self$`data_trade_end` <- this_object$`data_trade_end`
      }
      if (!is.null(this_object$`data_trade_count`)) {
        self$`data_trade_count` <- this_object$`data_trade_count`
      }
      if (!is.null(this_object$`data_symbols_count`)) {
        self$`data_symbols_count` <- this_object$`data_symbols_count`
      }
      if (!is.null(this_object$`volume_1hrs_usd`)) {
        self$`volume_1hrs_usd` <- this_object$`volume_1hrs_usd`
      }
      if (!is.null(this_object$`volume_1day_usd`)) {
        self$`volume_1day_usd` <- this_object$`volume_1day_usd`
      }
      if (!is.null(this_object$`volume_1mth_usd`)) {
        self$`volume_1mth_usd` <- this_object$`volume_1mth_usd`
      }
      if (!is.null(this_object$`metric_id`)) {
        self$`metric_id` <- ApiClient$new()$deserializeObj(this_object$`metric_id`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`icons`)) {
        self$`icons` <- ApiClient$new()$deserializeObj(this_object$`icons`, "array[V1Icon]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`rank`)) {
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`integration_status`)) {
        self$`integration_status` <- this_object$`integration_status`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1Exchange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Exchange
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Exchange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self$`website` <- this_object$`website`
      self$`name` <- this_object$`name`
      self$`data_start` <- this_object$`data_start`
      self$`data_end` <- this_object$`data_end`
      self$`data_quote_start` <- this_object$`data_quote_start`
      self$`data_quote_end` <- this_object$`data_quote_end`
      self$`data_orderbook_start` <- this_object$`data_orderbook_start`
      self$`data_orderbook_end` <- this_object$`data_orderbook_end`
      self$`data_trade_start` <- this_object$`data_trade_start`
      self$`data_trade_end` <- this_object$`data_trade_end`
      self$`data_trade_count` <- this_object$`data_trade_count`
      self$`data_symbols_count` <- this_object$`data_symbols_count`
      self$`volume_1hrs_usd` <- this_object$`volume_1hrs_usd`
      self$`volume_1day_usd` <- this_object$`volume_1day_usd`
      self$`volume_1mth_usd` <- this_object$`volume_1mth_usd`
      self$`metric_id` <- ApiClient$new()$deserializeObj(this_object$`metric_id`, "array[character]", loadNamespace("openapi"))
      self$`icons` <- ApiClient$new()$deserializeObj(this_object$`icons`, "array[V1Icon]", loadNamespace("openapi"))
      self$`rank` <- this_object$`rank`
      self$`integration_status` <- this_object$`integration_status`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1Exchange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1Exchange
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
# V1Exchange$unlock()
#
## Below is an example to define the print function
# V1Exchange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1Exchange$lock()

