# OpenapiClient::AdminSecurityDirectoryModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the security directory information was recorded as DateTime | [optional] |
| **flags** | **Integer** | Flags for the security | [optional] |
| **round_lot_size** | **Integer** | Number of shares that represent a round lot | [optional] |
| **adjusted_poc_price** | **Float** | Adjusted previous official closing price as decimal | [optional] |
| **luld_tier** | **Integer** | LULD tier as byte value | [optional] |
| **luld_tier_code** | **String** | LULD tier as numeric string | [optional] |
| **luld_tier_text** | **String** | Human-readable description of the LULD tier | [optional] |
| **is_luld_tier_not_applicable** | **Boolean** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). | [optional] |
| **is_luld_tier1** | **Boolean** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). | [optional] |
| **is_luld_tier2** | **Boolean** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminSecurityDirectoryModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  flags: null,
  round_lot_size: null,
  adjusted_poc_price: null,
  luld_tier: null,
  luld_tier_code: null,
  luld_tier_text: null,
  is_luld_tier_not_applicable: null,
  is_luld_tier1: null,
  is_luld_tier2: null
)
```

