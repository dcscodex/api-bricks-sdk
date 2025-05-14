# AdminAuctionInformationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the auction data was recorded as DateTime | [optional] 
**AuctionType** | **Int32** | Type of auction as byte value | [optional] 
**AuctionTypeCode** | **String** | Type of auction as character string | [optional] 
**AuctionTypeText** | **String** | Human-readable description of the auction type | [optional] 
**IsAuctionTypeOpening** | **Boolean** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsAuctionTypeClosing** | **Boolean** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] 
**IsAuctionTypeIpo** | **Boolean** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] 
**IsAuctionTypeHalt** | **Boolean** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] 
**IsAuctionTypeVolatility** | **Boolean** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] 
**PairedShares** | **Int32** | Number of shares paired at the Reference Price | [optional] 
**ReferencePrice** | **Double** | Reference price as decimal | [optional] 
**IndicativeClearingPrice** | **Double** | Indicative clearing price as decimal | [optional] 
**ImbalanceShares** | **Int32** | Number of unpaired shares at the Reference Price | [optional] 
**ImbalanceSide** | **Int32** | Side of the imbalance as byte value | [optional] 
**ImbalanceSideCode** | **String** | Side of the imbalance as character string | [optional] 
**ImbalanceSideText** | **String** | Human-readable description of the imbalance side | [optional] 
**IsImbalanceSideBuy** | **Boolean** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] 
**IsImbalanceSideSell** | **Boolean** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] 
**IsImbalanceSideNone** | **Boolean** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] 
**ExtensionNumber** | **Int32** | Number of extensions to the auction | [optional] 
**ScheduledAuctionTimeSeconds** | **Int32** | Scheduled auction time in seconds since epoch | [optional] 
**ScheduledAuctionTime** | **System.DateTime** | Scheduled time for the auction as DateTime | [optional] 
**AuctionBookClearingPrice** | **Double** | Auction book clearing price as decimal | [optional] 
**CollarReferencePrice** | **Double** | Collar reference price as decimal | [optional] 
**LowerAuctionCollar** | **Double** | Lower auction collar as decimal | [optional] 
**UpperAuctionCollar** | **Double** | Upper auction collar as decimal | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminAuctionInformationModel = Initialize-PSOpenAPIToolsAdminAuctionInformationModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -AuctionType null `
 -AuctionTypeCode null `
 -AuctionTypeText null `
 -IsAuctionTypeOpening null `
 -IsAuctionTypeClosing null `
 -IsAuctionTypeIpo null `
 -IsAuctionTypeHalt null `
 -IsAuctionTypeVolatility null `
 -PairedShares null `
 -ReferencePrice null `
 -IndicativeClearingPrice null `
 -ImbalanceShares null `
 -ImbalanceSide null `
 -ImbalanceSideCode null `
 -ImbalanceSideText null `
 -IsImbalanceSideBuy null `
 -IsImbalanceSideSell null `
 -IsImbalanceSideNone null `
 -ExtensionNumber null `
 -ScheduledAuctionTimeSeconds null `
 -ScheduledAuctionTime null `
 -AuctionBookClearingPrice null `
 -CollarReferencePrice null `
 -LowerAuctionCollar null `
 -UpperAuctionCollar null
```

- Convert the resource to JSON
```powershell
$AdminAuctionInformationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

