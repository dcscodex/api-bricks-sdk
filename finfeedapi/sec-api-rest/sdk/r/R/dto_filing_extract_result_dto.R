#' Create a new DTOFilingExtractResultDto
#'
#' @description
#' Represents the result of a filing extraction.
#'
#' @docType class
#' @title DTOFilingExtractResultDto
#' @description DTOFilingExtractResultDto Class
#' @format An \code{R6Class} generator object
#' @field accession_number  character [optional]
#' @field form_type  character [optional]
#' @field items  list(\link{DTOFilingItemDto}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DTOFilingExtractResultDto <- R6::R6Class(
  "DTOFilingExtractResultDto",
  public = list(
    `accession_number` = NULL,
    `form_type` = NULL,
    `items` = NULL,

    #' @description
    #' Initialize a new DTOFilingExtractResultDto class.
    #'
    #' @param accession_number accession_number
    #' @param form_type form_type
    #' @param items items
    #' @param ... Other optional arguments.
    initialize = function(`accession_number` = NULL, `form_type` = NULL, `items` = NULL, ...) {
      if (!is.null(`accession_number`)) {
        if (!(is.character(`accession_number`) && length(`accession_number`) == 1)) {
          stop(paste("Error! Invalid data for `accession_number`. Must be a string:", `accession_number`))
        }
        self$`accession_number` <- `accession_number`
      }
      if (!is.null(`form_type`)) {
        if (!(is.character(`form_type`) && length(`form_type`) == 1)) {
          stop(paste("Error! Invalid data for `form_type`. Must be a string:", `form_type`))
        }
        self$`form_type` <- `form_type`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
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
    #' @return DTOFilingExtractResultDto as a base R list.
    #' @examples
    #' # convert array of DTOFilingExtractResultDto (x) to a data frame
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
    #' Convert DTOFilingExtractResultDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DTOFilingExtractResultDtoObject <- list()
      if (!is.null(self$`accession_number`)) {
        DTOFilingExtractResultDtoObject[["accession_number"]] <-
          self$`accession_number`
      }
      if (!is.null(self$`form_type`)) {
        DTOFilingExtractResultDtoObject[["form_type"]] <-
          self$`form_type`
      }
      if (!is.null(self$`items`)) {
        DTOFilingExtractResultDtoObject[["items"]] <-
          lapply(self$`items`, function(x) x$toSimpleType())
      }
      return(DTOFilingExtractResultDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DTOFilingExtractResultDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of DTOFilingExtractResultDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession_number`)) {
        self$`accession_number` <- this_object$`accession_number`
      }
      if (!is.null(this_object$`form_type`)) {
        self$`form_type` <- this_object$`form_type`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[DTOFilingItemDto]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DTOFilingExtractResultDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DTOFilingExtractResultDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of DTOFilingExtractResultDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession_number` <- this_object$`accession_number`
      self$`form_type` <- this_object$`form_type`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[DTOFilingItemDto]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to DTOFilingExtractResultDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DTOFilingExtractResultDto
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
# DTOFilingExtractResultDto$unlock()
#
## Below is an example to define the print function
# DTOFilingExtractResultDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DTOFilingExtractResultDto$lock()

