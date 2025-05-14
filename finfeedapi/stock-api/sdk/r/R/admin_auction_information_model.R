#' Create a new AdminAuctionInformationModel
#'
#' @description
#' Represents the response DTO for auction information
#'
#' @docType class
#' @title AdminAuctionInformationModel
#' @description AdminAuctionInformationModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the auction data was recorded as DateTime character [optional]
#' @field auction_type Type of auction as byte value integer [optional]
#' @field auction_type_code Type of auction as character string character [optional]
#' @field auction_type_text Human-readable description of the auction type character [optional]
#' @field is_auction_type_opening Indicates if the auction type is 'Opening Auction' ('O'/0x4f). character [optional]
#' @field is_auction_type_closing Indicates if the auction type is 'Closing Auction' ('C'/0x43). character [optional]
#' @field is_auction_type_ipo Indicates if the auction type is 'IPO Auction' ('I'/0x49). character [optional]
#' @field is_auction_type_halt Indicates if the auction type is 'Halt Auction' ('H'/0x48). character [optional]
#' @field is_auction_type_volatility Indicates if the auction type is 'Volatility Auction' ('V'/0x56). character [optional]
#' @field paired_shares Number of shares paired at the Reference Price integer [optional]
#' @field reference_price Reference price as decimal numeric [optional]
#' @field indicative_clearing_price Indicative clearing price as decimal numeric [optional]
#' @field imbalance_shares Number of unpaired shares at the Reference Price integer [optional]
#' @field imbalance_side Side of the imbalance as byte value integer [optional]
#' @field imbalance_side_code Side of the imbalance as character string character [optional]
#' @field imbalance_side_text Human-readable description of the imbalance side character [optional]
#' @field is_imbalance_side_buy Indicates if there is a buy-side imbalance ('B'/0x42). character [optional]
#' @field is_imbalance_side_sell Indicates if there is a sell-side imbalance ('S'/0x53). character [optional]
#' @field is_imbalance_side_none Indicates if there is no imbalance ('N'/0x4e). character [optional]
#' @field extension_number Number of extensions to the auction integer [optional]
#' @field scheduled_auction_time_seconds Scheduled auction time in seconds since epoch integer [optional]
#' @field scheduled_auction_time Scheduled time for the auction as DateTime character [optional]
#' @field auction_book_clearing_price Auction book clearing price as decimal numeric [optional]
#' @field collar_reference_price Collar reference price as decimal numeric [optional]
#' @field lower_auction_collar Lower auction collar as decimal numeric [optional]
#' @field upper_auction_collar Upper auction collar as decimal numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminAuctionInformationModel <- R6::R6Class(
  "AdminAuctionInformationModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `auction_type` = NULL,
    `auction_type_code` = NULL,
    `auction_type_text` = NULL,
    `is_auction_type_opening` = NULL,
    `is_auction_type_closing` = NULL,
    `is_auction_type_ipo` = NULL,
    `is_auction_type_halt` = NULL,
    `is_auction_type_volatility` = NULL,
    `paired_shares` = NULL,
    `reference_price` = NULL,
    `indicative_clearing_price` = NULL,
    `imbalance_shares` = NULL,
    `imbalance_side` = NULL,
    `imbalance_side_code` = NULL,
    `imbalance_side_text` = NULL,
    `is_imbalance_side_buy` = NULL,
    `is_imbalance_side_sell` = NULL,
    `is_imbalance_side_none` = NULL,
    `extension_number` = NULL,
    `scheduled_auction_time_seconds` = NULL,
    `scheduled_auction_time` = NULL,
    `auction_book_clearing_price` = NULL,
    `collar_reference_price` = NULL,
    `lower_auction_collar` = NULL,
    `upper_auction_collar` = NULL,

    #' @description
    #' Initialize a new AdminAuctionInformationModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the auction data was recorded as DateTime
    #' @param auction_type Type of auction as byte value
    #' @param auction_type_code Type of auction as character string
    #' @param auction_type_text Human-readable description of the auction type
    #' @param is_auction_type_opening Indicates if the auction type is 'Opening Auction' ('O'/0x4f).
    #' @param is_auction_type_closing Indicates if the auction type is 'Closing Auction' ('C'/0x43).
    #' @param is_auction_type_ipo Indicates if the auction type is 'IPO Auction' ('I'/0x49).
    #' @param is_auction_type_halt Indicates if the auction type is 'Halt Auction' ('H'/0x48).
    #' @param is_auction_type_volatility Indicates if the auction type is 'Volatility Auction' ('V'/0x56).
    #' @param paired_shares Number of shares paired at the Reference Price
    #' @param reference_price Reference price as decimal
    #' @param indicative_clearing_price Indicative clearing price as decimal
    #' @param imbalance_shares Number of unpaired shares at the Reference Price
    #' @param imbalance_side Side of the imbalance as byte value
    #' @param imbalance_side_code Side of the imbalance as character string
    #' @param imbalance_side_text Human-readable description of the imbalance side
    #' @param is_imbalance_side_buy Indicates if there is a buy-side imbalance ('B'/0x42).
    #' @param is_imbalance_side_sell Indicates if there is a sell-side imbalance ('S'/0x53).
    #' @param is_imbalance_side_none Indicates if there is no imbalance ('N'/0x4e).
    #' @param extension_number Number of extensions to the auction
    #' @param scheduled_auction_time_seconds Scheduled auction time in seconds since epoch
    #' @param scheduled_auction_time Scheduled time for the auction as DateTime
    #' @param auction_book_clearing_price Auction book clearing price as decimal
    #' @param collar_reference_price Collar reference price as decimal
    #' @param lower_auction_collar Lower auction collar as decimal
    #' @param upper_auction_collar Upper auction collar as decimal
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `auction_type` = NULL, `auction_type_code` = NULL, `auction_type_text` = NULL, `is_auction_type_opening` = NULL, `is_auction_type_closing` = NULL, `is_auction_type_ipo` = NULL, `is_auction_type_halt` = NULL, `is_auction_type_volatility` = NULL, `paired_shares` = NULL, `reference_price` = NULL, `indicative_clearing_price` = NULL, `imbalance_shares` = NULL, `imbalance_side` = NULL, `imbalance_side_code` = NULL, `imbalance_side_text` = NULL, `is_imbalance_side_buy` = NULL, `is_imbalance_side_sell` = NULL, `is_imbalance_side_none` = NULL, `extension_number` = NULL, `scheduled_auction_time_seconds` = NULL, `scheduled_auction_time` = NULL, `auction_book_clearing_price` = NULL, `collar_reference_price` = NULL, `lower_auction_collar` = NULL, `upper_auction_collar` = NULL, ...) {
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
      if (!is.null(`auction_type`)) {
        if (!(is.numeric(`auction_type`) && length(`auction_type`) == 1)) {
          stop(paste("Error! Invalid data for `auction_type`. Must be an integer:", `auction_type`))
        }
        self$`auction_type` <- `auction_type`
      }
      if (!is.null(`auction_type_code`)) {
        if (!(is.character(`auction_type_code`) && length(`auction_type_code`) == 1)) {
          stop(paste("Error! Invalid data for `auction_type_code`. Must be a string:", `auction_type_code`))
        }
        self$`auction_type_code` <- `auction_type_code`
      }
      if (!is.null(`auction_type_text`)) {
        if (!(is.character(`auction_type_text`) && length(`auction_type_text`) == 1)) {
          stop(paste("Error! Invalid data for `auction_type_text`. Must be a string:", `auction_type_text`))
        }
        self$`auction_type_text` <- `auction_type_text`
      }
      if (!is.null(`is_auction_type_opening`)) {
        if (!(is.logical(`is_auction_type_opening`) && length(`is_auction_type_opening`) == 1)) {
          stop(paste("Error! Invalid data for `is_auction_type_opening`. Must be a boolean:", `is_auction_type_opening`))
        }
        self$`is_auction_type_opening` <- `is_auction_type_opening`
      }
      if (!is.null(`is_auction_type_closing`)) {
        if (!(is.logical(`is_auction_type_closing`) && length(`is_auction_type_closing`) == 1)) {
          stop(paste("Error! Invalid data for `is_auction_type_closing`. Must be a boolean:", `is_auction_type_closing`))
        }
        self$`is_auction_type_closing` <- `is_auction_type_closing`
      }
      if (!is.null(`is_auction_type_ipo`)) {
        if (!(is.logical(`is_auction_type_ipo`) && length(`is_auction_type_ipo`) == 1)) {
          stop(paste("Error! Invalid data for `is_auction_type_ipo`. Must be a boolean:", `is_auction_type_ipo`))
        }
        self$`is_auction_type_ipo` <- `is_auction_type_ipo`
      }
      if (!is.null(`is_auction_type_halt`)) {
        if (!(is.logical(`is_auction_type_halt`) && length(`is_auction_type_halt`) == 1)) {
          stop(paste("Error! Invalid data for `is_auction_type_halt`. Must be a boolean:", `is_auction_type_halt`))
        }
        self$`is_auction_type_halt` <- `is_auction_type_halt`
      }
      if (!is.null(`is_auction_type_volatility`)) {
        if (!(is.logical(`is_auction_type_volatility`) && length(`is_auction_type_volatility`) == 1)) {
          stop(paste("Error! Invalid data for `is_auction_type_volatility`. Must be a boolean:", `is_auction_type_volatility`))
        }
        self$`is_auction_type_volatility` <- `is_auction_type_volatility`
      }
      if (!is.null(`paired_shares`)) {
        if (!(is.numeric(`paired_shares`) && length(`paired_shares`) == 1)) {
          stop(paste("Error! Invalid data for `paired_shares`. Must be an integer:", `paired_shares`))
        }
        self$`paired_shares` <- `paired_shares`
      }
      if (!is.null(`reference_price`)) {
        if (!(is.numeric(`reference_price`) && length(`reference_price`) == 1)) {
          stop(paste("Error! Invalid data for `reference_price`. Must be a number:", `reference_price`))
        }
        self$`reference_price` <- `reference_price`
      }
      if (!is.null(`indicative_clearing_price`)) {
        if (!(is.numeric(`indicative_clearing_price`) && length(`indicative_clearing_price`) == 1)) {
          stop(paste("Error! Invalid data for `indicative_clearing_price`. Must be a number:", `indicative_clearing_price`))
        }
        self$`indicative_clearing_price` <- `indicative_clearing_price`
      }
      if (!is.null(`imbalance_shares`)) {
        if (!(is.numeric(`imbalance_shares`) && length(`imbalance_shares`) == 1)) {
          stop(paste("Error! Invalid data for `imbalance_shares`. Must be an integer:", `imbalance_shares`))
        }
        self$`imbalance_shares` <- `imbalance_shares`
      }
      if (!is.null(`imbalance_side`)) {
        if (!(is.numeric(`imbalance_side`) && length(`imbalance_side`) == 1)) {
          stop(paste("Error! Invalid data for `imbalance_side`. Must be an integer:", `imbalance_side`))
        }
        self$`imbalance_side` <- `imbalance_side`
      }
      if (!is.null(`imbalance_side_code`)) {
        if (!(is.character(`imbalance_side_code`) && length(`imbalance_side_code`) == 1)) {
          stop(paste("Error! Invalid data for `imbalance_side_code`. Must be a string:", `imbalance_side_code`))
        }
        self$`imbalance_side_code` <- `imbalance_side_code`
      }
      if (!is.null(`imbalance_side_text`)) {
        if (!(is.character(`imbalance_side_text`) && length(`imbalance_side_text`) == 1)) {
          stop(paste("Error! Invalid data for `imbalance_side_text`. Must be a string:", `imbalance_side_text`))
        }
        self$`imbalance_side_text` <- `imbalance_side_text`
      }
      if (!is.null(`is_imbalance_side_buy`)) {
        if (!(is.logical(`is_imbalance_side_buy`) && length(`is_imbalance_side_buy`) == 1)) {
          stop(paste("Error! Invalid data for `is_imbalance_side_buy`. Must be a boolean:", `is_imbalance_side_buy`))
        }
        self$`is_imbalance_side_buy` <- `is_imbalance_side_buy`
      }
      if (!is.null(`is_imbalance_side_sell`)) {
        if (!(is.logical(`is_imbalance_side_sell`) && length(`is_imbalance_side_sell`) == 1)) {
          stop(paste("Error! Invalid data for `is_imbalance_side_sell`. Must be a boolean:", `is_imbalance_side_sell`))
        }
        self$`is_imbalance_side_sell` <- `is_imbalance_side_sell`
      }
      if (!is.null(`is_imbalance_side_none`)) {
        if (!(is.logical(`is_imbalance_side_none`) && length(`is_imbalance_side_none`) == 1)) {
          stop(paste("Error! Invalid data for `is_imbalance_side_none`. Must be a boolean:", `is_imbalance_side_none`))
        }
        self$`is_imbalance_side_none` <- `is_imbalance_side_none`
      }
      if (!is.null(`extension_number`)) {
        if (!(is.numeric(`extension_number`) && length(`extension_number`) == 1)) {
          stop(paste("Error! Invalid data for `extension_number`. Must be an integer:", `extension_number`))
        }
        self$`extension_number` <- `extension_number`
      }
      if (!is.null(`scheduled_auction_time_seconds`)) {
        if (!(is.numeric(`scheduled_auction_time_seconds`) && length(`scheduled_auction_time_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `scheduled_auction_time_seconds`. Must be an integer:", `scheduled_auction_time_seconds`))
        }
        self$`scheduled_auction_time_seconds` <- `scheduled_auction_time_seconds`
      }
      if (!is.null(`scheduled_auction_time`)) {
        if (!is.character(`scheduled_auction_time`)) {
          stop(paste("Error! Invalid data for `scheduled_auction_time`. Must be a string:", `scheduled_auction_time`))
        }
        self$`scheduled_auction_time` <- `scheduled_auction_time`
      }
      if (!is.null(`auction_book_clearing_price`)) {
        if (!(is.numeric(`auction_book_clearing_price`) && length(`auction_book_clearing_price`) == 1)) {
          stop(paste("Error! Invalid data for `auction_book_clearing_price`. Must be a number:", `auction_book_clearing_price`))
        }
        self$`auction_book_clearing_price` <- `auction_book_clearing_price`
      }
      if (!is.null(`collar_reference_price`)) {
        if (!(is.numeric(`collar_reference_price`) && length(`collar_reference_price`) == 1)) {
          stop(paste("Error! Invalid data for `collar_reference_price`. Must be a number:", `collar_reference_price`))
        }
        self$`collar_reference_price` <- `collar_reference_price`
      }
      if (!is.null(`lower_auction_collar`)) {
        if (!(is.numeric(`lower_auction_collar`) && length(`lower_auction_collar`) == 1)) {
          stop(paste("Error! Invalid data for `lower_auction_collar`. Must be a number:", `lower_auction_collar`))
        }
        self$`lower_auction_collar` <- `lower_auction_collar`
      }
      if (!is.null(`upper_auction_collar`)) {
        if (!(is.numeric(`upper_auction_collar`) && length(`upper_auction_collar`) == 1)) {
          stop(paste("Error! Invalid data for `upper_auction_collar`. Must be a number:", `upper_auction_collar`))
        }
        self$`upper_auction_collar` <- `upper_auction_collar`
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
    #' @return AdminAuctionInformationModel as a base R list.
    #' @examples
    #' # convert array of AdminAuctionInformationModel (x) to a data frame
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
    #' Convert AdminAuctionInformationModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminAuctionInformationModelObject <- list()
      if (!is.null(self$`symbol`)) {
        AdminAuctionInformationModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        AdminAuctionInformationModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminAuctionInformationModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`auction_type`)) {
        AdminAuctionInformationModelObject[["auction_type"]] <-
          self$`auction_type`
      }
      if (!is.null(self$`auction_type_code`)) {
        AdminAuctionInformationModelObject[["auction_type_code"]] <-
          self$`auction_type_code`
      }
      if (!is.null(self$`auction_type_text`)) {
        AdminAuctionInformationModelObject[["auction_type_text"]] <-
          self$`auction_type_text`
      }
      if (!is.null(self$`is_auction_type_opening`)) {
        AdminAuctionInformationModelObject[["is_auction_type_opening"]] <-
          self$`is_auction_type_opening`
      }
      if (!is.null(self$`is_auction_type_closing`)) {
        AdminAuctionInformationModelObject[["is_auction_type_closing"]] <-
          self$`is_auction_type_closing`
      }
      if (!is.null(self$`is_auction_type_ipo`)) {
        AdminAuctionInformationModelObject[["is_auction_type_ipo"]] <-
          self$`is_auction_type_ipo`
      }
      if (!is.null(self$`is_auction_type_halt`)) {
        AdminAuctionInformationModelObject[["is_auction_type_halt"]] <-
          self$`is_auction_type_halt`
      }
      if (!is.null(self$`is_auction_type_volatility`)) {
        AdminAuctionInformationModelObject[["is_auction_type_volatility"]] <-
          self$`is_auction_type_volatility`
      }
      if (!is.null(self$`paired_shares`)) {
        AdminAuctionInformationModelObject[["paired_shares"]] <-
          self$`paired_shares`
      }
      if (!is.null(self$`reference_price`)) {
        AdminAuctionInformationModelObject[["reference_price"]] <-
          self$`reference_price`
      }
      if (!is.null(self$`indicative_clearing_price`)) {
        AdminAuctionInformationModelObject[["indicative_clearing_price"]] <-
          self$`indicative_clearing_price`
      }
      if (!is.null(self$`imbalance_shares`)) {
        AdminAuctionInformationModelObject[["imbalance_shares"]] <-
          self$`imbalance_shares`
      }
      if (!is.null(self$`imbalance_side`)) {
        AdminAuctionInformationModelObject[["imbalance_side"]] <-
          self$`imbalance_side`
      }
      if (!is.null(self$`imbalance_side_code`)) {
        AdminAuctionInformationModelObject[["imbalance_side_code"]] <-
          self$`imbalance_side_code`
      }
      if (!is.null(self$`imbalance_side_text`)) {
        AdminAuctionInformationModelObject[["imbalance_side_text"]] <-
          self$`imbalance_side_text`
      }
      if (!is.null(self$`is_imbalance_side_buy`)) {
        AdminAuctionInformationModelObject[["is_imbalance_side_buy"]] <-
          self$`is_imbalance_side_buy`
      }
      if (!is.null(self$`is_imbalance_side_sell`)) {
        AdminAuctionInformationModelObject[["is_imbalance_side_sell"]] <-
          self$`is_imbalance_side_sell`
      }
      if (!is.null(self$`is_imbalance_side_none`)) {
        AdminAuctionInformationModelObject[["is_imbalance_side_none"]] <-
          self$`is_imbalance_side_none`
      }
      if (!is.null(self$`extension_number`)) {
        AdminAuctionInformationModelObject[["extension_number"]] <-
          self$`extension_number`
      }
      if (!is.null(self$`scheduled_auction_time_seconds`)) {
        AdminAuctionInformationModelObject[["scheduled_auction_time_seconds"]] <-
          self$`scheduled_auction_time_seconds`
      }
      if (!is.null(self$`scheduled_auction_time`)) {
        AdminAuctionInformationModelObject[["scheduled_auction_time"]] <-
          self$`scheduled_auction_time`
      }
      if (!is.null(self$`auction_book_clearing_price`)) {
        AdminAuctionInformationModelObject[["auction_book_clearing_price"]] <-
          self$`auction_book_clearing_price`
      }
      if (!is.null(self$`collar_reference_price`)) {
        AdminAuctionInformationModelObject[["collar_reference_price"]] <-
          self$`collar_reference_price`
      }
      if (!is.null(self$`lower_auction_collar`)) {
        AdminAuctionInformationModelObject[["lower_auction_collar"]] <-
          self$`lower_auction_collar`
      }
      if (!is.null(self$`upper_auction_collar`)) {
        AdminAuctionInformationModelObject[["upper_auction_collar"]] <-
          self$`upper_auction_collar`
      }
      return(AdminAuctionInformationModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminAuctionInformationModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminAuctionInformationModel
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
      if (!is.null(this_object$`auction_type`)) {
        self$`auction_type` <- this_object$`auction_type`
      }
      if (!is.null(this_object$`auction_type_code`)) {
        self$`auction_type_code` <- this_object$`auction_type_code`
      }
      if (!is.null(this_object$`auction_type_text`)) {
        self$`auction_type_text` <- this_object$`auction_type_text`
      }
      if (!is.null(this_object$`is_auction_type_opening`)) {
        self$`is_auction_type_opening` <- this_object$`is_auction_type_opening`
      }
      if (!is.null(this_object$`is_auction_type_closing`)) {
        self$`is_auction_type_closing` <- this_object$`is_auction_type_closing`
      }
      if (!is.null(this_object$`is_auction_type_ipo`)) {
        self$`is_auction_type_ipo` <- this_object$`is_auction_type_ipo`
      }
      if (!is.null(this_object$`is_auction_type_halt`)) {
        self$`is_auction_type_halt` <- this_object$`is_auction_type_halt`
      }
      if (!is.null(this_object$`is_auction_type_volatility`)) {
        self$`is_auction_type_volatility` <- this_object$`is_auction_type_volatility`
      }
      if (!is.null(this_object$`paired_shares`)) {
        self$`paired_shares` <- this_object$`paired_shares`
      }
      if (!is.null(this_object$`reference_price`)) {
        self$`reference_price` <- this_object$`reference_price`
      }
      if (!is.null(this_object$`indicative_clearing_price`)) {
        self$`indicative_clearing_price` <- this_object$`indicative_clearing_price`
      }
      if (!is.null(this_object$`imbalance_shares`)) {
        self$`imbalance_shares` <- this_object$`imbalance_shares`
      }
      if (!is.null(this_object$`imbalance_side`)) {
        self$`imbalance_side` <- this_object$`imbalance_side`
      }
      if (!is.null(this_object$`imbalance_side_code`)) {
        self$`imbalance_side_code` <- this_object$`imbalance_side_code`
      }
      if (!is.null(this_object$`imbalance_side_text`)) {
        self$`imbalance_side_text` <- this_object$`imbalance_side_text`
      }
      if (!is.null(this_object$`is_imbalance_side_buy`)) {
        self$`is_imbalance_side_buy` <- this_object$`is_imbalance_side_buy`
      }
      if (!is.null(this_object$`is_imbalance_side_sell`)) {
        self$`is_imbalance_side_sell` <- this_object$`is_imbalance_side_sell`
      }
      if (!is.null(this_object$`is_imbalance_side_none`)) {
        self$`is_imbalance_side_none` <- this_object$`is_imbalance_side_none`
      }
      if (!is.null(this_object$`extension_number`)) {
        self$`extension_number` <- this_object$`extension_number`
      }
      if (!is.null(this_object$`scheduled_auction_time_seconds`)) {
        self$`scheduled_auction_time_seconds` <- this_object$`scheduled_auction_time_seconds`
      }
      if (!is.null(this_object$`scheduled_auction_time`)) {
        self$`scheduled_auction_time` <- this_object$`scheduled_auction_time`
      }
      if (!is.null(this_object$`auction_book_clearing_price`)) {
        self$`auction_book_clearing_price` <- this_object$`auction_book_clearing_price`
      }
      if (!is.null(this_object$`collar_reference_price`)) {
        self$`collar_reference_price` <- this_object$`collar_reference_price`
      }
      if (!is.null(this_object$`lower_auction_collar`)) {
        self$`lower_auction_collar` <- this_object$`lower_auction_collar`
      }
      if (!is.null(this_object$`upper_auction_collar`)) {
        self$`upper_auction_collar` <- this_object$`upper_auction_collar`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminAuctionInformationModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminAuctionInformationModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminAuctionInformationModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`auction_type` <- this_object$`auction_type`
      self$`auction_type_code` <- this_object$`auction_type_code`
      self$`auction_type_text` <- this_object$`auction_type_text`
      self$`is_auction_type_opening` <- this_object$`is_auction_type_opening`
      self$`is_auction_type_closing` <- this_object$`is_auction_type_closing`
      self$`is_auction_type_ipo` <- this_object$`is_auction_type_ipo`
      self$`is_auction_type_halt` <- this_object$`is_auction_type_halt`
      self$`is_auction_type_volatility` <- this_object$`is_auction_type_volatility`
      self$`paired_shares` <- this_object$`paired_shares`
      self$`reference_price` <- this_object$`reference_price`
      self$`indicative_clearing_price` <- this_object$`indicative_clearing_price`
      self$`imbalance_shares` <- this_object$`imbalance_shares`
      self$`imbalance_side` <- this_object$`imbalance_side`
      self$`imbalance_side_code` <- this_object$`imbalance_side_code`
      self$`imbalance_side_text` <- this_object$`imbalance_side_text`
      self$`is_imbalance_side_buy` <- this_object$`is_imbalance_side_buy`
      self$`is_imbalance_side_sell` <- this_object$`is_imbalance_side_sell`
      self$`is_imbalance_side_none` <- this_object$`is_imbalance_side_none`
      self$`extension_number` <- this_object$`extension_number`
      self$`scheduled_auction_time_seconds` <- this_object$`scheduled_auction_time_seconds`
      self$`scheduled_auction_time` <- this_object$`scheduled_auction_time`
      self$`auction_book_clearing_price` <- this_object$`auction_book_clearing_price`
      self$`collar_reference_price` <- this_object$`collar_reference_price`
      self$`lower_auction_collar` <- this_object$`lower_auction_collar`
      self$`upper_auction_collar` <- this_object$`upper_auction_collar`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminAuctionInformationModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminAuctionInformationModel
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
# AdminAuctionInformationModel$unlock()
#
## Below is an example to define the print function
# AdminAuctionInformationModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminAuctionInformationModel$lock()

