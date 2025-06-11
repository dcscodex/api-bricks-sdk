# FinFeedApiStockRestApi.AdminAuctionInformationModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **Number** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **Date** | Time when the auction data was recorded as DateTime | [optional] 
**auctionType** | **Number** | Type of auction as byte value | [optional] 
**auctionTypeCode** | **String** | Type of auction as character string | [optional] 
**auctionTypeText** | **String** | Human-readable description of the auction type | [optional] 
**isAuctionTypeOpening** | **Boolean** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] 
**isAuctionTypeClosing** | **Boolean** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] 
**isAuctionTypeIpo** | **Boolean** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] 
**isAuctionTypeHalt** | **Boolean** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] 
**isAuctionTypeVolatility** | **Boolean** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] 
**pairedShares** | **Number** | Number of shares paired at the Reference Price | [optional] 
**referencePrice** | **Number** | Reference price as decimal | [optional] 
**indicativeClearingPrice** | **Number** | Indicative clearing price as decimal | [optional] 
**imbalanceShares** | **Number** | Number of unpaired shares at the Reference Price | [optional] 
**imbalanceSide** | **Number** | Side of the imbalance as byte value | [optional] 
**imbalanceSideCode** | **String** | Side of the imbalance as character string | [optional] 
**imbalanceSideText** | **String** | Human-readable description of the imbalance side | [optional] 
**isImbalanceSideBuy** | **Boolean** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] 
**isImbalanceSideSell** | **Boolean** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] 
**isImbalanceSideNone** | **Boolean** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] 
**extensionNumber** | **Number** | Number of extensions to the auction | [optional] 
**scheduledAuctionTimeSeconds** | **Number** | Scheduled auction time in seconds since epoch | [optional] 
**scheduledAuctionTime** | **Date** | Scheduled time for the auction as DateTime | [optional] 
**auctionBookClearingPrice** | **Number** | Auction book clearing price as decimal | [optional] 
**collarReferencePrice** | **Number** | Collar reference price as decimal | [optional] 
**lowerAuctionCollar** | **Number** | Lower auction collar as decimal | [optional] 
**upperAuctionCollar** | **Number** | Upper auction collar as decimal | [optional] 


