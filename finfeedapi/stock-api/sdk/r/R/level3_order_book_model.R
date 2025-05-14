#' Create a new Level3OrderBookModel
#'
#' @description
#' Represents the response DTO for Level-3 order book information
#'
#' @docType class
#' @title Level3OrderBookModel
#' @description Level3OrderBookModel Class
#' @format An \code{R6Class} generator object
#' @field add_order  \link{Level3AddOrderModel} [optional]
#' @field delete_order  \link{Level3DeleteOrderModel} [optional]
#' @field modify_order  \link{Level3ModifyOrderModel} [optional]
#' @field executed_order  \link{Level3ExecutedOrderModel} [optional]
#' @field clear_book  \link{Level3ClearBookModel} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Level3OrderBookModel <- R6::R6Class(
  "Level3OrderBookModel",
  public = list(
    `add_order` = NULL,
    `delete_order` = NULL,
    `modify_order` = NULL,
    `executed_order` = NULL,
    `clear_book` = NULL,

    #' @description
    #' Initialize a new Level3OrderBookModel class.
    #'
    #' @param add_order add_order
    #' @param delete_order delete_order
    #' @param modify_order modify_order
    #' @param executed_order executed_order
    #' @param clear_book clear_book
    #' @param ... Other optional arguments.
    initialize = function(`add_order` = NULL, `delete_order` = NULL, `modify_order` = NULL, `executed_order` = NULL, `clear_book` = NULL, ...) {
      if (!is.null(`add_order`)) {
        stopifnot(R6::is.R6(`add_order`))
        self$`add_order` <- `add_order`
      }
      if (!is.null(`delete_order`)) {
        stopifnot(R6::is.R6(`delete_order`))
        self$`delete_order` <- `delete_order`
      }
      if (!is.null(`modify_order`)) {
        stopifnot(R6::is.R6(`modify_order`))
        self$`modify_order` <- `modify_order`
      }
      if (!is.null(`executed_order`)) {
        stopifnot(R6::is.R6(`executed_order`))
        self$`executed_order` <- `executed_order`
      }
      if (!is.null(`clear_book`)) {
        stopifnot(R6::is.R6(`clear_book`))
        self$`clear_book` <- `clear_book`
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
    #' @return Level3OrderBookModel as a base R list.
    #' @examples
    #' # convert array of Level3OrderBookModel (x) to a data frame
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
    #' Convert Level3OrderBookModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Level3OrderBookModelObject <- list()
      if (!is.null(self$`add_order`)) {
        Level3OrderBookModelObject[["add_order"]] <-
          self$`add_order`$toSimpleType()
      }
      if (!is.null(self$`delete_order`)) {
        Level3OrderBookModelObject[["delete_order"]] <-
          self$`delete_order`$toSimpleType()
      }
      if (!is.null(self$`modify_order`)) {
        Level3OrderBookModelObject[["modify_order"]] <-
          self$`modify_order`$toSimpleType()
      }
      if (!is.null(self$`executed_order`)) {
        Level3OrderBookModelObject[["executed_order"]] <-
          self$`executed_order`$toSimpleType()
      }
      if (!is.null(self$`clear_book`)) {
        Level3OrderBookModelObject[["clear_book"]] <-
          self$`clear_book`$toSimpleType()
      }
      return(Level3OrderBookModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Level3OrderBookModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level3OrderBookModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`add_order`)) {
        `add_order_object` <- Level3AddOrderModel$new()
        `add_order_object`$fromJSON(jsonlite::toJSON(this_object$`add_order`, auto_unbox = TRUE, digits = NA))
        self$`add_order` <- `add_order_object`
      }
      if (!is.null(this_object$`delete_order`)) {
        `delete_order_object` <- Level3DeleteOrderModel$new()
        `delete_order_object`$fromJSON(jsonlite::toJSON(this_object$`delete_order`, auto_unbox = TRUE, digits = NA))
        self$`delete_order` <- `delete_order_object`
      }
      if (!is.null(this_object$`modify_order`)) {
        `modify_order_object` <- Level3ModifyOrderModel$new()
        `modify_order_object`$fromJSON(jsonlite::toJSON(this_object$`modify_order`, auto_unbox = TRUE, digits = NA))
        self$`modify_order` <- `modify_order_object`
      }
      if (!is.null(this_object$`executed_order`)) {
        `executed_order_object` <- Level3ExecutedOrderModel$new()
        `executed_order_object`$fromJSON(jsonlite::toJSON(this_object$`executed_order`, auto_unbox = TRUE, digits = NA))
        self$`executed_order` <- `executed_order_object`
      }
      if (!is.null(this_object$`clear_book`)) {
        `clear_book_object` <- Level3ClearBookModel$new()
        `clear_book_object`$fromJSON(jsonlite::toJSON(this_object$`clear_book`, auto_unbox = TRUE, digits = NA))
        self$`clear_book` <- `clear_book_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Level3OrderBookModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Level3OrderBookModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of Level3OrderBookModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`add_order` <- Level3AddOrderModel$new()$fromJSON(jsonlite::toJSON(this_object$`add_order`, auto_unbox = TRUE, digits = NA))
      self$`delete_order` <- Level3DeleteOrderModel$new()$fromJSON(jsonlite::toJSON(this_object$`delete_order`, auto_unbox = TRUE, digits = NA))
      self$`modify_order` <- Level3ModifyOrderModel$new()$fromJSON(jsonlite::toJSON(this_object$`modify_order`, auto_unbox = TRUE, digits = NA))
      self$`executed_order` <- Level3ExecutedOrderModel$new()$fromJSON(jsonlite::toJSON(this_object$`executed_order`, auto_unbox = TRUE, digits = NA))
      self$`clear_book` <- Level3ClearBookModel$new()$fromJSON(jsonlite::toJSON(this_object$`clear_book`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Level3OrderBookModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Level3OrderBookModel
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
# Level3OrderBookModel$unlock()
#
## Below is an example to define the print function
# Level3OrderBookModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Level3OrderBookModel$lock()

