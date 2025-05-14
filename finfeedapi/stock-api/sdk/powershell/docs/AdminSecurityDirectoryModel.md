# AdminSecurityDirectoryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the security directory information was recorded as DateTime | [optional] 
**Flags** | **Int32** | Flags for the security | [optional] 
**RoundLotSize** | **Int32** | Number of shares that represent a round lot | [optional] 
**AdjustedPocPrice** | **Double** | Adjusted previous official closing price as decimal | [optional] 
**LuldTier** | **Int32** | LULD tier as byte value | [optional] 
**LuldTierCode** | **String** | LULD tier as numeric string | [optional] 
**LuldTierText** | **String** | Human-readable description of the LULD tier | [optional] 
**IsLuldTierNotApplicable** | **Boolean** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). | [optional] 
**IsLuldTier1** | **Boolean** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). | [optional] 
**IsLuldTier2** | **Boolean** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminSecurityDirectoryModel = Initialize-PSOpenAPIToolsAdminSecurityDirectoryModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -Flags null `
 -RoundLotSize null `
 -AdjustedPocPrice null `
 -LuldTier null `
 -LuldTierCode null `
 -LuldTierText null `
 -IsLuldTierNotApplicable null `
 -IsLuldTier1 null `
 -IsLuldTier2 null
```

- Convert the resource to JSON
```powershell
$AdminSecurityDirectoryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

