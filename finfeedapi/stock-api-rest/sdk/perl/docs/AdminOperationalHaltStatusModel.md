# WWW::OpenAPIClient::Object::AdminOperationalHaltStatusModel

## Load the model package
```perl
use WWW::OpenAPIClient::Object::AdminOperationalHaltStatusModel;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **DATE_TIME** | Time when the operational halt status was recorded as DateTime | [optional] 
**operational_halt_status** | **int** | Operational halt status as byte value | [optional] 
**operational_halt_status_code** | **string** | Operational halt status as character string | [optional] 
**operational_halt_status_text** | **string** | Human-readable description of the operational halt status | [optional] 
**is_operationally_halted** | **boolean** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] 
**is_not_operationally_halted** | **boolean** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


