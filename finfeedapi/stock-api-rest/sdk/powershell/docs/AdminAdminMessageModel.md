# AdminAdminMessageModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TradingStatus** | [**AdminTradingStatusModel**](AdminTradingStatusModel.md) |  | [optional] 
**OfficialPrice** | [**AdminOfficialPriceModel**](AdminOfficialPriceModel.md) |  | [optional] 
**SecurityEvent** | [**AdminSecurityEventModel**](AdminSecurityEventModel.md) |  | [optional] 
**AuctionInformation** | [**AdminAuctionInformationModel**](AdminAuctionInformationModel.md) |  | [optional] 
**ShortSalePriceTest** | [**AdminShortSalePriceTestStatusModel**](AdminShortSalePriceTestStatusModel.md) |  | [optional] 
**OperationalHaltStatus** | [**AdminOperationalHaltStatusModel**](AdminOperationalHaltStatusModel.md) |  | [optional] 
**RetailLiquidityIndicator** | [**AdminRetailLiquidityIndicatorModel**](AdminRetailLiquidityIndicatorModel.md) |  | [optional] 
**SystemEvent** | [**AdminSystemEventModel**](AdminSystemEventModel.md) |  | [optional] 
**SecurityDirectory** | [**AdminSecurityDirectoryModel**](AdminSecurityDirectoryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminAdminMessageModel = Initialize-PSOpenAPIToolsAdminAdminMessageModel  -TradingStatus null `
 -OfficialPrice null `
 -SecurityEvent null `
 -AuctionInformation null `
 -ShortSalePriceTest null `
 -OperationalHaltStatus null `
 -RetailLiquidityIndicator null `
 -SystemEvent null `
 -SecurityDirectory null
```

- Convert the resource to JSON
```powershell
$AdminAdminMessageModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

