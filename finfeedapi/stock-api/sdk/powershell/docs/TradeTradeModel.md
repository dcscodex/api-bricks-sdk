# TradeTradeModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsTradeBreak** | **Boolean** | Indicates if this record represents a trade break (true) or a trade report (false). | [optional] 
**Symbol** | **String** | The stock symbol. | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch. | [optional] 
**Timestamp** | **System.DateTime** | Time when the event was recorded as DateTime (UTC). | [optional] 
**Size** | **Int32** | Trade volume (or break volume) in number of shares. | [optional] 
**Price** | **Double** | Trade price (or break price) as decimal. | [optional] 
**TradeId** | **Int64** | IEX trade identifier (same for report and its corresponding break). | [optional] 
**IsIntermarketSweep** | **Boolean** | Bit 7 (Mask 0x80): Intermarket Sweep Flag.  True: Intermarket Sweep Order (&quot;&quot;ISO&quot;&quot;).  False: Non-Intermarket Sweep Order. | [optional] 
**IsExtendedHoursTrade** | **Boolean** | Bit 6 (Mask 0x40): Extended Hours Flag.  True: Extended Hours Trade (i.e., Form T sale condition).  False: Regular Market Session Trade. | [optional] 
**IsOddLotTrade** | **Boolean** | Bit 5 (Mask 0x20): Odd Lot Flag.  True: Odd Lot Trade.  False: Round or Mixed Lot Trade. | [optional] 
**IsTradeThroughExempt** | **Boolean** | Bit 4 (Mask 0x10): Trade Through Exempt Flag.  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS.  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS.  Applied when the taking order was an ISO that traded through a protected quotation,  OR the NBBO was crossed at the time of the trade,  OR the trade occurred through a self-helped venue&#39;s quotation,  OR the trade was a single-price cross. | [optional] 
**IsSinglePriceCrossTrade** | **Boolean** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag.  True: Trade resulting from a single-price cross.  False: Execution during continuous trading. | [optional] 

## Examples

- Prepare the resource
```powershell
$TradeTradeModel = Initialize-PSOpenAPIToolsTradeTradeModel  -IsTradeBreak null `
 -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -Size null `
 -Price null `
 -TradeId null `
 -IsIntermarketSweep null `
 -IsExtendedHoursTrade null `
 -IsOddLotTrade null `
 -IsTradeThroughExempt null `
 -IsSinglePriceCrossTrade null
```

- Convert the resource to JSON
```powershell
$TradeTradeModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

