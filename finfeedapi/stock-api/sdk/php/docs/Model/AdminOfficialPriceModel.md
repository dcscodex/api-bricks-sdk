# # AdminOfficialPriceModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the official price was recorded as DateTime | [optional]
**price_type** | **int** | Type of price as byte value | [optional]
**price_type_code** | **string** | Type of price as character string | [optional]
**price_type_text** | **string** | Human-readable description of the price type | [optional]
**is_price_type_opening** | **bool** | Indicates if the price type is &#39;IEX Official Opening Price&#39; (&#39;Q&#39;/0x51). | [optional]
**is_price_type_closing** | **bool** | Indicates if the price type is &#39;IEX Official Closing Price&#39; (&#39;M&#39;/0x4d). | [optional]
**official_price** | **float** | Official price as decimal | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
