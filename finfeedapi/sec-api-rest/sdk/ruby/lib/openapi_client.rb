=begin
#FinFeedAPI SEC REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1
Contact: support@apibricks.io
Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/dto_extractor_type'
require 'openapi_client/models/dto_filing_metadata_dto'
require 'openapi_client/models/dto_filing_sort_by'
require 'openapi_client/models/dto_sec_filing_result_dto'
require 'openapi_client/models/mvc_problem_details'
require 'openapi_client/models/mvc_validation_problem_details'

# APIs
require 'openapi_client/api/content_extraction_api'
require 'openapi_client/api/file_download_api'
require 'openapi_client/api/filing_metadata_api'
require 'openapi_client/api/full_text_search_api'
require 'openapi_client/api/xbrl_conversion_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
