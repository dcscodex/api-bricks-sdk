# LEVEL3_ADD_ORDER_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the order was added as DateTime (UTC) | [optional] [default to null]
**is_side_buy** | **BOOLEAN** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional] [default to null]
**size** | **INTEGER_32** | Quoted size in number of shares | [optional] [default to null]
**price** | **REAL_64** | Price as decimal | [optional] [default to null]
**order_id** | **INTEGER_64** | Order identifier | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


