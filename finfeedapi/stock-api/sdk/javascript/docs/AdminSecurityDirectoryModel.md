# RestApi.AdminSecurityDirectoryModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **Number** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **Date** | Time when the security directory information was recorded as DateTime | [optional] 
**flags** | **Number** | Flags for the security | [optional] 
**roundLotSize** | **Number** | Number of shares that represent a round lot | [optional] 
**adjustedPocPrice** | **Number** | Adjusted previous official closing price as decimal | [optional] 
**luldTier** | **Number** | LULD tier as byte value | [optional] 
**luldTierCode** | **String** | LULD tier as numeric string | [optional] 
**luldTierText** | **String** | Human-readable description of the LULD tier | [optional] 
**isLuldTierNotApplicable** | **Boolean** | Indicates if LULD Tier is &#39;Not applicable&#39; (0x0). | [optional] 
**isLuldTier1** | **Boolean** | Indicates if LULD Tier is &#39;Tier 1 NMS Stock&#39; (0x1). | [optional] 
**isLuldTier2** | **Boolean** | Indicates if LULD Tier is &#39;Tier 2 NMS Stock&#39; (0x2). | [optional] 


