#' FinFeedAPI Stock REST API
#'
#' No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#'
#' The version of the OpenAPI document: v1
#' Contact: support@apibricks.io
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Metadata operations
#' @description MetadataApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @examples
#' \dontrun{
#' ####################  V1ExchangesGet  ####################
#'
#' library(openapi)
#'
#' #List of exchanges
#' api_instance <- MetadataApi$new()
#'
#' # Configure API key authorization: APIKey
#' api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
#'
#' # Configure HTTP bearer authorization: JWT
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$V1ExchangesGet(data_file = "result.txt")
#' result <- api_instance$V1ExchangesGet()
#' dput(result)
#'
#'
#' ####################  V1SymbolsExchangeIdGet  ####################
#'
#' library(openapi)
#' var_exchange_id <- "exchange_id_example" # character | 
#'
#' #List of symbols for the exchange
#' api_instance <- MetadataApi$new()
#'
#' # Configure API key authorization: APIKey
#' api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
#'
#' # Configure HTTP bearer authorization: JWT
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$V1SymbolsExchangeIdGet(var_exchange_iddata_file = "result.txt")
#' result <- api_instance$V1SymbolsExchangeIdGet(var_exchange_id)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
MetadataApi <- R6::R6Class(
  "MetadataApi",
  public = list(
    api_client = NULL,

    #' @description
    #' Initialize a new MetadataApi.
    #'
    #' @param api_client An instance of API client.
    initialize = function(api_client) {
      if (!missing(api_client)) {
        self$api_client <- api_client
      } else {
        self$api_client <- ApiClient$new()
      }
    },

    #' @description
    #' List of exchanges
    #'
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return array[FinFeedAPIExchangeModel]
    V1ExchangesGet = function(data_file = NULL, ...) {
      local_var_response <- self$V1ExchangesGetWithHttpInfo(data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' List of exchanges
    #'
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (array[FinFeedAPIExchangeModel]) with additional information such as HTTP status code, headers
    V1ExchangesGetWithHttpInfo = function(data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      local_var_url_path <- "/v1/exchanges"
      # API key authentication
      if ("Authorization" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["Authorization"]) > 0) {
        header_params["Authorization"] <- paste(unlist(self$api_client$api_keys["Authorization"]), collapse = "")
      }
      # Bearer token
      if (!is.null(self$api_client$bearer_token)) {
        header_params["Authorization"] <- paste("Bearer", self$api_client$bearer_token, sep = " ")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("text/plain", "application/json", "text/json")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "array[FinFeedAPIExchangeModel]"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    },

    #' @description
    #' List of symbols for the exchange
    #'
    #' @param exchange_id 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return array[FinFeedAPISymbolModel]
    V1SymbolsExchangeIdGet = function(exchange_id, data_file = NULL, ...) {
      local_var_response <- self$V1SymbolsExchangeIdGetWithHttpInfo(exchange_id, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' List of symbols for the exchange
    #'
    #' @param exchange_id 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (array[FinFeedAPISymbolModel]) with additional information such as HTTP status code, headers
    V1SymbolsExchangeIdGetWithHttpInfo = function(exchange_id, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`exchange_id`)) {
        stop("Missing required parameter `exchange_id`.")
      }


      local_var_url_path <- "/v1/symbols/{exchange_id}"
      if (!missing(`exchange_id`)) {
        local_var_url_path <- gsub("\\{exchange_id\\}", URLencode(as.character(`exchange_id`), reserved = TRUE), local_var_url_path)
      }

      # API key authentication
      if ("Authorization" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["Authorization"]) > 0) {
        header_params["Authorization"] <- paste(unlist(self$api_client$api_keys["Authorization"]), collapse = "")
      }
      # Bearer token
      if (!is.null(self$api_client$bearer_token)) {
        header_params["Authorization"] <- paste("Bearer", self$api_client$bearer_token, sep = " ")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("text/plain", "application/json", "text/json")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "array[FinFeedAPISymbolModel]"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    }
  )
)
