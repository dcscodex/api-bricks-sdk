# AdminOperationalHaltStatusModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the operational halt status was recorded as DateTime | [optional] 
**OperationalHaltStatus** | **Int32** | Operational halt status as byte value | [optional] 
**OperationalHaltStatusCode** | **String** | Operational halt status as character string | [optional] 
**OperationalHaltStatusText** | **String** | Human-readable description of the operational halt status | [optional] 
**IsOperationallyHalted** | **Boolean** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsNotOperationallyHalted** | **Boolean** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminOperationalHaltStatusModel = Initialize-PSOpenAPIToolsAdminOperationalHaltStatusModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -OperationalHaltStatus null `
 -OperationalHaltStatusCode null `
 -OperationalHaltStatusText null `
 -IsOperationallyHalted null `
 -IsNotOperationallyHalted null
```

- Convert the resource to JSON
```powershell
$AdminOperationalHaltStatusModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

