# OHLCVTimeseriesPeriod
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PeriodId** | **String** | Gets or sets the period ID. | [optional] 
**LengthSeconds** | **Int32** | Gets or sets the length of the period in seconds. | [optional] 
**LengthMonths** | **Int32** | Gets or sets the length of the period in months. | [optional] 
**UnitCount** | **Int32** | Gets or sets the unit count. | [optional] 
**UnitName** | **String** | Gets or sets the unit name. | [optional] 
**DisplayName** | **String** | Gets or sets the display name of the timeseries period. | [optional] 

## Examples

- Prepare the resource
```powershell
$OHLCVTimeseriesPeriod = Initialize-PSOpenAPIToolsOHLCVTimeseriesPeriod  -PeriodId null `
 -LengthSeconds null `
 -LengthMonths null `
 -UnitCount null `
 -UnitName null `
 -DisplayName null
```

- Convert the resource to JSON
```powershell
$OHLCVTimeseriesPeriod | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

