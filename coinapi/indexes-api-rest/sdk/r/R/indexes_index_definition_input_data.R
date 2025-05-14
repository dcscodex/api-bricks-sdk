#' Create a new IndexesIndexDefinitionInputData
#'
#' @description
#' IndexesIndexDefinitionInputData Class
#'
#' @docType class
#' @title IndexesIndexDefinitionInputData
#' @description IndexesIndexDefinitionInputData Class
#' @format An \code{R6Class} generator object
#' @field exchangeId  character [optional]
#' @field exchangeSymbolId  character [optional]
#' @field baseAssetId  character [optional]
#' @field quoteAssetId  character [optional]
#' @field beginDate  character [optional]
#' @field endDate  character [optional]
#' @field status  character [optional]
#' @field statusInfo  character [optional]
#' @field lastModificationTime  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IndexesIndexDefinitionInputData <- R6::R6Class(
  "IndexesIndexDefinitionInputData",
  public = list(
    `exchangeId` = NULL,
    `exchangeSymbolId` = NULL,
    `baseAssetId` = NULL,
    `quoteAssetId` = NULL,
    `beginDate` = NULL,
    `endDate` = NULL,
    `status` = NULL,
    `statusInfo` = NULL,
    `lastModificationTime` = NULL,

    #' @description
    #' Initialize a new IndexesIndexDefinitionInputData class.
    #'
    #' @param exchangeId exchangeId
    #' @param exchangeSymbolId exchangeSymbolId
    #' @param baseAssetId baseAssetId
    #' @param quoteAssetId quoteAssetId
    #' @param beginDate beginDate
    #' @param endDate endDate
    #' @param status status
    #' @param statusInfo statusInfo
    #' @param lastModificationTime lastModificationTime
    #' @param ... Other optional arguments.
    initialize = function(`exchangeId` = NULL, `exchangeSymbolId` = NULL, `baseAssetId` = NULL, `quoteAssetId` = NULL, `beginDate` = NULL, `endDate` = NULL, `status` = NULL, `statusInfo` = NULL, `lastModificationTime` = NULL, ...) {
      if (!is.null(`exchangeId`)) {
        if (!(is.character(`exchangeId`) && length(`exchangeId`) == 1)) {
          stop(paste("Error! Invalid data for `exchangeId`. Must be a string:", `exchangeId`))
        }
        self$`exchangeId` <- `exchangeId`
      }
      if (!is.null(`exchangeSymbolId`)) {
        if (!(is.character(`exchangeSymbolId`) && length(`exchangeSymbolId`) == 1)) {
          stop(paste("Error! Invalid data for `exchangeSymbolId`. Must be a string:", `exchangeSymbolId`))
        }
        self$`exchangeSymbolId` <- `exchangeSymbolId`
      }
      if (!is.null(`baseAssetId`)) {
        if (!(is.character(`baseAssetId`) && length(`baseAssetId`) == 1)) {
          stop(paste("Error! Invalid data for `baseAssetId`. Must be a string:", `baseAssetId`))
        }
        self$`baseAssetId` <- `baseAssetId`
      }
      if (!is.null(`quoteAssetId`)) {
        if (!(is.character(`quoteAssetId`) && length(`quoteAssetId`) == 1)) {
          stop(paste("Error! Invalid data for `quoteAssetId`. Must be a string:", `quoteAssetId`))
        }
        self$`quoteAssetId` <- `quoteAssetId`
      }
      if (!is.null(`beginDate`)) {
        if (!is.character(`beginDate`)) {
          stop(paste("Error! Invalid data for `beginDate`. Must be a string:", `beginDate`))
        }
        self$`beginDate` <- `beginDate`
      }
      if (!is.null(`endDate`)) {
        if (!is.character(`endDate`)) {
          stop(paste("Error! Invalid data for `endDate`. Must be a string:", `endDate`))
        }
        self$`endDate` <- `endDate`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`statusInfo`)) {
        if (!(is.character(`statusInfo`) && length(`statusInfo`) == 1)) {
          stop(paste("Error! Invalid data for `statusInfo`. Must be a string:", `statusInfo`))
        }
        self$`statusInfo` <- `statusInfo`
      }
      if (!is.null(`lastModificationTime`)) {
        if (!is.character(`lastModificationTime`)) {
          stop(paste("Error! Invalid data for `lastModificationTime`. Must be a string:", `lastModificationTime`))
        }
        self$`lastModificationTime` <- `lastModificationTime`
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
    #' @return IndexesIndexDefinitionInputData as a base R list.
    #' @examples
    #' # convert array of IndexesIndexDefinitionInputData (x) to a data frame
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
    #' Convert IndexesIndexDefinitionInputData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IndexesIndexDefinitionInputDataObject <- list()
      if (!is.null(self$`exchangeId`)) {
        IndexesIndexDefinitionInputDataObject[["exchangeId"]] <-
          self$`exchangeId`
      }
      if (!is.null(self$`exchangeSymbolId`)) {
        IndexesIndexDefinitionInputDataObject[["exchangeSymbolId"]] <-
          self$`exchangeSymbolId`
      }
      if (!is.null(self$`baseAssetId`)) {
        IndexesIndexDefinitionInputDataObject[["baseAssetId"]] <-
          self$`baseAssetId`
      }
      if (!is.null(self$`quoteAssetId`)) {
        IndexesIndexDefinitionInputDataObject[["quoteAssetId"]] <-
          self$`quoteAssetId`
      }
      if (!is.null(self$`beginDate`)) {
        IndexesIndexDefinitionInputDataObject[["beginDate"]] <-
          self$`beginDate`
      }
      if (!is.null(self$`endDate`)) {
        IndexesIndexDefinitionInputDataObject[["endDate"]] <-
          self$`endDate`
      }
      if (!is.null(self$`status`)) {
        IndexesIndexDefinitionInputDataObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`statusInfo`)) {
        IndexesIndexDefinitionInputDataObject[["statusInfo"]] <-
          self$`statusInfo`
      }
      if (!is.null(self$`lastModificationTime`)) {
        IndexesIndexDefinitionInputDataObject[["lastModificationTime"]] <-
          self$`lastModificationTime`
      }
      return(IndexesIndexDefinitionInputDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexDefinitionInputData
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexDefinitionInputData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchangeId`)) {
        self$`exchangeId` <- this_object$`exchangeId`
      }
      if (!is.null(this_object$`exchangeSymbolId`)) {
        self$`exchangeSymbolId` <- this_object$`exchangeSymbolId`
      }
      if (!is.null(this_object$`baseAssetId`)) {
        self$`baseAssetId` <- this_object$`baseAssetId`
      }
      if (!is.null(this_object$`quoteAssetId`)) {
        self$`quoteAssetId` <- this_object$`quoteAssetId`
      }
      if (!is.null(this_object$`beginDate`)) {
        self$`beginDate` <- this_object$`beginDate`
      }
      if (!is.null(this_object$`endDate`)) {
        self$`endDate` <- this_object$`endDate`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`statusInfo`)) {
        self$`statusInfo` <- this_object$`statusInfo`
      }
      if (!is.null(this_object$`lastModificationTime`)) {
        self$`lastModificationTime` <- this_object$`lastModificationTime`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IndexesIndexDefinitionInputData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IndexesIndexDefinitionInputData
    #'
    #' @param input_json the JSON input
    #' @return the instance of IndexesIndexDefinitionInputData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchangeId` <- this_object$`exchangeId`
      self$`exchangeSymbolId` <- this_object$`exchangeSymbolId`
      self$`baseAssetId` <- this_object$`baseAssetId`
      self$`quoteAssetId` <- this_object$`quoteAssetId`
      self$`beginDate` <- this_object$`beginDate`
      self$`endDate` <- this_object$`endDate`
      self$`status` <- this_object$`status`
      self$`statusInfo` <- this_object$`statusInfo`
      self$`lastModificationTime` <- this_object$`lastModificationTime`
      self
    },

    #' @description
    #' Validate JSON input with respect to IndexesIndexDefinitionInputData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IndexesIndexDefinitionInputData
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
# IndexesIndexDefinitionInputData$unlock()
#
## Below is an example to define the print function
# IndexesIndexDefinitionInputData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IndexesIndexDefinitionInputData$lock()

