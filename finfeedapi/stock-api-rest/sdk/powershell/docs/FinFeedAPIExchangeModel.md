# FinFeedAPIExchangeModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExchangeId** | **String** |  | [optional] 
**LastDatapointDate** | **String** |  | [optional] 
**Mic** | **String** |  | [optional] 
**OperatingMic** | **String** |  | [optional] 
**OprtSgmt** | **String** |  | [optional] 
**MarketNameInstitutionDescription** | **String** |  | [optional] 
**LegalEntityName** | **String** |  | [optional] 
**Lei** | **String** |  | [optional] 
**MarketCategoryCode** | **String** |  | [optional] 
**Acronym** | **String** |  | [optional] 
**IsoCountryCode** | **String** |  | [optional] 
**City** | **String** |  | [optional] 
**Website** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**CreationDate** | **System.DateTime** |  | [optional] 
**LastUpdateDate** | **System.DateTime** |  | [optional] 
**LastValidationDate** | **System.DateTime** |  | [optional] 
**ExpiryDate** | **System.DateTime** |  | [optional] 
**Comments** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FinFeedAPIExchangeModel = Initialize-PSOpenAPIToolsFinFeedAPIExchangeModel  -ExchangeId null `
 -LastDatapointDate null `
 -Mic null `
 -OperatingMic null `
 -OprtSgmt null `
 -MarketNameInstitutionDescription null `
 -LegalEntityName null `
 -Lei null `
 -MarketCategoryCode null `
 -Acronym null `
 -IsoCountryCode null `
 -City null `
 -Website null `
 -Status null `
 -CreationDate null `
 -LastUpdateDate null `
 -LastValidationDate null `
 -ExpiryDate null `
 -Comments null
```

- Convert the resource to JSON
```powershell
$FinFeedAPIExchangeModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

