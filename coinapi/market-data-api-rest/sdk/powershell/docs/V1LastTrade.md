# V1LastTrade
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimeExchange** | **System.DateTime** | The exchange time of the last trade. | [optional] 
**TimeCoinapi** | **System.DateTime** | The CoinAPI time when the last trade was received. | [optional] 
**Uuid** | **String** | The UUID of the last trade. | [optional] 
**Price** | **Double** | The price of the last trade. | [optional] 
**Size** | **Double** | The size of the last trade. | [optional] 
**TakerSide** | **String** | The taker side of the last trade. | [optional] 

## Examples

- Prepare the resource
```powershell
$V1LastTrade = Initialize-PSOpenAPIToolsV1LastTrade  -TimeExchange null `
 -TimeCoinapi null `
 -Uuid null `
 -Price null `
 -Size null `
 -TakerSide null
```

- Convert the resource to JSON
```powershell
$V1LastTrade | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

