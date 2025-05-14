#' Create a new AdminAdminMessageModel
#'
#' @description
#' Represents the response DTO for IEX admin information, combining all symbol-based admin message types
#'
#' @docType class
#' @title AdminAdminMessageModel
#' @description AdminAdminMessageModel Class
#' @format An \code{R6Class} generator object
#' @field trading_status  \link{AdminTradingStatusModel} [optional]
#' @field official_price  \link{AdminOfficialPriceModel} [optional]
#' @field security_event  \link{AdminSecurityEventModel} [optional]
#' @field auction_information  \link{AdminAuctionInformationModel} [optional]
#' @field short_sale_price_test  \link{AdminShortSalePriceTestStatusModel} [optional]
#' @field operational_halt_status  \link{AdminOperationalHaltStatusModel} [optional]
#' @field retail_liquidity_indicator  \link{AdminRetailLiquidityIndicatorModel} [optional]
#' @field system_event  \link{AdminSystemEventModel} [optional]
#' @field security_directory  \link{AdminSecurityDirectoryModel} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminAdminMessageModel <- R6::R6Class(
  "AdminAdminMessageModel",
  public = list(
    `trading_status` = NULL,
    `official_price` = NULL,
    `security_event` = NULL,
    `auction_information` = NULL,
    `short_sale_price_test` = NULL,
    `operational_halt_status` = NULL,
    `retail_liquidity_indicator` = NULL,
    `system_event` = NULL,
    `security_directory` = NULL,

    #' @description
    #' Initialize a new AdminAdminMessageModel class.
    #'
    #' @param trading_status trading_status
    #' @param official_price official_price
    #' @param security_event security_event
    #' @param auction_information auction_information
    #' @param short_sale_price_test short_sale_price_test
    #' @param operational_halt_status operational_halt_status
    #' @param retail_liquidity_indicator retail_liquidity_indicator
    #' @param system_event system_event
    #' @param security_directory security_directory
    #' @param ... Other optional arguments.
    initialize = function(`trading_status` = NULL, `official_price` = NULL, `security_event` = NULL, `auction_information` = NULL, `short_sale_price_test` = NULL, `operational_halt_status` = NULL, `retail_liquidity_indicator` = NULL, `system_event` = NULL, `security_directory` = NULL, ...) {
      if (!is.null(`trading_status`)) {
        stopifnot(R6::is.R6(`trading_status`))
        self$`trading_status` <- `trading_status`
      }
      if (!is.null(`official_price`)) {
        stopifnot(R6::is.R6(`official_price`))
        self$`official_price` <- `official_price`
      }
      if (!is.null(`security_event`)) {
        stopifnot(R6::is.R6(`security_event`))
        self$`security_event` <- `security_event`
      }
      if (!is.null(`auction_information`)) {
        stopifnot(R6::is.R6(`auction_information`))
        self$`auction_information` <- `auction_information`
      }
      if (!is.null(`short_sale_price_test`)) {
        stopifnot(R6::is.R6(`short_sale_price_test`))
        self$`short_sale_price_test` <- `short_sale_price_test`
      }
      if (!is.null(`operational_halt_status`)) {
        stopifnot(R6::is.R6(`operational_halt_status`))
        self$`operational_halt_status` <- `operational_halt_status`
      }
      if (!is.null(`retail_liquidity_indicator`)) {
        stopifnot(R6::is.R6(`retail_liquidity_indicator`))
        self$`retail_liquidity_indicator` <- `retail_liquidity_indicator`
      }
      if (!is.null(`system_event`)) {
        stopifnot(R6::is.R6(`system_event`))
        self$`system_event` <- `system_event`
      }
      if (!is.null(`security_directory`)) {
        stopifnot(R6::is.R6(`security_directory`))
        self$`security_directory` <- `security_directory`
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
    #' @return AdminAdminMessageModel as a base R list.
    #' @examples
    #' # convert array of AdminAdminMessageModel (x) to a data frame
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
    #' Convert AdminAdminMessageModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminAdminMessageModelObject <- list()
      if (!is.null(self$`trading_status`)) {
        AdminAdminMessageModelObject[["trading_status"]] <-
          self$`trading_status`$toSimpleType()
      }
      if (!is.null(self$`official_price`)) {
        AdminAdminMessageModelObject[["official_price"]] <-
          self$`official_price`$toSimpleType()
      }
      if (!is.null(self$`security_event`)) {
        AdminAdminMessageModelObject[["security_event"]] <-
          self$`security_event`$toSimpleType()
      }
      if (!is.null(self$`auction_information`)) {
        AdminAdminMessageModelObject[["auction_information"]] <-
          self$`auction_information`$toSimpleType()
      }
      if (!is.null(self$`short_sale_price_test`)) {
        AdminAdminMessageModelObject[["short_sale_price_test"]] <-
          self$`short_sale_price_test`$toSimpleType()
      }
      if (!is.null(self$`operational_halt_status`)) {
        AdminAdminMessageModelObject[["operational_halt_status"]] <-
          self$`operational_halt_status`$toSimpleType()
      }
      if (!is.null(self$`retail_liquidity_indicator`)) {
        AdminAdminMessageModelObject[["retail_liquidity_indicator"]] <-
          self$`retail_liquidity_indicator`$toSimpleType()
      }
      if (!is.null(self$`system_event`)) {
        AdminAdminMessageModelObject[["system_event"]] <-
          self$`system_event`$toSimpleType()
      }
      if (!is.null(self$`security_directory`)) {
        AdminAdminMessageModelObject[["security_directory"]] <-
          self$`security_directory`$toSimpleType()
      }
      return(AdminAdminMessageModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminAdminMessageModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminAdminMessageModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`trading_status`)) {
        `trading_status_object` <- AdminTradingStatusModel$new()
        `trading_status_object`$fromJSON(jsonlite::toJSON(this_object$`trading_status`, auto_unbox = TRUE, digits = NA))
        self$`trading_status` <- `trading_status_object`
      }
      if (!is.null(this_object$`official_price`)) {
        `official_price_object` <- AdminOfficialPriceModel$new()
        `official_price_object`$fromJSON(jsonlite::toJSON(this_object$`official_price`, auto_unbox = TRUE, digits = NA))
        self$`official_price` <- `official_price_object`
      }
      if (!is.null(this_object$`security_event`)) {
        `security_event_object` <- AdminSecurityEventModel$new()
        `security_event_object`$fromJSON(jsonlite::toJSON(this_object$`security_event`, auto_unbox = TRUE, digits = NA))
        self$`security_event` <- `security_event_object`
      }
      if (!is.null(this_object$`auction_information`)) {
        `auction_information_object` <- AdminAuctionInformationModel$new()
        `auction_information_object`$fromJSON(jsonlite::toJSON(this_object$`auction_information`, auto_unbox = TRUE, digits = NA))
        self$`auction_information` <- `auction_information_object`
      }
      if (!is.null(this_object$`short_sale_price_test`)) {
        `short_sale_price_test_object` <- AdminShortSalePriceTestStatusModel$new()
        `short_sale_price_test_object`$fromJSON(jsonlite::toJSON(this_object$`short_sale_price_test`, auto_unbox = TRUE, digits = NA))
        self$`short_sale_price_test` <- `short_sale_price_test_object`
      }
      if (!is.null(this_object$`operational_halt_status`)) {
        `operational_halt_status_object` <- AdminOperationalHaltStatusModel$new()
        `operational_halt_status_object`$fromJSON(jsonlite::toJSON(this_object$`operational_halt_status`, auto_unbox = TRUE, digits = NA))
        self$`operational_halt_status` <- `operational_halt_status_object`
      }
      if (!is.null(this_object$`retail_liquidity_indicator`)) {
        `retail_liquidity_indicator_object` <- AdminRetailLiquidityIndicatorModel$new()
        `retail_liquidity_indicator_object`$fromJSON(jsonlite::toJSON(this_object$`retail_liquidity_indicator`, auto_unbox = TRUE, digits = NA))
        self$`retail_liquidity_indicator` <- `retail_liquidity_indicator_object`
      }
      if (!is.null(this_object$`system_event`)) {
        `system_event_object` <- AdminSystemEventModel$new()
        `system_event_object`$fromJSON(jsonlite::toJSON(this_object$`system_event`, auto_unbox = TRUE, digits = NA))
        self$`system_event` <- `system_event_object`
      }
      if (!is.null(this_object$`security_directory`)) {
        `security_directory_object` <- AdminSecurityDirectoryModel$new()
        `security_directory_object`$fromJSON(jsonlite::toJSON(this_object$`security_directory`, auto_unbox = TRUE, digits = NA))
        self$`security_directory` <- `security_directory_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminAdminMessageModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminAdminMessageModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminAdminMessageModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`trading_status` <- AdminTradingStatusModel$new()$fromJSON(jsonlite::toJSON(this_object$`trading_status`, auto_unbox = TRUE, digits = NA))
      self$`official_price` <- AdminOfficialPriceModel$new()$fromJSON(jsonlite::toJSON(this_object$`official_price`, auto_unbox = TRUE, digits = NA))
      self$`security_event` <- AdminSecurityEventModel$new()$fromJSON(jsonlite::toJSON(this_object$`security_event`, auto_unbox = TRUE, digits = NA))
      self$`auction_information` <- AdminAuctionInformationModel$new()$fromJSON(jsonlite::toJSON(this_object$`auction_information`, auto_unbox = TRUE, digits = NA))
      self$`short_sale_price_test` <- AdminShortSalePriceTestStatusModel$new()$fromJSON(jsonlite::toJSON(this_object$`short_sale_price_test`, auto_unbox = TRUE, digits = NA))
      self$`operational_halt_status` <- AdminOperationalHaltStatusModel$new()$fromJSON(jsonlite::toJSON(this_object$`operational_halt_status`, auto_unbox = TRUE, digits = NA))
      self$`retail_liquidity_indicator` <- AdminRetailLiquidityIndicatorModel$new()$fromJSON(jsonlite::toJSON(this_object$`retail_liquidity_indicator`, auto_unbox = TRUE, digits = NA))
      self$`system_event` <- AdminSystemEventModel$new()$fromJSON(jsonlite::toJSON(this_object$`system_event`, auto_unbox = TRUE, digits = NA))
      self$`security_directory` <- AdminSecurityDirectoryModel$new()$fromJSON(jsonlite::toJSON(this_object$`security_directory`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminAdminMessageModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminAdminMessageModel
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
# AdminAdminMessageModel$unlock()
#
## Below is an example to define the print function
# AdminAdminMessageModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminAdminMessageModel$lock()

