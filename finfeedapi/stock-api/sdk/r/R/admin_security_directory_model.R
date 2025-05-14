#' Create a new AdminSecurityDirectoryModel
#'
#' @description
#' Represents the response DTO for security directory information
#'
#' @docType class
#' @title AdminSecurityDirectoryModel
#' @description AdminSecurityDirectoryModel Class
#' @format An \code{R6Class} generator object
#' @field symbol The stock symbol character [optional]
#' @field timestamp_nanos Original timestamp in nanoseconds since epoch integer [optional]
#' @field timestamp Time when the security directory information was recorded as DateTime character [optional]
#' @field flags Flags for the security integer [optional]
#' @field round_lot_size Number of shares that represent a round lot integer [optional]
#' @field adjusted_poc_price Adjusted previous official closing price as decimal numeric [optional]
#' @field luld_tier LULD tier as byte value integer [optional]
#' @field luld_tier_code LULD tier as numeric string character [optional]
#' @field luld_tier_text Human-readable description of the LULD tier character [optional]
#' @field is_luld_tier_not_applicable Indicates if LULD Tier is 'Not applicable' (0x0). character [optional]
#' @field is_luld_tier1 Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1). character [optional]
#' @field is_luld_tier2 Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdminSecurityDirectoryModel <- R6::R6Class(
  "AdminSecurityDirectoryModel",
  public = list(
    `symbol` = NULL,
    `timestamp_nanos` = NULL,
    `timestamp` = NULL,
    `flags` = NULL,
    `round_lot_size` = NULL,
    `adjusted_poc_price` = NULL,
    `luld_tier` = NULL,
    `luld_tier_code` = NULL,
    `luld_tier_text` = NULL,
    `is_luld_tier_not_applicable` = NULL,
    `is_luld_tier1` = NULL,
    `is_luld_tier2` = NULL,

    #' @description
    #' Initialize a new AdminSecurityDirectoryModel class.
    #'
    #' @param symbol The stock symbol
    #' @param timestamp_nanos Original timestamp in nanoseconds since epoch
    #' @param timestamp Time when the security directory information was recorded as DateTime
    #' @param flags Flags for the security
    #' @param round_lot_size Number of shares that represent a round lot
    #' @param adjusted_poc_price Adjusted previous official closing price as decimal
    #' @param luld_tier LULD tier as byte value
    #' @param luld_tier_code LULD tier as numeric string
    #' @param luld_tier_text Human-readable description of the LULD tier
    #' @param is_luld_tier_not_applicable Indicates if LULD Tier is 'Not applicable' (0x0).
    #' @param is_luld_tier1 Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1).
    #' @param is_luld_tier2 Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2).
    #' @param ... Other optional arguments.
    initialize = function(`symbol` = NULL, `timestamp_nanos` = NULL, `timestamp` = NULL, `flags` = NULL, `round_lot_size` = NULL, `adjusted_poc_price` = NULL, `luld_tier` = NULL, `luld_tier_code` = NULL, `luld_tier_text` = NULL, `is_luld_tier_not_applicable` = NULL, `is_luld_tier1` = NULL, `is_luld_tier2` = NULL, ...) {
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
      if (!is.null(`flags`)) {
        if (!(is.numeric(`flags`) && length(`flags`) == 1)) {
          stop(paste("Error! Invalid data for `flags`. Must be an integer:", `flags`))
        }
        self$`flags` <- `flags`
      }
      if (!is.null(`round_lot_size`)) {
        if (!(is.numeric(`round_lot_size`) && length(`round_lot_size`) == 1)) {
          stop(paste("Error! Invalid data for `round_lot_size`. Must be an integer:", `round_lot_size`))
        }
        self$`round_lot_size` <- `round_lot_size`
      }
      if (!is.null(`adjusted_poc_price`)) {
        if (!(is.numeric(`adjusted_poc_price`) && length(`adjusted_poc_price`) == 1)) {
          stop(paste("Error! Invalid data for `adjusted_poc_price`. Must be a number:", `adjusted_poc_price`))
        }
        self$`adjusted_poc_price` <- `adjusted_poc_price`
      }
      if (!is.null(`luld_tier`)) {
        if (!(is.numeric(`luld_tier`) && length(`luld_tier`) == 1)) {
          stop(paste("Error! Invalid data for `luld_tier`. Must be an integer:", `luld_tier`))
        }
        self$`luld_tier` <- `luld_tier`
      }
      if (!is.null(`luld_tier_code`)) {
        if (!(is.character(`luld_tier_code`) && length(`luld_tier_code`) == 1)) {
          stop(paste("Error! Invalid data for `luld_tier_code`. Must be a string:", `luld_tier_code`))
        }
        self$`luld_tier_code` <- `luld_tier_code`
      }
      if (!is.null(`luld_tier_text`)) {
        if (!(is.character(`luld_tier_text`) && length(`luld_tier_text`) == 1)) {
          stop(paste("Error! Invalid data for `luld_tier_text`. Must be a string:", `luld_tier_text`))
        }
        self$`luld_tier_text` <- `luld_tier_text`
      }
      if (!is.null(`is_luld_tier_not_applicable`)) {
        if (!(is.logical(`is_luld_tier_not_applicable`) && length(`is_luld_tier_not_applicable`) == 1)) {
          stop(paste("Error! Invalid data for `is_luld_tier_not_applicable`. Must be a boolean:", `is_luld_tier_not_applicable`))
        }
        self$`is_luld_tier_not_applicable` <- `is_luld_tier_not_applicable`
      }
      if (!is.null(`is_luld_tier1`)) {
        if (!(is.logical(`is_luld_tier1`) && length(`is_luld_tier1`) == 1)) {
          stop(paste("Error! Invalid data for `is_luld_tier1`. Must be a boolean:", `is_luld_tier1`))
        }
        self$`is_luld_tier1` <- `is_luld_tier1`
      }
      if (!is.null(`is_luld_tier2`)) {
        if (!(is.logical(`is_luld_tier2`) && length(`is_luld_tier2`) == 1)) {
          stop(paste("Error! Invalid data for `is_luld_tier2`. Must be a boolean:", `is_luld_tier2`))
        }
        self$`is_luld_tier2` <- `is_luld_tier2`
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
    #' @return AdminSecurityDirectoryModel as a base R list.
    #' @examples
    #' # convert array of AdminSecurityDirectoryModel (x) to a data frame
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
    #' Convert AdminSecurityDirectoryModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdminSecurityDirectoryModelObject <- list()
      if (!is.null(self$`symbol`)) {
        AdminSecurityDirectoryModelObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`timestamp_nanos`)) {
        AdminSecurityDirectoryModelObject[["timestamp_nanos"]] <-
          self$`timestamp_nanos`
      }
      if (!is.null(self$`timestamp`)) {
        AdminSecurityDirectoryModelObject[["timestamp"]] <-
          self$`timestamp`
      }
      if (!is.null(self$`flags`)) {
        AdminSecurityDirectoryModelObject[["flags"]] <-
          self$`flags`
      }
      if (!is.null(self$`round_lot_size`)) {
        AdminSecurityDirectoryModelObject[["round_lot_size"]] <-
          self$`round_lot_size`
      }
      if (!is.null(self$`adjusted_poc_price`)) {
        AdminSecurityDirectoryModelObject[["adjusted_poc_price"]] <-
          self$`adjusted_poc_price`
      }
      if (!is.null(self$`luld_tier`)) {
        AdminSecurityDirectoryModelObject[["luld_tier"]] <-
          self$`luld_tier`
      }
      if (!is.null(self$`luld_tier_code`)) {
        AdminSecurityDirectoryModelObject[["luld_tier_code"]] <-
          self$`luld_tier_code`
      }
      if (!is.null(self$`luld_tier_text`)) {
        AdminSecurityDirectoryModelObject[["luld_tier_text"]] <-
          self$`luld_tier_text`
      }
      if (!is.null(self$`is_luld_tier_not_applicable`)) {
        AdminSecurityDirectoryModelObject[["is_luld_tier_not_applicable"]] <-
          self$`is_luld_tier_not_applicable`
      }
      if (!is.null(self$`is_luld_tier1`)) {
        AdminSecurityDirectoryModelObject[["is_luld_tier1"]] <-
          self$`is_luld_tier1`
      }
      if (!is.null(self$`is_luld_tier2`)) {
        AdminSecurityDirectoryModelObject[["is_luld_tier2"]] <-
          self$`is_luld_tier2`
      }
      return(AdminSecurityDirectoryModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminSecurityDirectoryModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminSecurityDirectoryModel
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
      if (!is.null(this_object$`flags`)) {
        self$`flags` <- this_object$`flags`
      }
      if (!is.null(this_object$`round_lot_size`)) {
        self$`round_lot_size` <- this_object$`round_lot_size`
      }
      if (!is.null(this_object$`adjusted_poc_price`)) {
        self$`adjusted_poc_price` <- this_object$`adjusted_poc_price`
      }
      if (!is.null(this_object$`luld_tier`)) {
        self$`luld_tier` <- this_object$`luld_tier`
      }
      if (!is.null(this_object$`luld_tier_code`)) {
        self$`luld_tier_code` <- this_object$`luld_tier_code`
      }
      if (!is.null(this_object$`luld_tier_text`)) {
        self$`luld_tier_text` <- this_object$`luld_tier_text`
      }
      if (!is.null(this_object$`is_luld_tier_not_applicable`)) {
        self$`is_luld_tier_not_applicable` <- this_object$`is_luld_tier_not_applicable`
      }
      if (!is.null(this_object$`is_luld_tier1`)) {
        self$`is_luld_tier1` <- this_object$`is_luld_tier1`
      }
      if (!is.null(this_object$`is_luld_tier2`)) {
        self$`is_luld_tier2` <- this_object$`is_luld_tier2`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdminSecurityDirectoryModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdminSecurityDirectoryModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdminSecurityDirectoryModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`symbol` <- this_object$`symbol`
      self$`timestamp_nanos` <- this_object$`timestamp_nanos`
      self$`timestamp` <- this_object$`timestamp`
      self$`flags` <- this_object$`flags`
      self$`round_lot_size` <- this_object$`round_lot_size`
      self$`adjusted_poc_price` <- this_object$`adjusted_poc_price`
      self$`luld_tier` <- this_object$`luld_tier`
      self$`luld_tier_code` <- this_object$`luld_tier_code`
      self$`luld_tier_text` <- this_object$`luld_tier_text`
      self$`is_luld_tier_not_applicable` <- this_object$`is_luld_tier_not_applicable`
      self$`is_luld_tier1` <- this_object$`is_luld_tier1`
      self$`is_luld_tier2` <- this_object$`is_luld_tier2`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdminSecurityDirectoryModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdminSecurityDirectoryModel
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
# AdminSecurityDirectoryModel$unlock()
#
## Below is an example to define the print function
# AdminSecurityDirectoryModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdminSecurityDirectoryModel$lock()

