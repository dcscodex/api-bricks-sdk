# V1Metric
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MetricId** | **String** | Gets or sets the metric ID. | [optional] 
**Description** | **String** | Gets or sets the metric description. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1Metric = Initialize-PSOpenAPIToolsV1Metric  -MetricId null `
 -Description null
```

- Convert the resource to JSON
```powershell
$V1Metric | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

