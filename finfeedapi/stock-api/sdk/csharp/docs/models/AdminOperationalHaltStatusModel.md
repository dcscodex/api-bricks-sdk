# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminOperationalHaltStatusModel
Represents the response DTO for operational halt status information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the operational halt status was recorded as DateTime | [optional] 
**OperationalHaltStatus** | **int** | Operational halt status as byte value | [optional] 
**OperationalHaltStatusCode** | **string** | Operational halt status as character string | [optional] 
**OperationalHaltStatusText** | **string** | Human-readable description of the operational halt status | [optional] 
**IsOperationallyHalted** | **bool** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsNotOperationallyHalted** | **bool** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

