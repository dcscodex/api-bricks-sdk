# # AdminSecurityDirectoryModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **string** | The stock symbol | [optional]
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional]
**timestamp** | **\DateTime** | Time when the security directory information was recorded as DateTime | [optional]
**flags** | **int** | Flags for the security | [optional]
**round_lot_size** | **int** | Number of shares that represent a round lot | [optional]
**adjusted_poc_price** | **float** | Adjusted previous official closing price as decimal | [optional]
**luld_tier** | **int** | LULD tier as byte value | [optional]
**luld_tier_code** | **string** | LULD tier as numeric string | [optional]
**luld_tier_text** | **string** | Human-readable description of the LULD tier | [optional]
**is_luld_tier_not_applicable** | **bool** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). | [optional]
**is_luld_tier1** | **bool** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). | [optional]
**is_luld_tier2** | **bool** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
