#' Create a new V1Asset
#'
#' @description
#' Represents an asset.
#'
#' @docType class
#' @title V1Asset
#' @description V1Asset Class
#' @format An \code{R6Class} generator object
#' @field asset_id Gets or sets the asset ID. character [optional]
#' @field name Gets or sets the name of the asset. character [optional]
#' @field type_is_crypto Gets or sets a value indicating whether the asset is a cryptocurrency. integer [optional]
#' @field data_quote_start Gets or sets the start date of quote data. character [optional]
#' @field data_quote_end Gets or sets the end date of quote data. character [optional]
#' @field data_orderbook_start Gets or sets the start date of order book data. character [optional]
#' @field data_orderbook_end Gets or sets the end date of order book data. character [optional]
#' @field data_trade_start Gets or sets the start date of trade data. character [optional]
#' @field data_trade_end Gets or sets the end date of trade data. character [optional]
#' @field data_symbols_count Gets or sets the number of symbols. integer [optional]
#' @field volume_1hrs_usd Gets or sets the USD volume in the last 1 hour. numeric [optional]
#' @field volume_1day_usd Gets or sets the USD volume in the last 1 day. numeric [optional]
#' @field volume_1mth_usd Gets or sets the USD volume in the last 1 month. numeric [optional]
#' @field price_usd Gets or sets the USD price of the asset. numeric [optional]
#' @field id_icon Gets or sets the ID of the icon for the asset. character [optional]
#' @field supply_current Gets or sets the current supply of the asset. numeric [optional]
#' @field supply_total Gets or sets the total supply of the asset. numeric [optional]
#' @field supply_max Gets or sets the maximum supply of the asset. numeric [optional]
#' @field chain_addresses  list(\link{V1ChainNetworkAddress}) [optional]
#' @field data_start  character [optional]
#' @field data_end  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V1Asset <- R6::R6Class(
  "V1Asset",
  public = list(
    `asset_id` = NULL,
    `name` = NULL,
    `type_is_crypto` = NULL,
    `data_quote_start` = NULL,
    `data_quote_end` = NULL,
    `data_orderbook_start` = NULL,
    `data_orderbook_end` = NULL,
    `data_trade_start` = NULL,
    `data_trade_end` = NULL,
    `data_symbols_count` = NULL,
    `volume_1hrs_usd` = NULL,
    `volume_1day_usd` = NULL,
    `volume_1mth_usd` = NULL,
    `price_usd` = NULL,
    `id_icon` = NULL,
    `supply_current` = NULL,
    `supply_total` = NULL,
    `supply_max` = NULL,
    `chain_addresses` = NULL,
    `data_start` = NULL,
    `data_end` = NULL,

    #' @description
    #' Initialize a new V1Asset class.
    #'
    #' @param asset_id Gets or sets the asset ID.
    #' @param name Gets or sets the name of the asset.
    #' @param type_is_crypto Gets or sets a value indicating whether the asset is a cryptocurrency.
    #' @param data_quote_start Gets or sets the start date of quote data.
    #' @param data_quote_end Gets or sets the end date of quote data.
    #' @param data_orderbook_start Gets or sets the start date of order book data.
    #' @param data_orderbook_end Gets or sets the end date of order book data.
    #' @param data_trade_start Gets or sets the start date of trade data.
    #' @param data_trade_end Gets or sets the end date of trade data.
    #' @param data_symbols_count Gets or sets the number of symbols.
    #' @param volume_1hrs_usd Gets or sets the USD volume in the last 1 hour.
    #' @param volume_1day_usd Gets or sets the USD volume in the last 1 day.
    #' @param volume_1mth_usd Gets or sets the USD volume in the last 1 month.
    #' @param price_usd Gets or sets the USD price of the asset.
    #' @param id_icon Gets or sets the ID of the icon for the asset.
    #' @param supply_current Gets or sets the current supply of the asset.
    #' @param supply_total Gets or sets the total supply of the asset.
    #' @param supply_max Gets or sets the maximum supply of the asset.
    #' @param chain_addresses 
    #' @param data_start data_start
    #' @param data_end data_end
    #' @param ... Other optional arguments.
    initialize = function(`asset_id` = NULL, `name` = NULL, `type_is_crypto` = NULL, `data_quote_start` = NULL, `data_quote_end` = NULL, `data_orderbook_start` = NULL, `data_orderbook_end` = NULL, `data_trade_start` = NULL, `data_trade_end` = NULL, `data_symbols_count` = NULL, `volume_1hrs_usd` = NULL, `volume_1day_usd` = NULL, `volume_1mth_usd` = NULL, `price_usd` = NULL, `id_icon` = NULL, `supply_current` = NULL, `supply_total` = NULL, `supply_max` = NULL, `chain_addresses` = NULL, `data_start` = NULL, `data_end` = NULL, ...) {
      if (!is.null(`asset_id`)) {
        if (!(is.character(`asset_id`) && length(`asset_id`) == 1)) {
          stop(paste("Error! Invalid data for `asset_id`. Must be a string:", `asset_id`))
        }
        self$`asset_id` <- `asset_id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`type_is_crypto`)) {
        if (!(is.numeric(`type_is_crypto`) && length(`type_is_crypto`) == 1)) {
          stop(paste("Error! Invalid data for `type_is_crypto`. Must be an integer:", `type_is_crypto`))
        }
        self$`type_is_crypto` <- `type_is_crypto`
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
      if (!is.null(`price_usd`)) {
        if (!(is.numeric(`price_usd`) && length(`price_usd`) == 1)) {
          stop(paste("Error! Invalid data for `price_usd`. Must be a number:", `price_usd`))
        }
        self$`price_usd` <- `price_usd`
      }
      if (!is.null(`id_icon`)) {
        if (!(is.character(`id_icon`) && length(`id_icon`) == 1)) {
          stop(paste("Error! Invalid data for `id_icon`. Must be a string:", `id_icon`))
        }
        self$`id_icon` <- `id_icon`
      }
      if (!is.null(`supply_current`)) {
        if (!(is.numeric(`supply_current`) && length(`supply_current`) == 1)) {
          stop(paste("Error! Invalid data for `supply_current`. Must be a number:", `supply_current`))
        }
        self$`supply_current` <- `supply_current`
      }
      if (!is.null(`supply_total`)) {
        if (!(is.numeric(`supply_total`) && length(`supply_total`) == 1)) {
          stop(paste("Error! Invalid data for `supply_total`. Must be a number:", `supply_total`))
        }
        self$`supply_total` <- `supply_total`
      }
      if (!is.null(`supply_max`)) {
        if (!(is.numeric(`supply_max`) && length(`supply_max`) == 1)) {
          stop(paste("Error! Invalid data for `supply_max`. Must be a number:", `supply_max`))
        }
        self$`supply_max` <- `supply_max`
      }
      if (!is.null(`chain_addresses`)) {
        stopifnot(is.vector(`chain_addresses`), length(`chain_addresses`) != 0)
        sapply(`chain_addresses`, function(x) stopifnot(R6::is.R6(x)))
        self$`chain_addresses` <- `chain_addresses`
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
    #' @return V1Asset as a base R list.
    #' @examples
    #' # convert array of V1Asset (x) to a data frame
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
    #' Convert V1Asset to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V1AssetObject <- list()
      if (!is.null(self$`asset_id`)) {
        V1AssetObject[["asset_id"]] <-
          self$`asset_id`
      }
      if (!is.null(self$`name`)) {
        V1AssetObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`type_is_crypto`)) {
        V1AssetObject[["type_is_crypto"]] <-
          self$`type_is_crypto`
      }
      if (!is.null(self$`data_quote_start`)) {
        V1AssetObject[["data_quote_start"]] <-
          self$`data_quote_start`
      }
      if (!is.null(self$`data_quote_end`)) {
        V1AssetObject[["data_quote_end"]] <-
          self$`data_quote_end`
      }
      if (!is.null(self$`data_orderbook_start`)) {
        V1AssetObject[["data_orderbook_start"]] <-
          self$`data_orderbook_start`
      }
      if (!is.null(self$`data_orderbook_end`)) {
        V1AssetObject[["data_orderbook_end"]] <-
          self$`data_orderbook_end`
      }
      if (!is.null(self$`data_trade_start`)) {
        V1AssetObject[["data_trade_start"]] <-
          self$`data_trade_start`
      }
      if (!is.null(self$`data_trade_end`)) {
        V1AssetObject[["data_trade_end"]] <-
          self$`data_trade_end`
      }
      if (!is.null(self$`data_symbols_count`)) {
        V1AssetObject[["data_symbols_count"]] <-
          self$`data_symbols_count`
      }
      if (!is.null(self$`volume_1hrs_usd`)) {
        V1AssetObject[["volume_1hrs_usd"]] <-
          self$`volume_1hrs_usd`
      }
      if (!is.null(self$`volume_1day_usd`)) {
        V1AssetObject[["volume_1day_usd"]] <-
          self$`volume_1day_usd`
      }
      if (!is.null(self$`volume_1mth_usd`)) {
        V1AssetObject[["volume_1mth_usd"]] <-
          self$`volume_1mth_usd`
      }
      if (!is.null(self$`price_usd`)) {
        V1AssetObject[["price_usd"]] <-
          self$`price_usd`
      }
      if (!is.null(self$`id_icon`)) {
        V1AssetObject[["id_icon"]] <-
          self$`id_icon`
      }
      if (!is.null(self$`supply_current`)) {
        V1AssetObject[["supply_current"]] <-
          self$`supply_current`
      }
      if (!is.null(self$`supply_total`)) {
        V1AssetObject[["supply_total"]] <-
          self$`supply_total`
      }
      if (!is.null(self$`supply_max`)) {
        V1AssetObject[["supply_max"]] <-
          self$`supply_max`
      }
      if (!is.null(self$`chain_addresses`)) {
        V1AssetObject[["chain_addresses"]] <-
          lapply(self$`chain_addresses`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`data_start`)) {
        V1AssetObject[["data_start"]] <-
          self$`data_start`
      }
      if (!is.null(self$`data_end`)) {
        V1AssetObject[["data_end"]] <-
          self$`data_end`
      }
      return(V1AssetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Asset
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Asset
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`asset_id`)) {
        self$`asset_id` <- this_object$`asset_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`type_is_crypto`)) {
        self$`type_is_crypto` <- this_object$`type_is_crypto`
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
      if (!is.null(this_object$`price_usd`)) {
        self$`price_usd` <- this_object$`price_usd`
      }
      if (!is.null(this_object$`id_icon`)) {
        self$`id_icon` <- this_object$`id_icon`
      }
      if (!is.null(this_object$`supply_current`)) {
        self$`supply_current` <- this_object$`supply_current`
      }
      if (!is.null(this_object$`supply_total`)) {
        self$`supply_total` <- this_object$`supply_total`
      }
      if (!is.null(this_object$`supply_max`)) {
        self$`supply_max` <- this_object$`supply_max`
      }
      if (!is.null(this_object$`chain_addresses`)) {
        self$`chain_addresses` <- ApiClient$new()$deserializeObj(this_object$`chain_addresses`, "array[V1ChainNetworkAddress]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`data_start`)) {
        self$`data_start` <- this_object$`data_start`
      }
      if (!is.null(this_object$`data_end`)) {
        self$`data_end` <- this_object$`data_end`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V1Asset in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V1Asset
    #'
    #' @param input_json the JSON input
    #' @return the instance of V1Asset
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`asset_id` <- this_object$`asset_id`
      self$`name` <- this_object$`name`
      self$`type_is_crypto` <- this_object$`type_is_crypto`
      self$`data_quote_start` <- this_object$`data_quote_start`
      self$`data_quote_end` <- this_object$`data_quote_end`
      self$`data_orderbook_start` <- this_object$`data_orderbook_start`
      self$`data_orderbook_end` <- this_object$`data_orderbook_end`
      self$`data_trade_start` <- this_object$`data_trade_start`
      self$`data_trade_end` <- this_object$`data_trade_end`
      self$`data_symbols_count` <- this_object$`data_symbols_count`
      self$`volume_1hrs_usd` <- this_object$`volume_1hrs_usd`
      self$`volume_1day_usd` <- this_object$`volume_1day_usd`
      self$`volume_1mth_usd` <- this_object$`volume_1mth_usd`
      self$`price_usd` <- this_object$`price_usd`
      self$`id_icon` <- this_object$`id_icon`
      self$`supply_current` <- this_object$`supply_current`
      self$`supply_total` <- this_object$`supply_total`
      self$`supply_max` <- this_object$`supply_max`
      self$`chain_addresses` <- ApiClient$new()$deserializeObj(this_object$`chain_addresses`, "array[V1ChainNetworkAddress]", loadNamespace("openapi"))
      self$`data_start` <- this_object$`data_start`
      self$`data_end` <- this_object$`data_end`
      self
    },

    #' @description
    #' Validate JSON input with respect to V1Asset and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V1Asset
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
# V1Asset$unlock()
#
## Below is an example to define the print function
# V1Asset$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V1Asset$lock()

