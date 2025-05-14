

# AdminSecurityDirectoryModel

Represents the response DTO for security directory information

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**symbol** | **String** | The stock symbol |  [optional] |
|**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional] |
|**timestamp** | **OffsetDateTime** | Time when the security directory information was recorded as DateTime |  [optional] |
|**flags** | **Integer** | Flags for the security |  [optional] |
|**roundLotSize** | **Integer** | Number of shares that represent a round lot |  [optional] |
|**adjustedPocPrice** | **Double** | Adjusted previous official closing price as decimal |  [optional] |
|**luldTier** | **Integer** | LULD tier as byte value |  [optional] |
|**luldTierCode** | **String** | LULD tier as numeric string |  [optional] |
|**luldTierText** | **String** | Human-readable description of the LULD tier |  [optional] |
|**isLuldTierNotApplicable** | **Boolean** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). |  [optional] |
|**isLuldTier1** | **Boolean** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). |  [optional] |
|**isLuldTier2** | **Boolean** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). |  [optional] |



