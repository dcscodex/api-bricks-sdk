#' Create a new DTOFilingMetadataDto
#'
#' @description
#' Represents the response for a single SEC filing metadata record. Maps fields from the edgar_submissions table.
#'
#' @docType class
#' @title DTOFilingMetadataDto
#' @description DTOFilingMetadataDto Class
#' @format An \code{R6Class} generator object
#' @field cik  integer [optional]
#' @field accession_number  character [optional]
#' @field filing_date  character [optional]
#' @field report_date  character [optional]
#' @field acceptance_date_time  character [optional]
#' @field act  character [optional]
#' @field form  character [optional]
#' @field file_number  character [optional]
#' @field film_number  character [optional]
#' @field items  character [optional]
#' @field core_type  character [optional]
#' @field size  integer [optional]
#' @field is_xbrl  character [optional]
#' @field is_inline_xbrl  character [optional]
#' @field primary_document  character [optional]
#' @field primary_doc_description  character [optional]
#' @field source_file  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DTOFilingMetadataDto <- R6::R6Class(
  "DTOFilingMetadataDto",
  public = list(
    `cik` = NULL,
    `accession_number` = NULL,
    `filing_date` = NULL,
    `report_date` = NULL,
    `acceptance_date_time` = NULL,
    `act` = NULL,
    `form` = NULL,
    `file_number` = NULL,
    `film_number` = NULL,
    `items` = NULL,
    `core_type` = NULL,
    `size` = NULL,
    `is_xbrl` = NULL,
    `is_inline_xbrl` = NULL,
    `primary_document` = NULL,
    `primary_doc_description` = NULL,
    `source_file` = NULL,

    #' @description
    #' Initialize a new DTOFilingMetadataDto class.
    #'
    #' @param cik cik
    #' @param accession_number accession_number
    #' @param filing_date filing_date
    #' @param report_date report_date
    #' @param acceptance_date_time acceptance_date_time
    #' @param act act
    #' @param form form
    #' @param file_number file_number
    #' @param film_number film_number
    #' @param items items
    #' @param core_type core_type
    #' @param size size
    #' @param is_xbrl is_xbrl
    #' @param is_inline_xbrl is_inline_xbrl
    #' @param primary_document primary_document
    #' @param primary_doc_description primary_doc_description
    #' @param source_file source_file
    #' @param ... Other optional arguments.
    initialize = function(`cik` = NULL, `accession_number` = NULL, `filing_date` = NULL, `report_date` = NULL, `acceptance_date_time` = NULL, `act` = NULL, `form` = NULL, `file_number` = NULL, `film_number` = NULL, `items` = NULL, `core_type` = NULL, `size` = NULL, `is_xbrl` = NULL, `is_inline_xbrl` = NULL, `primary_document` = NULL, `primary_doc_description` = NULL, `source_file` = NULL, ...) {
      if (!is.null(`cik`)) {
        if (!(is.numeric(`cik`) && length(`cik`) == 1)) {
          stop(paste("Error! Invalid data for `cik`. Must be an integer:", `cik`))
        }
        self$`cik` <- `cik`
      }
      if (!is.null(`accession_number`)) {
        if (!(is.character(`accession_number`) && length(`accession_number`) == 1)) {
          stop(paste("Error! Invalid data for `accession_number`. Must be a string:", `accession_number`))
        }
        self$`accession_number` <- `accession_number`
      }
      if (!is.null(`filing_date`)) {
        if (!is.character(`filing_date`)) {
          stop(paste("Error! Invalid data for `filing_date`. Must be a string:", `filing_date`))
        }
        self$`filing_date` <- `filing_date`
      }
      if (!is.null(`report_date`)) {
        if (!is.character(`report_date`)) {
          stop(paste("Error! Invalid data for `report_date`. Must be a string:", `report_date`))
        }
        self$`report_date` <- `report_date`
      }
      if (!is.null(`acceptance_date_time`)) {
        if (!is.character(`acceptance_date_time`)) {
          stop(paste("Error! Invalid data for `acceptance_date_time`. Must be a string:", `acceptance_date_time`))
        }
        self$`acceptance_date_time` <- `acceptance_date_time`
      }
      if (!is.null(`act`)) {
        if (!(is.character(`act`) && length(`act`) == 1)) {
          stop(paste("Error! Invalid data for `act`. Must be a string:", `act`))
        }
        self$`act` <- `act`
      }
      if (!is.null(`form`)) {
        if (!(is.character(`form`) && length(`form`) == 1)) {
          stop(paste("Error! Invalid data for `form`. Must be a string:", `form`))
        }
        self$`form` <- `form`
      }
      if (!is.null(`file_number`)) {
        if (!(is.character(`file_number`) && length(`file_number`) == 1)) {
          stop(paste("Error! Invalid data for `file_number`. Must be a string:", `file_number`))
        }
        self$`file_number` <- `file_number`
      }
      if (!is.null(`film_number`)) {
        if (!(is.character(`film_number`) && length(`film_number`) == 1)) {
          stop(paste("Error! Invalid data for `film_number`. Must be a string:", `film_number`))
        }
        self$`film_number` <- `film_number`
      }
      if (!is.null(`items`)) {
        if (!(is.character(`items`) && length(`items`) == 1)) {
          stop(paste("Error! Invalid data for `items`. Must be a string:", `items`))
        }
        self$`items` <- `items`
      }
      if (!is.null(`core_type`)) {
        if (!(is.character(`core_type`) && length(`core_type`) == 1)) {
          stop(paste("Error! Invalid data for `core_type`. Must be a string:", `core_type`))
        }
        self$`core_type` <- `core_type`
      }
      if (!is.null(`size`)) {
        if (!(is.numeric(`size`) && length(`size`) == 1)) {
          stop(paste("Error! Invalid data for `size`. Must be an integer:", `size`))
        }
        self$`size` <- `size`
      }
      if (!is.null(`is_xbrl`)) {
        if (!(is.logical(`is_xbrl`) && length(`is_xbrl`) == 1)) {
          stop(paste("Error! Invalid data for `is_xbrl`. Must be a boolean:", `is_xbrl`))
        }
        self$`is_xbrl` <- `is_xbrl`
      }
      if (!is.null(`is_inline_xbrl`)) {
        if (!(is.logical(`is_inline_xbrl`) && length(`is_inline_xbrl`) == 1)) {
          stop(paste("Error! Invalid data for `is_inline_xbrl`. Must be a boolean:", `is_inline_xbrl`))
        }
        self$`is_inline_xbrl` <- `is_inline_xbrl`
      }
      if (!is.null(`primary_document`)) {
        if (!(is.character(`primary_document`) && length(`primary_document`) == 1)) {
          stop(paste("Error! Invalid data for `primary_document`. Must be a string:", `primary_document`))
        }
        self$`primary_document` <- `primary_document`
      }
      if (!is.null(`primary_doc_description`)) {
        if (!(is.character(`primary_doc_description`) && length(`primary_doc_description`) == 1)) {
          stop(paste("Error! Invalid data for `primary_doc_description`. Must be a string:", `primary_doc_description`))
        }
        self$`primary_doc_description` <- `primary_doc_description`
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
    #' @return DTOFilingMetadataDto as a base R list.
    #' @examples
    #' # convert array of DTOFilingMetadataDto (x) to a data frame
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
    #' Convert DTOFilingMetadataDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DTOFilingMetadataDtoObject <- list()
      if (!is.null(self$`cik`)) {
        DTOFilingMetadataDtoObject[["cik"]] <-
          self$`cik`
      }
      if (!is.null(self$`accession_number`)) {
        DTOFilingMetadataDtoObject[["accession_number"]] <-
          self$`accession_number`
      }
      if (!is.null(self$`filing_date`)) {
        DTOFilingMetadataDtoObject[["filing_date"]] <-
          self$`filing_date`
      }
      if (!is.null(self$`report_date`)) {
        DTOFilingMetadataDtoObject[["report_date"]] <-
          self$`report_date`
      }
      if (!is.null(self$`acceptance_date_time`)) {
        DTOFilingMetadataDtoObject[["acceptance_date_time"]] <-
          self$`acceptance_date_time`
      }
      if (!is.null(self$`act`)) {
        DTOFilingMetadataDtoObject[["act"]] <-
          self$`act`
      }
      if (!is.null(self$`form`)) {
        DTOFilingMetadataDtoObject[["form"]] <-
          self$`form`
      }
      if (!is.null(self$`file_number`)) {
        DTOFilingMetadataDtoObject[["file_number"]] <-
          self$`file_number`
      }
      if (!is.null(self$`film_number`)) {
        DTOFilingMetadataDtoObject[["film_number"]] <-
          self$`film_number`
      }
      if (!is.null(self$`items`)) {
        DTOFilingMetadataDtoObject[["items"]] <-
          self$`items`
      }
      if (!is.null(self$`core_type`)) {
        DTOFilingMetadataDtoObject[["core_type"]] <-
          self$`core_type`
      }
      if (!is.null(self$`size`)) {
        DTOFilingMetadataDtoObject[["size"]] <-
          self$`size`
      }
      if (!is.null(self$`is_xbrl`)) {
        DTOFilingMetadataDtoObject[["is_xbrl"]] <-
          self$`is_xbrl`
      }
      if (!is.null(self$`is_inline_xbrl`)) {
        DTOFilingMetadataDtoObject[["is_inline_xbrl"]] <-
          self$`is_inline_xbrl`
      }
      if (!is.null(self$`primary_document`)) {
        DTOFilingMetadataDtoObject[["primary_document"]] <-
          self$`primary_document`
      }
      if (!is.null(self$`primary_doc_description`)) {
        DTOFilingMetadataDtoObject[["primary_doc_description"]] <-
          self$`primary_doc_description`
      }
      if (!is.null(self$`source_file`)) {
        DTOFilingMetadataDtoObject[["source_file"]] <-
          self$`source_file`
      }
      return(DTOFilingMetadataDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DTOFilingMetadataDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of DTOFilingMetadataDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cik`)) {
        self$`cik` <- this_object$`cik`
      }
      if (!is.null(this_object$`accession_number`)) {
        self$`accession_number` <- this_object$`accession_number`
      }
      if (!is.null(this_object$`filing_date`)) {
        self$`filing_date` <- this_object$`filing_date`
      }
      if (!is.null(this_object$`report_date`)) {
        self$`report_date` <- this_object$`report_date`
      }
      if (!is.null(this_object$`acceptance_date_time`)) {
        self$`acceptance_date_time` <- this_object$`acceptance_date_time`
      }
      if (!is.null(this_object$`act`)) {
        self$`act` <- this_object$`act`
      }
      if (!is.null(this_object$`form`)) {
        self$`form` <- this_object$`form`
      }
      if (!is.null(this_object$`file_number`)) {
        self$`file_number` <- this_object$`file_number`
      }
      if (!is.null(this_object$`film_number`)) {
        self$`film_number` <- this_object$`film_number`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- this_object$`items`
      }
      if (!is.null(this_object$`core_type`)) {
        self$`core_type` <- this_object$`core_type`
      }
      if (!is.null(this_object$`size`)) {
        self$`size` <- this_object$`size`
      }
      if (!is.null(this_object$`is_xbrl`)) {
        self$`is_xbrl` <- this_object$`is_xbrl`
      }
      if (!is.null(this_object$`is_inline_xbrl`)) {
        self$`is_inline_xbrl` <- this_object$`is_inline_xbrl`
      }
      if (!is.null(this_object$`primary_document`)) {
        self$`primary_document` <- this_object$`primary_document`
      }
      if (!is.null(this_object$`primary_doc_description`)) {
        self$`primary_doc_description` <- this_object$`primary_doc_description`
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
    #' @return DTOFilingMetadataDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DTOFilingMetadataDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of DTOFilingMetadataDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cik` <- this_object$`cik`
      self$`accession_number` <- this_object$`accession_number`
      self$`filing_date` <- this_object$`filing_date`
      self$`report_date` <- this_object$`report_date`
      self$`acceptance_date_time` <- this_object$`acceptance_date_time`
      self$`act` <- this_object$`act`
      self$`form` <- this_object$`form`
      self$`file_number` <- this_object$`file_number`
      self$`film_number` <- this_object$`film_number`
      self$`items` <- this_object$`items`
      self$`core_type` <- this_object$`core_type`
      self$`size` <- this_object$`size`
      self$`is_xbrl` <- this_object$`is_xbrl`
      self$`is_inline_xbrl` <- this_object$`is_inline_xbrl`
      self$`primary_document` <- this_object$`primary_document`
      self$`primary_doc_description` <- this_object$`primary_doc_description`
      self$`source_file` <- this_object$`source_file`
      self
    },

    #' @description
    #' Validate JSON input with respect to DTOFilingMetadataDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DTOFilingMetadataDto
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
# DTOFilingMetadataDto$unlock()
#
## Below is an example to define the print function
# DTOFilingMetadataDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DTOFilingMetadataDto$lock()

