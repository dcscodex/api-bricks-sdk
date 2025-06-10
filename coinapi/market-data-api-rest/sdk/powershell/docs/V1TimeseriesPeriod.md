# V1TimeseriesPeriod
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PeriodId** | **String** | The period ID. | [optional] 
**LengthSeconds** | **Int32** | The length of the period in seconds. | [optional] 
**LengthMonths** | **Int32** | The length of the period in months. | [optional] 
**UnitCount** | **Int32** | The unit count. | [optional] 
**UnitName** | **String** | The unit name. | [optional] 
**DisplayName** | **String** | The display name of the timeseries period. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1TimeseriesPeriod = Initialize-PSOpenAPIToolsV1TimeseriesPeriod  -PeriodId null `
 -LengthSeconds null `
 -LengthMonths null `
 -UnitCount null `
 -UnitName null `
 -DisplayName null
```

- Convert the resource to JSON
```powershell
$V1TimeseriesPeriod | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

