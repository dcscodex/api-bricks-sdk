# # Level3ModifyOrderModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the order was modified as DateTime (UTC) | [optional]
**order_id_reference** | **int** | Order identifier reference | [optional]
**is_priority_reset** | **bool** | Indicates if priority is reseted | [optional]
**size** | **int** | New total quoted size in number of shares | [optional]
**price** | **float** | Price as decimal | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
