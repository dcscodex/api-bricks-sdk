# Locations
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LocationId** | **String** | CoinAPI location identifier | [optional] 
**RegionName** | **String** | Identifier of the region by the location provider | [optional] 
**ProviderName** | **String** | Identifier of the location provider | [optional] 

## Examples

- Prepare the resource
```powershell
$Locations = Initialize-PSOpenAPIToolsLocations  -LocationId aws-us-east-1 `
 -RegionName us-east-1 `
 -ProviderName aws
```

- Convert the resource to JSON
```powershell
$Locations | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

