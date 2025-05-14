# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.AdminAuctionInformationModel
Represents the response DTO for auction information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the auction data was recorded as DateTime | [optional] 
**AuctionType** | **int** | Type of auction as byte value | [optional] 
**AuctionTypeCode** | **string** | Type of auction as character string | [optional] 
**AuctionTypeText** | **string** | Human-readable description of the auction type | [optional] 
**IsAuctionTypeOpening** | **bool** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsAuctionTypeClosing** | **bool** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] 
**IsAuctionTypeIpo** | **bool** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] 
**IsAuctionTypeHalt** | **bool** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] 
**IsAuctionTypeVolatility** | **bool** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] 
**PairedShares** | **int** | Number of shares paired at the Reference Price | [optional] 
**ReferencePrice** | **double** | Reference price as decimal | [optional] 
**IndicativeClearingPrice** | **double** | Indicative clearing price as decimal | [optional] 
**ImbalanceShares** | **int** | Number of unpaired shares at the Reference Price | [optional] 
**ImbalanceSide** | **int** | Side of the imbalance as byte value | [optional] 
**ImbalanceSideCode** | **string** | Side of the imbalance as character string | [optional] 
**ImbalanceSideText** | **string** | Human-readable description of the imbalance side | [optional] 
**IsImbalanceSideBuy** | **bool** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] 
**IsImbalanceSideSell** | **bool** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] 
**IsImbalanceSideNone** | **bool** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] 
**ExtensionNumber** | **int** | Number of extensions to the auction | [optional] 
**ScheduledAuctionTimeSeconds** | **int** | Scheduled auction time in seconds since epoch | [optional] 
**ScheduledAuctionTime** | **DateTime** | Scheduled time for the auction as DateTime | [optional] 
**AuctionBookClearingPrice** | **double** | Auction book clearing price as decimal | [optional] 
**CollarReferencePrice** | **double** | Collar reference price as decimal | [optional] 
**LowerAuctionCollar** | **double** | Lower auction collar as decimal | [optional] 
**UpperAuctionCollar** | **double** | Upper auction collar as decimal | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

