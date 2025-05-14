# LEVEL3_MODIFY_ORDER_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the order was modified as DateTime (UTC) | [optional] [default to null]
**order_id_reference** | **INTEGER_64** | Order identifier reference | [optional] [default to null]
**is_priority_reset** | **BOOLEAN** | Indicates if priority is reseted | [optional] [default to null]
**size** | **INTEGER_32** | New total quoted size in number of shares | [optional] [default to null]
**price** | **REAL_64** | Price as decimal | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


