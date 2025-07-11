=begin
#CoinAPI Market Data REST API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v1
Contact: support@apibricks.io
Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::OrderBookL3Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrderBookL3Api' do
  before do
    # run before each test
    @api_instance = OpenapiClient::OrderBookL3Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderBookL3Api' do
    it 'should create an instance of OrderBookL3Api' do
      expect(@api_instance).to be_instance_of(OpenapiClient::OrderBookL3Api)
    end
  end

  # unit tests for v1_orderbooks3_current_get
  # Current order books
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter_symbol_id Comma or semicolon delimited parts of symbol identifier used to filter the response.
  # @option opts [Integer] :limit_levels The maximum number of levels to include in the response.
  # @return [Array<V1OrderBookBase>]
  describe 'v1_orderbooks3_current_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for v1_orderbooks3_symbol_id_current_get
  # Current order book by symbol_id
  # Retrieves the current order book for the specified symbol.
  # @param symbol_id The symbol ID (from the Metadata -&gt; Symbols)
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit_levels The maximum number of levels to include in the response.
  # @return [V1OrderBookBase]
  describe 'v1_orderbooks3_symbol_id_current_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
