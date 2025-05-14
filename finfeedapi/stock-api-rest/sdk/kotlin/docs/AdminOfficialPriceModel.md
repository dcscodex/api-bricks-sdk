
# AdminOfficialPriceModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the official price was recorded as DateTime |  [optional] |
| **priceType** | **kotlin.Int** | Type of price as byte value |  [optional] |
| **priceTypeCode** | **kotlin.String** | Type of price as character string |  [optional] |
| **priceTypeText** | **kotlin.String** | Human-readable description of the price type |  [optional] |
| **isPriceTypeOpening** | **kotlin.Boolean** | Indicates if the price type is &#39;IEX Official Opening Price&#39; (&#39;Q&#39;/0x51). |  [optional] |
| **isPriceTypeClosing** | **kotlin.Boolean** | Indicates if the price type is &#39;IEX Official Closing Price&#39; (&#39;M&#39;/0x4d). |  [optional] |
| **officialPrice** | **kotlin.Double** | Official price as decimal |  [optional] |



