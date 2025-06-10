# APIBricks.CoinAPI.MarketDataAPI.REST.V1.Model.V1Asset
Represents an asset.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssetId** | **string** | Gets or sets the asset ID. | [optional] 
**Name** | **string** | Gets or sets the name of the asset. | [optional] 
**TypeIsCrypto** | **int** | Gets or sets a value indicating whether the asset is a cryptocurrency. | [optional] 
**DataQuoteStart** | **DateTime** | Gets or sets the start date of quote data. | [optional] 
**DataQuoteEnd** | **DateTime** | Gets or sets the end date of quote data. | [optional] 
**DataOrderbookStart** | **DateTime** | Gets or sets the start date of order book data. | [optional] 
**DataOrderbookEnd** | **DateTime** | Gets or sets the end date of order book data. | [optional] 
**DataTradeStart** | **DateTime** | Gets or sets the start date of trade data. | [optional] 
**DataTradeEnd** | **DateTime** | Gets or sets the end date of trade data. | [optional] 
**DataSymbolsCount** | **long** | Gets or sets the number of symbols. | [optional] 
**Volume1hrsUsd** | **double** | Gets or sets the USD volume in the last 1 hour. | [optional] 
**Volume1dayUsd** | **double** | Gets or sets the USD volume in the last 1 day. | [optional] 
**Volume1mthUsd** | **double** | Gets or sets the USD volume in the last 1 month. | [optional] 
**PriceUsd** | **double** | Gets or sets the USD price of the asset. | [optional] 
**IdIcon** | **Guid** | Gets or sets the ID of the icon for the asset. | [optional] 
**SupplyCurrent** | **double** | Gets or sets the current supply of the asset. | [optional] 
**SupplyTotal** | **double** | Gets or sets the total supply of the asset. | [optional] 
**SupplyMax** | **double** | Gets or sets the maximum supply of the asset. | [optional] 
**ChainAddresses** | [**List&lt;V1ChainNetworkAddress&gt;**](V1ChainNetworkAddress.md) |  | [optional] 
**DataStart** | **string** |  | [optional] [readonly] 
**DataEnd** | **string** |  | [optional] [readonly] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

