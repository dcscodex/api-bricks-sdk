# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminSecurityDirectoryModel
Represents the response DTO for security directory information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the security directory information was recorded as DateTime | [optional] 
**Flags** | **int** | Flags for the security | [optional] 
**RoundLotSize** | **int** | Number of shares that represent a round lot | [optional] 
**AdjustedPocPrice** | **double** | Adjusted previous official closing price as decimal | [optional] 
**LuldTier** | **int** | LULD tier as byte value | [optional] 
**LuldTierCode** | **string** | LULD tier as numeric string | [optional] 
**LuldTierText** | **string** | Human-readable description of the LULD tier | [optional] 
**IsLuldTierNotApplicable** | **bool** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). | [optional] 
**IsLuldTier1** | **bool** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). | [optional] 
**IsLuldTier2** | **bool** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

