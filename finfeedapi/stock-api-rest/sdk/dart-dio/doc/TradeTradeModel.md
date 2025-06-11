# openapi.model.TradeTradeModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isTradeBreak** | **bool** | Indicates if this record represents a trade break (true) or a trade report (false). | [optional] 
**symbol** | **String** | The stock symbol. | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch. | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the event was recorded as DateTime (UTC). | [optional] 
**size** | **int** | Trade volume (or break volume) in number of shares. | [optional] 
**price** | **double** | Trade price (or break price) as decimal. | [optional] 
**tradeId** | **int** | IEX trade identifier (same for report and its corresponding break). | [optional] 
**isIntermarketSweep** | **bool** | Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\"ISO\"). False: Non-Intermarket Sweep Order. | [optional] 
**isExtendedHoursTrade** | **bool** | Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade. | [optional] 
**isOddLotTrade** | **bool** | Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade. | [optional] 
**isTradeThroughExempt** | **bool** | Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue's quotation, OR the trade was a single-price cross. | [optional] 
**isSinglePriceCrossTrade** | **bool** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


