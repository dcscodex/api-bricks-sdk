# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminOfficialPriceModel
Represents the response DTO for official price information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the official price was recorded as DateTime | [optional] 
**PriceType** | **int** | Type of price as byte value | [optional] 
**PriceTypeCode** | **string** | Type of price as character string | [optional] 
**PriceTypeText** | **string** | Human-readable description of the price type | [optional] 
**IsPriceTypeOpening** | **bool** | Indicates if the price type is &#39;IEX Official Opening Price&#39; (&#39;Q&#39;/0x51). | [optional] 
**IsPriceTypeClosing** | **bool** | Indicates if the price type is &#39;IEX Official Closing Price&#39; (&#39;M&#39;/0x4d). | [optional] 
**OfficialPrice** | **double** | Official price as decimal | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

