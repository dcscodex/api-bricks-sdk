# openapi::AdminSecurityDirectoryModel

Represents the response DTO for security directory information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the security directory information was recorded as DateTime | [optional] 
**flags** | **integer** | Flags for the security | [optional] 
**round_lot_size** | **integer** | Number of shares that represent a round lot | [optional] 
**adjusted_poc_price** | **numeric** | Adjusted previous official closing price as decimal | [optional] 
**luld_tier** | **integer** | LULD tier as byte value | [optional] 
**luld_tier_code** | **character** | LULD tier as numeric string | [optional] 
**luld_tier_text** | **character** | Human-readable description of the LULD tier | [optional] 
**is_luld_tier_not_applicable** | **character** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). | [optional] 
**is_luld_tier1** | **character** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). | [optional] 
**is_luld_tier2** | **character** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). | [optional] 


