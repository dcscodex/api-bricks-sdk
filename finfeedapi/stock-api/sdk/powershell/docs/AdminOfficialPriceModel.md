# AdminOfficialPriceModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the official price was recorded as DateTime | [optional] 
**PriceType** | **Int32** | Type of price as byte value | [optional] 
**PriceTypeCode** | **String** | Type of price as character string | [optional] 
**PriceTypeText** | **String** | Human-readable description of the price type | [optional] 
**IsPriceTypeOpening** | **Boolean** | Indicates if the price type is &#39;IEX Official Opening Price&#39; (&#39;Q&#39;/0x51). | [optional] 
**IsPriceTypeClosing** | **Boolean** | Indicates if the price type is &#39;IEX Official Closing Price&#39; (&#39;M&#39;/0x4d). | [optional] 
**OfficialPrice** | **Double** | Official price as decimal | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminOfficialPriceModel = Initialize-PSOpenAPIToolsAdminOfficialPriceModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -PriceType null `
 -PriceTypeCode null `
 -PriceTypeText null `
 -IsPriceTypeOpening null `
 -IsPriceTypeClosing null `
 -OfficialPrice null
```

- Convert the resource to JSON
```powershell
$AdminOfficialPriceModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

