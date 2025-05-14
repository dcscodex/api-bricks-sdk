# openapi.model.AdminAuctionInformationModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the auction data was recorded as DateTime | [optional] 
**auctionType** | **int** | Type of auction as byte value | [optional] 
**auctionTypeCode** | **String** | Type of auction as character string | [optional] 
**auctionTypeText** | **String** | Human-readable description of the auction type | [optional] 
**isAuctionTypeOpening** | **bool** | Indicates if the auction type is 'Opening Auction' ('O'/0x4f). | [optional] 
**isAuctionTypeClosing** | **bool** | Indicates if the auction type is 'Closing Auction' ('C'/0x43). | [optional] 
**isAuctionTypeIpo** | **bool** | Indicates if the auction type is 'IPO Auction' ('I'/0x49). | [optional] 
**isAuctionTypeHalt** | **bool** | Indicates if the auction type is 'Halt Auction' ('H'/0x48). | [optional] 
**isAuctionTypeVolatility** | **bool** | Indicates if the auction type is 'Volatility Auction' ('V'/0x56). | [optional] 
**pairedShares** | **int** | Number of shares paired at the Reference Price | [optional] 
**referencePrice** | **double** | Reference price as decimal | [optional] 
**indicativeClearingPrice** | **double** | Indicative clearing price as decimal | [optional] 
**imbalanceShares** | **int** | Number of unpaired shares at the Reference Price | [optional] 
**imbalanceSide** | **int** | Side of the imbalance as byte value | [optional] 
**imbalanceSideCode** | **String** | Side of the imbalance as character string | [optional] 
**imbalanceSideText** | **String** | Human-readable description of the imbalance side | [optional] 
**isImbalanceSideBuy** | **bool** | Indicates if there is a buy-side imbalance ('B'/0x42). | [optional] 
**isImbalanceSideSell** | **bool** | Indicates if there is a sell-side imbalance ('S'/0x53). | [optional] 
**isImbalanceSideNone** | **bool** | Indicates if there is no imbalance ('N'/0x4e). | [optional] 
**extensionNumber** | **int** | Number of extensions to the auction | [optional] 
**scheduledAuctionTimeSeconds** | **int** | Scheduled auction time in seconds since epoch | [optional] 
**scheduledAuctionTime** | [**DateTime**](DateTime.md) | Scheduled time for the auction as DateTime | [optional] 
**auctionBookClearingPrice** | **double** | Auction book clearing price as decimal | [optional] 
**collarReferencePrice** | **double** | Collar reference price as decimal | [optional] 
**lowerAuctionCollar** | **double** | Lower auction collar as decimal | [optional] 
**upperAuctionCollar** | **double** | Upper auction collar as decimal | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


