# ADMIN_SECURITY_DIRECTORY_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the security directory information was recorded as DateTime | [optional] [default to null]
**flags** | **INTEGER_32** | Flags for the security | [optional] [default to null]
**round_lot_size** | **INTEGER_32** | Number of shares that represent a round lot | [optional] [default to null]
**adjusted_poc_price** | **REAL_64** | Adjusted previous official closing price as decimal | [optional] [default to null]
**luld_tier** | **INTEGER_32** | LULD tier as byte value | [optional] [default to null]
**luld_tier_code** | [**STRING_32**](STRING_32.md) | LULD tier as numeric string | [optional] [default to null]
**luld_tier_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the LULD tier | [optional] [default to null]
**is_luld_tier_not_applicable** | **BOOLEAN** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). | [optional] [default to null]
**is_luld_tier1** | **BOOLEAN** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). | [optional] [default to null]
**is_luld_tier2** | **BOOLEAN** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


