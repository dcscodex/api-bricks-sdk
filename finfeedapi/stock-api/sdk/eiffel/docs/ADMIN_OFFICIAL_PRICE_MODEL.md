# ADMIN_OFFICIAL_PRICE_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the official price was recorded as DateTime | [optional] [default to null]
**price_type** | **INTEGER_32** | Type of price as byte value | [optional] [default to null]
**price_type_code** | [**STRING_32**](STRING_32.md) | Type of price as character string | [optional] [default to null]
**price_type_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the price type | [optional] [default to null]
**is_price_type_opening** | **BOOLEAN** | Indicates if the price type is &#39;IEX Official Opening Price&#39; (&#39;Q&#39;/0x51). | [optional] [default to null]
**is_price_type_closing** | **BOOLEAN** | Indicates if the price type is &#39;IEX Official Closing Price&#39; (&#39;M&#39;/0x4d). | [optional] [default to null]
**official_price** | **REAL_64** | Official price as decimal | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


