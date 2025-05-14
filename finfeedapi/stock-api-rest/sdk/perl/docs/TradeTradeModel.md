# WWW::OpenAPIClient::Object::TradeTradeModel

## Load the model package
```perl
use WWW::OpenAPIClient::Object::TradeTradeModel;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_trade_break** | **boolean** | Indicates if this record represents a trade break (true) or a trade report (false). | [optional] 
**symbol** | **string** | The stock symbol. | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch. | [optional] 
**timestamp** | **DATE_TIME** | Time when the event was recorded as DateTime (UTC). | [optional] 
**size** | **int** | Trade volume (or break volume) in number of shares. | [optional] 
**price** | **double** | Trade price (or break price) as decimal. | [optional] 
**trade_id** | **int** | IEX trade identifier (same for report and its corresponding break). | [optional] 
**is_intermarket_sweep** | **boolean** | Bit 7 (Mask 0x80): Intermarket Sweep Flag.  True: Intermarket Sweep Order (\&quot;ISO\&quot;).  False: Non-Intermarket Sweep Order. | [optional] 
**is_extended_hours_trade** | **boolean** | Bit 6 (Mask 0x40): Extended Hours Flag.  True: Extended Hours Trade (i.e., Form T sale condition).  False: Regular Market Session Trade. | [optional] 
**is_odd_lot_trade** | **boolean** | Bit 5 (Mask 0x20): Odd Lot Flag.  True: Odd Lot Trade.  False: Round or Mixed Lot Trade. | [optional] 
**is_trade_through_exempt** | **boolean** | Bit 4 (Mask 0x10): Trade Through Exempt Flag.  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS.  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS.  Applied when the taking order was an ISO that traded through a protected quotation,  OR the NBBO was crossed at the time of the trade,  OR the trade occurred through a self-helped venue&#39;s quotation,  OR the trade was a single-price cross. | [optional] 
**is_single_price_cross_trade** | **boolean** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag.  True: Trade resulting from a single-price cross.  False: Execution during continuous trading. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


