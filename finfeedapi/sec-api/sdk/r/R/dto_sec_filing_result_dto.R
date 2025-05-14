#' Create a new DTOSecFilingResultDto
#'
#' @description
#' DTOSecFilingResultDto Class
#'
#' @docType class
#' @title DTOSecFilingResultDto
#' @description DTOSecFilingResultDto Class
#' @format An \code{R6Class} generator object
#' @field accession_number  character [optional]
#' @field form_type  character [optional]
#' @field filing_date  character [optional]
#' @field company_name  character [optional]
#' @field cik  integer [optional]
#' @field document_filename  character [optional]
#' @field document_description  character [optional]
#' @field source_file  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DTOSecFilingResultDto <- R6::R6Class(
  "DTOSecFilingResultDto",
  public = list(
    `accession_number` = NULL,
    `form_type` = NULL,
    `filing_date` = NULL,
    `company_name` = NULL,
    `cik` = NULL,
    `document_filename` = NULL,
    `document_description` = NULL,
    `source_file` = NULL,

    #' @description
    #' Initialize a new DTOSecFilingResultDto class.
    #'
    #' @param accession_number accession_number
    #' @param form_type form_type
    #' @param filing_date filing_date
    #' @param company_name company_name
    #' @param cik cik
    #' @param document_filename document_filename
    #' @param document_description document_description
    #' @param source_file source_file
    #' @param ... Other optional arguments.
    initialize = function(`accession_number` = NULL, `form_type` = NULL, `filing_date` = NULL, `company_name` = NULL, `cik` = NULL, `document_filename` = NULL, `document_description` = NULL, `source_file` = NULL, ...) {
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
      if (!is.null(`filing_date`)) {
        if (!is.character(`filing_date`)) {
          stop(paste("Error! Invalid data for `filing_date`. Must be a string:", `filing_date`))
        }
        self$`filing_date` <- `filing_date`
      }
      if (!is.null(`company_name`)) {
        if (!(is.character(`company_name`) && length(`company_name`) == 1)) {
          stop(paste("Error! Invalid data for `company_name`. Must be a string:", `company_name`))
        }
        self$`company_name` <- `company_name`
      }
      if (!is.null(`cik`)) {
        if (!(is.numeric(`cik`) && length(`cik`) == 1)) {
          stop(paste("Error! Invalid data for `cik`. Must be an integer:", `cik`))
        }
        self$`cik` <- `cik`
      }
      if (!is.null(`document_filename`)) {
        if (!(is.character(`document_filename`) && length(`document_filename`) == 1)) {
          stop(paste("Error! Invalid data for `document_filename`. Must be a string:", `document_filename`))
        }
        self$`document_filename` <- `document_filename`
      }
      if (!is.null(`document_description`)) {
        if (!(is.character(`document_description`) && length(`document_description`) == 1)) {
          stop(paste("Error! Invalid data for `document_description`. Must be a string:", `document_description`))
        }
        self$`document_description` <- `document_description`
      }
      if (!is.null(`source_file`)) {
        if (!(is.character(`source_file`) && length(`source_file`) == 1)) {
          stop(paste("Error! Invalid data for `source_file`. Must be a string:", `source_file`))
        }
        self$`source_file` <- `source_file`
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
    #' @return DTOSecFilingResultDto as a base R list.
    #' @examples
    #' # convert array of DTOSecFilingResultDto (x) to a data frame
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
    #' Convert DTOSecFilingResultDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DTOSecFilingResultDtoObject <- list()
      if (!is.null(self$`accession_number`)) {
        DTOSecFilingResultDtoObject[["accession_number"]] <-
          self$`accession_number`
      }
      if (!is.null(self$`form_type`)) {
        DTOSecFilingResultDtoObject[["form_type"]] <-
          self$`form_type`
      }
      if (!is.null(self$`filing_date`)) {
        DTOSecFilingResultDtoObject[["filing_date"]] <-
          self$`filing_date`
      }
      if (!is.null(self$`company_name`)) {
        DTOSecFilingResultDtoObject[["company_name"]] <-
          self$`company_name`
      }
      if (!is.null(self$`cik`)) {
        DTOSecFilingResultDtoObject[["cik"]] <-
          self$`cik`
      }
      if (!is.null(self$`document_filename`)) {
        DTOSecFilingResultDtoObject[["document_filename"]] <-
          self$`document_filename`
      }
      if (!is.null(self$`document_description`)) {
        DTOSecFilingResultDtoObject[["document_description"]] <-
          self$`document_description`
      }
      if (!is.null(self$`source_file`)) {
        DTOSecFilingResultDtoObject[["source_file"]] <-
          self$`source_file`
      }
      return(DTOSecFilingResultDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DTOSecFilingResultDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of DTOSecFilingResultDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession_number`)) {
        self$`accession_number` <- this_object$`accession_number`
      }
      if (!is.null(this_object$`form_type`)) {
        self$`form_type` <- this_object$`form_type`
      }
      if (!is.null(this_object$`filing_date`)) {
        self$`filing_date` <- this_object$`filing_date`
      }
      if (!is.null(this_object$`company_name`)) {
        self$`company_name` <- this_object$`company_name`
      }
      if (!is.null(this_object$`cik`)) {
        self$`cik` <- this_object$`cik`
      }
      if (!is.null(this_object$`document_filename`)) {
        self$`document_filename` <- this_object$`document_filename`
      }
      if (!is.null(this_object$`document_description`)) {
        self$`document_description` <- this_object$`document_description`
      }
      if (!is.null(this_object$`source_file`)) {
        self$`source_file` <- this_object$`source_file`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DTOSecFilingResultDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DTOSecFilingResultDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of DTOSecFilingResultDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession_number` <- this_object$`accession_number`
      self$`form_type` <- this_object$`form_type`
      self$`filing_date` <- this_object$`filing_date`
      self$`company_name` <- this_object$`company_name`
      self$`cik` <- this_object$`cik`
      self$`document_filename` <- this_object$`document_filename`
      self$`document_description` <- this_object$`document_description`
      self$`source_file` <- this_object$`source_file`
      self
    },

    #' @description
    #' Validate JSON input with respect to DTOSecFilingResultDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DTOSecFilingResultDto
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
# DTOSecFilingResultDto$unlock()
#
## Below is an example to define the print function
# DTOSecFilingResultDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DTOSecFilingResultDto$lock()

