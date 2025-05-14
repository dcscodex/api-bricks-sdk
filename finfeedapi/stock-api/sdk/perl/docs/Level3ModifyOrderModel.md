# WWW::OpenAPIClient::Object::Level3ModifyOrderModel

## Load the model package
```perl
use WWW::OpenAPIClient::Object::Level3ModifyOrderModel;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **DATE_TIME** | Time when the order was modified as DateTime (UTC) | [optional] 
**order_id_reference** | **int** | Order identifier reference | [optional] 
**is_priority_reset** | **boolean** | Indicates if priority is reseted | [optional] 
**size** | **int** | New total quoted size in number of shares | [optional] 
**price** | **double** | Price as decimal | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


