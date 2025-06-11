# Level1QuoteUpdateModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the quote update was recorded as DateTime | [optional] 
**IsSymbolAvailable** | **Boolean** | Gets whether the symbol is available for trading True if active, False if halted, paused, or otherwise not available | [optional] 
**IsPrePostMarketSession** | **Boolean** | Gets whether the market session is regular or pre/post-market True if pre/post-market session, False if regular market session | [optional] 
**AskSize** | **Int32** | Ask size in number of shares | [optional] 
**AskPrice** | **Double** | Ask price as decimal | [optional] 
**BidPrice** | **Double** | Bid price as decimal | [optional] 
**BidSize** | **Int32** | Bid size in number of shares | [optional] 

## Examples

- Prepare the resource
```powershell
$Level1QuoteUpdateModel = Initialize-PSOpenAPIToolsLevel1QuoteUpdateModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -IsSymbolAvailable null `
 -IsPrePostMarketSession null `
 -AskSize null `
 -AskPrice null `
 -BidPrice null `
 -BidSize null
```

- Convert the resource to JSON
```powershell
$Level1QuoteUpdateModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

