# # V1Exchange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **string** | Gets or sets the exchange ID. | [optional]
**website** | **string** | Gets or sets the website URL of the exchange. | [optional]
**name** | **string** | Gets or sets the name of the exchange. | [optional]
**data_start** | **string** |  | [optional] [readonly]
**data_end** | **string** |  | [optional] [readonly]
**data_quote_start** | **\DateTime** | Gets or sets the start date of quote data. | [optional]
**data_quote_end** | **\DateTime** | Gets or sets the end date of quote data. | [optional]
**data_orderbook_start** | **\DateTime** | Gets or sets the start date of order book data. | [optional]
**data_orderbook_end** | **\DateTime** | Gets or sets the end date of order book data. | [optional]
**data_trade_start** | **\DateTime** | Gets or sets the start date of trade data. | [optional]
**data_trade_end** | **\DateTime** | Gets or sets the end date of trade data. | [optional]
**data_trade_count** | **int** | Gets or sets the number of trades. | [optional]
**data_symbols_count** | **int** | Gets or sets the number of symbols. | [optional]
**volume_1hrs_usd** | **float** | Gets or sets the USD volume in the last 1 hour. | [optional]
**volume_1day_usd** | **float** | Gets or sets the USD volume in the last 1 day. | [optional]
**volume_1mth_usd** | **float** | Gets or sets the USD volume in the last 1 month. | [optional]
**metric_id** | **string[]** | Gets or sets the list of metric IDs. | [optional]
**icons** | [**\OpenAPI\Client\Model\V1Icon[]**](V1Icon.md) | Gets or sets the list of icons for the exchange. | [optional] [readonly]
**rank** | **float** | Rank of the exchange. | [optional]
**integration_status** | **string** | Status of the integration | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
