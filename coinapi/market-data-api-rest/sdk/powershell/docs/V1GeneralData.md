# V1GeneralData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntryTime** | **System.DateTime** | Gets or sets the entry time for the data point. | [optional] 
**RecvTime** | **System.DateTime** | Gets or sets the received time for the data point. | [optional] 
**ExchangeId** | **String** | Gets or sets the identifier for the exchange. | [optional] 
**AssetId** | **String** | Gets or sets the identifier for the asset. | [optional] 
**SymbolId** | **String** | Gets or sets the identifier for the symbol. | [optional] 
**MetricId** | **String** | Gets or sets the identifier for the metric. | [optional] 
**ValueDecimal** | **Double** | Gets or sets the decimal value for the metric. | [optional] 
**ValueText** | **String** | Gets or sets the textual representation of the value for the metric. | [optional] 
**ValueTime** | **System.DateTime** | Gets or sets the timestamp value for the metric. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1GeneralData = Initialize-PSOpenAPIToolsV1GeneralData  -EntryTime null `
 -RecvTime null `
 -ExchangeId null `
 -AssetId null `
 -SymbolId null `
 -MetricId null `
 -ValueDecimal null `
 -ValueText null `
 -ValueTime null
```

- Convert the resource to JSON
```powershell
$V1GeneralData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

