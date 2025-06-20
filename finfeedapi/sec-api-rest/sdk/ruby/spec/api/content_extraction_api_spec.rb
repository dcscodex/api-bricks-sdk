=begin
#FinFeedAPI SEC REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1
Contact: support@apibricks.io
Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::ContentExtractionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContentExtractionApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::ContentExtractionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContentExtractionApi' do
    it 'should create an instance of ContentExtractionApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::ContentExtractionApi)
    end
  end

  # unit tests for v1_extractor_get
  # Extract and classify SEC filing content
  # Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.  ### Supported Form Types  Form Type | Description ----------|------------ 8-K      | Current report filing 10-K     | Annual report filing 10-Q     | Quarterly report filing  ### Content Classification - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01) - 10-K/10-Q forms: Items categorized by their respective part and item structure  :::note Both HTML and plain text documents are supported for content extraction. :::
  # @param accession_number The SEC filing accession number used to retrieve the filing from EDGAR database.
  # @param [Hash] opts the optional parameters
  # @option opts [DTOExtractorType] :type Result type (text or html, default: text)
  # @return [Hash<String, Object>]
  describe 'v1_extractor_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_extractor_item_get
  # Extract specific item content from SEC filing
  # Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.  ### Item Number Format  Form Type | Item Format Examples -----------|------------------- 8-K       | 1.01, 2.01, 7.01 10-K      | 1, 2, 3 10-K/10-Q | PartI 1, PartII 2  :::tip For best results, ensure the item number matches exactly with the filing&#39;s structure. :::
  # @param accession_number The SEC filing accession number used to retrieve the filing from EDGAR database.
  # @param item_number The specific item number to extract (e.g., \&quot;1.01\&quot;, \&quot;2.01\&quot;, \&quot;7.01\&quot;).
  # @param [Hash] opts the optional parameters
  # @option opts [DTOExtractorType] :type Result type (text or html, default: text)
  # @return [String]
  describe 'v1_extractor_item_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
