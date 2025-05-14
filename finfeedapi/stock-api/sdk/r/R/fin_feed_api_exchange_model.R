#' Create a new FinFeedAPIExchangeModel
#'
#' @description
#' FinFeedAPIExchangeModel Class
#'
#' @docType class
#' @title FinFeedAPIExchangeModel
#' @description FinFeedAPIExchangeModel Class
#' @format An \code{R6Class} generator object
#' @field exchange_id  character [optional]
#' @field last_datapoint_date  character [optional]
#' @field mic  character [optional]
#' @field operating_mic  character [optional]
#' @field oprt_sgmt  character [optional]
#' @field market_name_institution_description  character [optional]
#' @field legal_entity_name  character [optional]
#' @field lei  character [optional]
#' @field market_category_code  character [optional]
#' @field acronym  character [optional]
#' @field iso_country_code  character [optional]
#' @field city  character [optional]
#' @field website  character [optional]
#' @field status  character [optional]
#' @field creation_date  character [optional]
#' @field last_update_date  character [optional]
#' @field last_validation_date  character [optional]
#' @field expiry_date  character [optional]
#' @field comments  character [optional]
#' @field _field_list a list of fields list(character)
#' @field additional_properties additional properties list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FinFeedAPIExchangeModel <- R6::R6Class(
  "FinFeedAPIExchangeModel",
  inherit = AnyType,
  public = list(
    `exchange_id` = NULL,
    `last_datapoint_date` = NULL,
    `mic` = NULL,
    `operating_mic` = NULL,
    `oprt_sgmt` = NULL,
    `market_name_institution_description` = NULL,
    `legal_entity_name` = NULL,
    `lei` = NULL,
    `market_category_code` = NULL,
    `acronym` = NULL,
    `iso_country_code` = NULL,
    `city` = NULL,
    `website` = NULL,
    `status` = NULL,
    `creation_date` = NULL,
    `last_update_date` = NULL,
    `last_validation_date` = NULL,
    `expiry_date` = NULL,
    `comments` = NULL,
    `_field_list` = c("exchange_id", "last_datapoint_date", "mic", "operating_mic", "oprt_sgmt", "market_name_institution_description", "legal_entity_name", "lei", "market_category_code", "acronym", "iso_country_code", "city", "website", "status", "creation_date", "last_update_date", "last_validation_date", "expiry_date", "comments"),
    `additional_properties` = list(),

    #' @description
    #' Initialize a new FinFeedAPIExchangeModel class.
    #'
    #' @param exchange_id exchange_id
    #' @param last_datapoint_date last_datapoint_date
    #' @param mic mic
    #' @param operating_mic operating_mic
    #' @param oprt_sgmt oprt_sgmt
    #' @param market_name_institution_description market_name_institution_description
    #' @param legal_entity_name legal_entity_name
    #' @param lei lei
    #' @param market_category_code market_category_code
    #' @param acronym acronym
    #' @param iso_country_code iso_country_code
    #' @param city city
    #' @param website website
    #' @param status status
    #' @param creation_date creation_date
    #' @param last_update_date last_update_date
    #' @param last_validation_date last_validation_date
    #' @param expiry_date expiry_date
    #' @param comments comments
    #' @param additional_properties additional properties (optional)
    #' @param ... Other optional arguments.
    initialize = function(`exchange_id` = NULL, `last_datapoint_date` = NULL, `mic` = NULL, `operating_mic` = NULL, `oprt_sgmt` = NULL, `market_name_institution_description` = NULL, `legal_entity_name` = NULL, `lei` = NULL, `market_category_code` = NULL, `acronym` = NULL, `iso_country_code` = NULL, `city` = NULL, `website` = NULL, `status` = NULL, `creation_date` = NULL, `last_update_date` = NULL, `last_validation_date` = NULL, `expiry_date` = NULL, `comments` = NULL, additional_properties = NULL, ...) {
      if (!is.null(`exchange_id`)) {
        if (!(is.character(`exchange_id`) && length(`exchange_id`) == 1)) {
          stop(paste("Error! Invalid data for `exchange_id`. Must be a string:", `exchange_id`))
        }
        self$`exchange_id` <- `exchange_id`
      }
      if (!is.null(`last_datapoint_date`)) {
        if (!(is.character(`last_datapoint_date`) && length(`last_datapoint_date`) == 1)) {
          stop(paste("Error! Invalid data for `last_datapoint_date`. Must be a string:", `last_datapoint_date`))
        }
        self$`last_datapoint_date` <- `last_datapoint_date`
      }
      if (!is.null(`mic`)) {
        if (!(is.character(`mic`) && length(`mic`) == 1)) {
          stop(paste("Error! Invalid data for `mic`. Must be a string:", `mic`))
        }
        self$`mic` <- `mic`
      }
      if (!is.null(`operating_mic`)) {
        if (!(is.character(`operating_mic`) && length(`operating_mic`) == 1)) {
          stop(paste("Error! Invalid data for `operating_mic`. Must be a string:", `operating_mic`))
        }
        self$`operating_mic` <- `operating_mic`
      }
      if (!is.null(`oprt_sgmt`)) {
        if (!(is.character(`oprt_sgmt`) && length(`oprt_sgmt`) == 1)) {
          stop(paste("Error! Invalid data for `oprt_sgmt`. Must be a string:", `oprt_sgmt`))
        }
        self$`oprt_sgmt` <- `oprt_sgmt`
      }
      if (!is.null(`market_name_institution_description`)) {
        if (!(is.character(`market_name_institution_description`) && length(`market_name_institution_description`) == 1)) {
          stop(paste("Error! Invalid data for `market_name_institution_description`. Must be a string:", `market_name_institution_description`))
        }
        self$`market_name_institution_description` <- `market_name_institution_description`
      }
      if (!is.null(`legal_entity_name`)) {
        if (!(is.character(`legal_entity_name`) && length(`legal_entity_name`) == 1)) {
          stop(paste("Error! Invalid data for `legal_entity_name`. Must be a string:", `legal_entity_name`))
        }
        self$`legal_entity_name` <- `legal_entity_name`
      }
      if (!is.null(`lei`)) {
        if (!(is.character(`lei`) && length(`lei`) == 1)) {
          stop(paste("Error! Invalid data for `lei`. Must be a string:", `lei`))
        }
        self$`lei` <- `lei`
      }
      if (!is.null(`market_category_code`)) {
        if (!(is.character(`market_category_code`) && length(`market_category_code`) == 1)) {
          stop(paste("Error! Invalid data for `market_category_code`. Must be a string:", `market_category_code`))
        }
        self$`market_category_code` <- `market_category_code`
      }
      if (!is.null(`acronym`)) {
        if (!(is.character(`acronym`) && length(`acronym`) == 1)) {
          stop(paste("Error! Invalid data for `acronym`. Must be a string:", `acronym`))
        }
        self$`acronym` <- `acronym`
      }
      if (!is.null(`iso_country_code`)) {
        if (!(is.character(`iso_country_code`) && length(`iso_country_code`) == 1)) {
          stop(paste("Error! Invalid data for `iso_country_code`. Must be a string:", `iso_country_code`))
        }
        self$`iso_country_code` <- `iso_country_code`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`website`)) {
        if (!(is.character(`website`) && length(`website`) == 1)) {
          stop(paste("Error! Invalid data for `website`. Must be a string:", `website`))
        }
        self$`website` <- `website`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`creation_date`)) {
        if (!is.character(`creation_date`)) {
          stop(paste("Error! Invalid data for `creation_date`. Must be a string:", `creation_date`))
        }
        self$`creation_date` <- `creation_date`
      }
      if (!is.null(`last_update_date`)) {
        if (!is.character(`last_update_date`)) {
          stop(paste("Error! Invalid data for `last_update_date`. Must be a string:", `last_update_date`))
        }
        self$`last_update_date` <- `last_update_date`
      }
      if (!is.null(`last_validation_date`)) {
        if (!is.character(`last_validation_date`)) {
          stop(paste("Error! Invalid data for `last_validation_date`. Must be a string:", `last_validation_date`))
        }
        self$`last_validation_date` <- `last_validation_date`
      }
      if (!is.null(`expiry_date`)) {
        if (!is.character(`expiry_date`)) {
          stop(paste("Error! Invalid data for `expiry_date`. Must be a string:", `expiry_date`))
        }
        self$`expiry_date` <- `expiry_date`
      }
      if (!is.null(`comments`)) {
        if (!(is.character(`comments`) && length(`comments`) == 1)) {
          stop(paste("Error! Invalid data for `comments`. Must be a string:", `comments`))
        }
        self$`comments` <- `comments`
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
    #' @return FinFeedAPIExchangeModel as a base R list.
    #' @examples
    #' # convert array of FinFeedAPIExchangeModel (x) to a data frame
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
    #' Convert FinFeedAPIExchangeModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FinFeedAPIExchangeModelObject <- list()
      if (!is.null(self$`exchange_id`)) {
        FinFeedAPIExchangeModelObject[["exchange_id"]] <-
          self$`exchange_id`
      }
      if (!is.null(self$`last_datapoint_date`)) {
        FinFeedAPIExchangeModelObject[["last_datapoint_date"]] <-
          self$`last_datapoint_date`
      }
      if (!is.null(self$`mic`)) {
        FinFeedAPIExchangeModelObject[["mic"]] <-
          self$`mic`
      }
      if (!is.null(self$`operating_mic`)) {
        FinFeedAPIExchangeModelObject[["operating_mic"]] <-
          self$`operating_mic`
      }
      if (!is.null(self$`oprt_sgmt`)) {
        FinFeedAPIExchangeModelObject[["oprt_sgmt"]] <-
          self$`oprt_sgmt`
      }
      if (!is.null(self$`market_name_institution_description`)) {
        FinFeedAPIExchangeModelObject[["market_name_institution_description"]] <-
          self$`market_name_institution_description`
      }
      if (!is.null(self$`legal_entity_name`)) {
        FinFeedAPIExchangeModelObject[["legal_entity_name"]] <-
          self$`legal_entity_name`
      }
      if (!is.null(self$`lei`)) {
        FinFeedAPIExchangeModelObject[["lei"]] <-
          self$`lei`
      }
      if (!is.null(self$`market_category_code`)) {
        FinFeedAPIExchangeModelObject[["market_category_code"]] <-
          self$`market_category_code`
      }
      if (!is.null(self$`acronym`)) {
        FinFeedAPIExchangeModelObject[["acronym"]] <-
          self$`acronym`
      }
      if (!is.null(self$`iso_country_code`)) {
        FinFeedAPIExchangeModelObject[["iso_country_code"]] <-
          self$`iso_country_code`
      }
      if (!is.null(self$`city`)) {
        FinFeedAPIExchangeModelObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`website`)) {
        FinFeedAPIExchangeModelObject[["website"]] <-
          self$`website`
      }
      if (!is.null(self$`status`)) {
        FinFeedAPIExchangeModelObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`creation_date`)) {
        FinFeedAPIExchangeModelObject[["creation_date"]] <-
          self$`creation_date`
      }
      if (!is.null(self$`last_update_date`)) {
        FinFeedAPIExchangeModelObject[["last_update_date"]] <-
          self$`last_update_date`
      }
      if (!is.null(self$`last_validation_date`)) {
        FinFeedAPIExchangeModelObject[["last_validation_date"]] <-
          self$`last_validation_date`
      }
      if (!is.null(self$`expiry_date`)) {
        FinFeedAPIExchangeModelObject[["expiry_date"]] <-
          self$`expiry_date`
      }
      if (!is.null(self$`comments`)) {
        FinFeedAPIExchangeModelObject[["comments"]] <-
          self$`comments`
      }
      for (key in names(self$additional_properties)) {
        FinFeedAPIExchangeModelObject[[key]] <- self$additional_properties[[key]]
      }

      return(FinFeedAPIExchangeModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FinFeedAPIExchangeModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of FinFeedAPIExchangeModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`exchange_id`)) {
        self$`exchange_id` <- this_object$`exchange_id`
      }
      if (!is.null(this_object$`last_datapoint_date`)) {
        self$`last_datapoint_date` <- this_object$`last_datapoint_date`
      }
      if (!is.null(this_object$`mic`)) {
        self$`mic` <- this_object$`mic`
      }
      if (!is.null(this_object$`operating_mic`)) {
        self$`operating_mic` <- this_object$`operating_mic`
      }
      if (!is.null(this_object$`oprt_sgmt`)) {
        self$`oprt_sgmt` <- this_object$`oprt_sgmt`
      }
      if (!is.null(this_object$`market_name_institution_description`)) {
        self$`market_name_institution_description` <- this_object$`market_name_institution_description`
      }
      if (!is.null(this_object$`legal_entity_name`)) {
        self$`legal_entity_name` <- this_object$`legal_entity_name`
      }
      if (!is.null(this_object$`lei`)) {
        self$`lei` <- this_object$`lei`
      }
      if (!is.null(this_object$`market_category_code`)) {
        self$`market_category_code` <- this_object$`market_category_code`
      }
      if (!is.null(this_object$`acronym`)) {
        self$`acronym` <- this_object$`acronym`
      }
      if (!is.null(this_object$`iso_country_code`)) {
        self$`iso_country_code` <- this_object$`iso_country_code`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`website`)) {
        self$`website` <- this_object$`website`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`creation_date`)) {
        self$`creation_date` <- this_object$`creation_date`
      }
      if (!is.null(this_object$`last_update_date`)) {
        self$`last_update_date` <- this_object$`last_update_date`
      }
      if (!is.null(this_object$`last_validation_date`)) {
        self$`last_validation_date` <- this_object$`last_validation_date`
      }
      if (!is.null(this_object$`expiry_date`)) {
        self$`expiry_date` <- this_object$`expiry_date`
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- this_object$`comments`
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
    #' @return FinFeedAPIExchangeModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      for (key in names(self$additional_properties)) {
        simple[[key]] <- self$additional_properties[[key]]
      }
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FinFeedAPIExchangeModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of FinFeedAPIExchangeModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`exchange_id` <- this_object$`exchange_id`
      self$`last_datapoint_date` <- this_object$`last_datapoint_date`
      self$`mic` <- this_object$`mic`
      self$`operating_mic` <- this_object$`operating_mic`
      self$`oprt_sgmt` <- this_object$`oprt_sgmt`
      self$`market_name_institution_description` <- this_object$`market_name_institution_description`
      self$`legal_entity_name` <- this_object$`legal_entity_name`
      self$`lei` <- this_object$`lei`
      self$`market_category_code` <- this_object$`market_category_code`
      self$`acronym` <- this_object$`acronym`
      self$`iso_country_code` <- this_object$`iso_country_code`
      self$`city` <- this_object$`city`
      self$`website` <- this_object$`website`
      self$`status` <- this_object$`status`
      self$`creation_date` <- this_object$`creation_date`
      self$`last_update_date` <- this_object$`last_update_date`
      self$`last_validation_date` <- this_object$`last_validation_date`
      self$`expiry_date` <- this_object$`expiry_date`
      self$`comments` <- this_object$`comments`
      # process additional properties/fields in the payload
      for (key in names(this_object)) {
        if (!(key %in% self$`_field_list`)) { # json key not in list of fields
          self$additional_properties[[key]] <- this_object[[key]]
        }
      }

      self
    },

    #' @description
    #' Validate JSON input with respect to FinFeedAPIExchangeModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FinFeedAPIExchangeModel
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
# FinFeedAPIExchangeModel$unlock()
#
## Below is an example to define the print function
# FinFeedAPIExchangeModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FinFeedAPIExchangeModel$lock()

