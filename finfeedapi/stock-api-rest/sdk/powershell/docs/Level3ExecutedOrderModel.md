# Level3ExecutedOrderModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **String** | The stock symbol | [optional] 
**TimestampNanos** | **Int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **System.DateTime** | Time when the order was executed as DateTime | [optional] 
**OrderIdReference** | **Int64** | Order identifier reference | [optional] 
**SaleConditionFlags** | **Int32** | Sale condition flags for the execution as byte value | [optional] 
**IsIntermarketSweep** | **Boolean** | Bit 7 (Mask 0x80): Intermarket Sweep Flag True: Intermarket Sweep Order (&quot;&quot;ISO&quot;&quot;) False: Non-Intermarket Sweep Order | [optional] 
**IsExtendedHoursTrade** | **Boolean** | Bit 6 (Mask 0x40): Extended Hours Flag True: Extended Hours Trade (i.e., Form T sale condition) False: Regular Market Session Trade | [optional] 
**IsOddLotTrade** | **Boolean** | Bit 5 (Mask 0x20): Odd Lot Flag True: Odd Lot Trade False: Round or Mixed Lot Trade | [optional] 
**IsTradeThroughExempt** | **Boolean** | Bit 4 (Mask 0x10): Trade Through Exempt Flag True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS | [optional] 
**IsSinglePriceCrossTrade** | **Boolean** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag True: Trade resulting from a single-price cross False: Execution during continuous trading | [optional] 
**Size** | **Int32** | Trade volume in number of shares | [optional] 
**Price** | **Double** | Execution price as decimal | [optional] 
**TradeId** | **Int64** | IEX trade identifier | [optional] 

## Examples

- Prepare the resource
```powershell
$Level3ExecutedOrderModel = Initialize-PSOpenAPIToolsLevel3ExecutedOrderModel  -Symbol null `
 -TimestampNanos null `
 -Timestamp null `
 -OrderIdReference null `
 -SaleConditionFlags null `
 -IsIntermarketSweep null `
 -IsExtendedHoursTrade null `
 -IsOddLotTrade null `
 -IsTradeThroughExempt null `
 -IsSinglePriceCrossTrade null `
 -Size null `
 -Price null `
 -TradeId null
```

- Convert the resource to JSON
```powershell
$Level3ExecutedOrderModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

