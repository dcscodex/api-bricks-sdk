# V1MetricInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MetricId** | **String** | Gets or sets the metric identifier. | [optional] 
**Description** | **String** | Gets or sets the description of the metric. | [optional] 
**SourceId** | **String** | Gets or sets the source identifier of the metric. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1MetricInfo = Initialize-PSOpenAPIToolsV1MetricInfo  -MetricId null `
 -Description null `
 -SourceId null
```

- Convert the resource to JSON
```powershell
$V1MetricInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

