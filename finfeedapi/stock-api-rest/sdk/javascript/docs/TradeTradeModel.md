# FinFeedApiStockRestApi.TradeTradeModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isTradeBreak** | **Boolean** | Indicates if this record represents a trade break (true) or a trade report (false). | [optional] 
**symbol** | **String** | The stock symbol. | [optional] 
**timestampNanos** | **Number** | Original timestamp in nanoseconds since epoch. | [optional] 
**timestamp** | **Date** | Time when the event was recorded as DateTime (UTC). | [optional] 
**size** | **Number** | Trade volume (or break volume) in number of shares. | [optional] 
**price** | **Number** | Trade price (or break price) as decimal. | [optional] 
**tradeId** | **Number** | IEX trade identifier (same for report and its corresponding break). | [optional] 
**isIntermarketSweep** | **Boolean** | Bit 7 (Mask 0x80): Intermarket Sweep Flag. True: Intermarket Sweep Order (\&quot;ISO\&quot;). False: Non-Intermarket Sweep Order. | [optional] 
**isExtendedHoursTrade** | **Boolean** | Bit 6 (Mask 0x40): Extended Hours Flag. True: Extended Hours Trade (i.e., Form T sale condition). False: Regular Market Session Trade. | [optional] 
**isOddLotTrade** | **Boolean** | Bit 5 (Mask 0x20): Odd Lot Flag. True: Odd Lot Trade. False: Round or Mixed Lot Trade. | [optional] 
**isTradeThroughExempt** | **Boolean** | Bit 4 (Mask 0x10): Trade Through Exempt Flag. True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS. False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS. Applied when the taking order was an ISO that traded through a protected quotation, OR the NBBO was crossed at the time of the trade, OR the trade occurred through a self-helped venue&#39;s quotation, OR the trade was a single-price cross. | [optional] 
**isSinglePriceCrossTrade** | **Boolean** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag. True: Trade resulting from a single-price cross. False: Execution during continuous trading. | [optional] 


