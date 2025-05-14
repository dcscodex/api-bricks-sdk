#' Create a new MvcProblemDetails
#'
#' @description
#' MvcProblemDetails Class
#'
#' @docType class
#' @title MvcProblemDetails
#' @description MvcProblemDetails Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field title  character [optional]
#' @field status  integer [optional]
#' @field detail  character [optional]
#' @field instance  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MvcProblemDetails <- R6::R6Class(
  "MvcProblemDetails",
  inherit = AnyType,
  public = list(
    `type` = NULL,
    `title` = NULL,
    `status` = NULL,
    `detail` = NULL,
    `instance` = NULL,
    `_field_list` = c("type", "title", "status", "detail", "instance"),
    `additional_properties` = list(),

    #' @description
    #' Initialize a new MvcProblemDetails class.
    #'
    #' @param type type
    #' @param title title
    #' @param status status
    #' @param detail detail
    #' @param instance instance
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `title` = NULL, `status` = NULL, `detail` = NULL, `instance` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`status`)) {
        if (!(is.numeric(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be an integer:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`detail`)) {
        if (!(is.character(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", `detail`))
        }
        self$`detail` <- `detail`
      }
      if (!is.null(`instance`)) {
        if (!(is.character(`instance`) && length(`instance`) == 1)) {
          stop(paste("Error! Invalid data for `instance`. Must be a string:", `instance`))
        }
        self$`instance` <- `instance`
      }
      if (!is.null(additional_properties)) {
        for (key in names(additional_properties)) {
          self$additional_properties[[key]] <- additional_properties[[key]]
        }
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
    #' @return MvcProblemDetails as a base R list.
    #' @examples
    #' # convert array of MvcProblemDetails (x) to a data frame
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
    #' Convert MvcProblemDetails to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MvcProblemDetailsObject <- list()
      if (!is.null(self$`type`)) {
        MvcProblemDetailsObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`title`)) {
        MvcProblemDetailsObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`status`)) {
        MvcProblemDetailsObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`detail`)) {
        MvcProblemDetailsObject[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`instance`)) {
        MvcProblemDetailsObject[["instance"]] <-
          self$`instance`
      }
      for (key in names(self$additional_properties)) {
        MvcProblemDetailsObject[[key]] <- self$additional_properties[[key]]
      }

      return(MvcProblemDetailsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MvcProblemDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of MvcProblemDetails
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      if (!is.null(this_object$`instance`)) {
        self$`instance` <- this_object$`instance`
      }
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MvcProblemDetails in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      for (key in names(self$additional_properties)) {
        simple[[key]] <- self$additional_properties[[key]]
      }
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MvcProblemDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of MvcProblemDetails
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`title` <- this_object$`title`
      self$`status` <- this_object$`status`
      self$`detail` <- this_object$`detail`
      self$`instance` <- this_object$`instance`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' Validate JSON input with respect to MvcProblemDetails and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MvcProblemDetails
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
# MvcProblemDetails$unlock()
#
## Below is an example to define the print function
# MvcProblemDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MvcProblemDetails$lock()

