# IndexesIndexTimeseriesItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimePeriodStart** | **System.DateTime** | Gets or sets the start time of the time period. | [optional] 
**TimePeriodEnd** | **System.DateTime** | Gets or sets the end time of the time period. | [optional] 
**TimeOpen** | **System.DateTime** | Gets or sets the time when the value opened. | [optional] 
**TimeClose** | **System.DateTime** | Gets or sets the time when the value closed. | [optional] 
**ValueOpen** | **Double** | Gets or sets the opening value. | [optional] 
**ValueHigh** | **Double** | Gets or sets the highest value during the time period. | [optional] 
**ValueLow** | **Double** | Gets or sets the lowest value during the time period. | [optional] 
**ValueClose** | **Double** | Gets or sets the closing value. | [optional] 
**ValueCount** | **Int64** | Gets or sets the number of values during the time period. | [optional] 

## Examples

- Prepare the resource
```powershell
$IndexesIndexTimeseriesItem = Initialize-PSOpenAPIToolsIndexesIndexTimeseriesItem  -TimePeriodStart null `
 -TimePeriodEnd null `
 -TimeOpen null `
 -TimeClose null `
 -ValueOpen null `
 -ValueHigh null `
 -ValueLow null `
 -ValueClose null `
 -ValueCount null
```

- Convert the resource to JSON
```powershell
$IndexesIndexTimeseriesItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

