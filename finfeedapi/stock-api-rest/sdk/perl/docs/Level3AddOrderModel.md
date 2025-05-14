# WWW::OpenAPIClient::Object::Level3AddOrderModel

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Level3AddOrderModel;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **DATE_TIME** | Time when the order was added as DateTime (UTC) | [optional] 
**is_side_buy** | **boolean** | Indicates if this is a Buy order (&#39;8&#39;/0x38). | [optional] 
**size** | **int** | Quoted size in number of shares | [optional] 
**price** | **double** | Price as decimal | [optional] 
**order_id** | **int** | Order identifier | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


