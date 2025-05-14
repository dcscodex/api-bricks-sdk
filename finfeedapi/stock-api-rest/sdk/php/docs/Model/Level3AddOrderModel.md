# # Level3AddOrderModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the order was added as DateTime (UTC) | [optional]
**is_side_buy** | **bool** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional]
**size** | **int** | Quoted size in number of shares | [optional]
**price** | **float** | Price as decimal | [optional]
**order_id** | **int** | Order identifier | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
