#' Create a new DTOFilingItemDto
#'
#' @description
#' DTOFilingItemDto Class
#'
#' @docType class
#' @title DTOFilingItemDto
#' @description DTOFilingItemDto Class
#' @format An \code{R6Class} generator object
#' @field item_number  character [optional]
#' @field item_title  character [optional]
#' @field content  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DTOFilingItemDto <- R6::R6Class(
  "DTOFilingItemDto",
  public = list(
    `item_number` = NULL,
    `item_title` = NULL,
    `content` = NULL,

    #' @description
    #' Initialize a new DTOFilingItemDto class.
    #'
    #' @param item_number item_number
    #' @param item_title item_title
    #' @param content content
    #' @param ... Other optional arguments.
    initialize = function(`item_number` = NULL, `item_title` = NULL, `content` = NULL, ...) {
      if (!is.null(`item_number`)) {
        if (!(is.character(`item_number`) && length(`item_number`) == 1)) {
          stop(paste("Error! Invalid data for `item_number`. Must be a string:", `item_number`))
        }
        self$`item_number` <- `item_number`
      }
      if (!is.null(`item_title`)) {
        if (!(is.character(`item_title`) && length(`item_title`) == 1)) {
          stop(paste("Error! Invalid data for `item_title`. Must be a string:", `item_title`))
        }
        self$`item_title` <- `item_title`
      }
      if (!is.null(`content`)) {
        if (!(is.character(`content`) && length(`content`) == 1)) {
          stop(paste("Error! Invalid data for `content`. Must be a string:", `content`))
        }
        self$`content` <- `content`
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
    #' @return DTOFilingItemDto as a base R list.
    #' @examples
    #' # convert array of DTOFilingItemDto (x) to a data frame
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
    #' Convert DTOFilingItemDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DTOFilingItemDtoObject <- list()
      if (!is.null(self$`item_number`)) {
        DTOFilingItemDtoObject[["item_number"]] <-
          self$`item_number`
      }
      if (!is.null(self$`item_title`)) {
        DTOFilingItemDtoObject[["item_title"]] <-
          self$`item_title`
      }
      if (!is.null(self$`content`)) {
        DTOFilingItemDtoObject[["content"]] <-
          self$`content`
      }
      return(DTOFilingItemDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DTOFilingItemDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of DTOFilingItemDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`item_number`)) {
        self$`item_number` <- this_object$`item_number`
      }
      if (!is.null(this_object$`item_title`)) {
        self$`item_title` <- this_object$`item_title`
      }
      if (!is.null(this_object$`content`)) {
        self$`content` <- this_object$`content`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DTOFilingItemDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DTOFilingItemDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of DTOFilingItemDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_number` <- this_object$`item_number`
      self$`item_title` <- this_object$`item_title`
      self$`content` <- this_object$`content`
      self
    },

    #' @description
    #' Validate JSON input with respect to DTOFilingItemDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DTOFilingItemDto
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
# DTOFilingItemDto$unlock()
#
## Below is an example to define the print function
# DTOFilingItemDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DTOFilingItemDto$lock()

