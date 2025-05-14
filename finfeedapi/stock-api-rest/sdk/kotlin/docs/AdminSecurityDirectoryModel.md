
# AdminSecurityDirectoryModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the security directory information was recorded as DateTime |  [optional] |
| **flags** | **kotlin.Int** | Flags for the security |  [optional] |
| **roundLotSize** | **kotlin.Int** | Number of shares that represent a round lot |  [optional] |
| **adjustedPocPrice** | **kotlin.Double** | Adjusted previous official closing price as decimal |  [optional] |
| **luldTier** | **kotlin.Int** | LULD tier as byte value |  [optional] |
| **luldTierCode** | **kotlin.String** | LULD tier as numeric string |  [optional] |
| **luldTierText** | **kotlin.String** | Human-readable description of the LULD tier |  [optional] |
| **isLuldTierNotApplicable** | **kotlin.Boolean** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). |  [optional] |
| **isLuldTier1** | **kotlin.Boolean** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). |  [optional] |
| **isLuldTier2** | **kotlin.Boolean** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). |  [optional] |



