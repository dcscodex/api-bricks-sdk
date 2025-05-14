# AdminRetailLiquidityIndicatorModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the retail liquidity indicator was recorded as DateTime | [optional] 
**RetailLiquidityIndicator** | **Int32** | Retail liquidity indicator as byte value | [optional] 
**RetailLiquidityIndicatorCode** | **String** | Retail liquidity indicator as character string | [optional] 
**RetailLiquidityIndicatorText** | **String** | Human-readable description of the retail liquidity indicator | [optional] 
**IsRetailIndicatorNotApplicable** | **Boolean** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). | [optional] 
**IsRetailIndicatorBuyInterest** | **Boolean** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). | [optional] 
**IsRetailIndicatorSellInterest** | **Boolean** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). | [optional] 
**IsRetailIndicatorBuyAndSellInterest** | **Boolean** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminRetailLiquidityIndicatorModel = Initialize-PSOpenAPIToolsAdminRetailLiquidityIndicatorModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -RetailLiquidityIndicator null `
 -RetailLiquidityIndicatorCode null `
 -RetailLiquidityIndicatorText null `
 -IsRetailIndicatorNotApplicable null `
 -IsRetailIndicatorBuyInterest null `
 -IsRetailIndicatorSellInterest null `
 -IsRetailIndicatorBuyAndSellInterest null
```

- Convert the resource to JSON
```powershell
$AdminRetailLiquidityIndicatorModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

