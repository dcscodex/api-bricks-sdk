# openapi::AdminOfficialPriceModel

Represents the response DTO for official price information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the official price was recorded as DateTime | [optional] 
**price_type** | **integer** | Type of price as byte value | [optional] 
**price_type_code** | **character** | Type of price as character string | [optional] 
**price_type_text** | **character** | Human-readable description of the price type | [optional] 
**is_price_type_opening** | **character** | Indicates if the price type is &#39;IEX Official Opening Price&#39; (&#39;Q&#39;/0x51). | [optional] 
**is_price_type_closing** | **character** | Indicates if the price type is &#39;IEX Official Closing Price&#39; (&#39;M&#39;/0x4d). | [optional] 
**official_price** | **numeric** | Official price as decimal | [optional] 


