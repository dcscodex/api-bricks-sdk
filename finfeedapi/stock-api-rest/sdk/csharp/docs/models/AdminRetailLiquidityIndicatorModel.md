# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminRetailLiquidityIndicatorModel
Represents the response DTO for retail liquidity indicator information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the retail liquidity indicator was recorded as DateTime | [optional] 
**RetailLiquidityIndicator** | **int** | Retail liquidity indicator as byte value | [optional] 
**RetailLiquidityIndicatorCode** | **string** | Retail liquidity indicator as character string | [optional] 
**RetailLiquidityIndicatorText** | **string** | Human-readable description of the retail liquidity indicator | [optional] 
**IsRetailIndicatorNotApplicable** | **bool** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). | [optional] 
**IsRetailIndicatorBuyInterest** | **bool** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). | [optional] 
**IsRetailIndicatorSellInterest** | **bool** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). | [optional] 
**IsRetailIndicatorBuyAndSellInterest** | **bool** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

