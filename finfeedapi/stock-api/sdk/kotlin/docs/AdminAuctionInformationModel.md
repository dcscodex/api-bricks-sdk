
# AdminAuctionInformationModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the auction data was recorded as DateTime |  [optional] |
| **auctionType** | **kotlin.Int** | Type of auction as byte value |  [optional] |
| **auctionTypeCode** | **kotlin.String** | Type of auction as character string |  [optional] |
| **auctionTypeText** | **kotlin.String** | Human-readable description of the auction type |  [optional] |
| **isAuctionTypeOpening** | **kotlin.Boolean** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). |  [optional] |
| **isAuctionTypeClosing** | **kotlin.Boolean** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). |  [optional] |
| **isAuctionTypeIpo** | **kotlin.Boolean** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). |  [optional] |
| **isAuctionTypeHalt** | **kotlin.Boolean** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). |  [optional] |
| **isAuctionTypeVolatility** | **kotlin.Boolean** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). |  [optional] |
| **pairedShares** | **kotlin.Int** | Number of shares paired at the Reference Price |  [optional] |
| **referencePrice** | **kotlin.Double** | Reference price as decimal |  [optional] |
| **indicativeClearingPrice** | **kotlin.Double** | Indicative clearing price as decimal |  [optional] |
| **imbalanceShares** | **kotlin.Int** | Number of unpaired shares at the Reference Price |  [optional] |
| **imbalanceSide** | **kotlin.Int** | Side of the imbalance as byte value |  [optional] |
| **imbalanceSideCode** | **kotlin.String** | Side of the imbalance as character string |  [optional] |
| **imbalanceSideText** | **kotlin.String** | Human-readable description of the imbalance side |  [optional] |
| **isImbalanceSideBuy** | **kotlin.Boolean** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). |  [optional] |
| **isImbalanceSideSell** | **kotlin.Boolean** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). |  [optional] |
| **isImbalanceSideNone** | **kotlin.Boolean** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). |  [optional] |
| **extensionNumber** | **kotlin.Int** | Number of extensions to the auction |  [optional] |
| **scheduledAuctionTimeSeconds** | **kotlin.Int** | Scheduled auction time in seconds since epoch |  [optional] |
| **scheduledAuctionTime** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Scheduled time for the auction as DateTime |  [optional] |
| **auctionBookClearingPrice** | **kotlin.Double** | Auction book clearing price as decimal |  [optional] |
| **collarReferencePrice** | **kotlin.Double** | Collar reference price as decimal |  [optional] |
| **lowerAuctionCollar** | **kotlin.Double** | Lower auction collar as decimal |  [optional] |
| **upperAuctionCollar** | **kotlin.Double** | Upper auction collar as decimal |  [optional] |



