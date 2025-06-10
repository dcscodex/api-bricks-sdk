# V1MetricData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SymbolId** | **String** | Gets or sets the symbol id. | [optional] 
**Time** | **System.DateTime** | Gets or sets the time at which the value is recorded. | [optional] 
**Value** | **Double** | Gets or sets the value of the metric. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1MetricData = Initialize-PSOpenAPIToolsV1MetricData  -SymbolId null `
 -Time null `
 -Value null
```

- Convert the resource to JSON
```powershell
$V1MetricData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

