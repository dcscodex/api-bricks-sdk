# APIBricks.FinFeedAPI.STOCKAPI.REST.V1.Model.Level3ExecutedOrderModel
Represents the response DTO for order executed information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The stock symbol | [optional] 
**TimestampNanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | **DateTime** | Time when the order was executed as DateTime | [optional] 
**OrderIdReference** | **long** | Order identifier reference | [optional] 
**SaleConditionFlags** | **int** | Sale condition flags for the execution as byte value | [optional] 
**IsIntermarketSweep** | **bool** | Bit 7 (Mask 0x80): Intermarket Sweep Flag  True: Intermarket Sweep Order (\&quot;ISO\&quot;)  False: Non-Intermarket Sweep Order | [optional] 
**IsExtendedHoursTrade** | **bool** | Bit 6 (Mask 0x40): Extended Hours Flag  True: Extended Hours Trade (i.e., Form T sale condition)  False: Regular Market Session Trade | [optional] 
**IsOddLotTrade** | **bool** | Bit 5 (Mask 0x20): Odd Lot Flag  True: Odd Lot Trade  False: Round or Mixed Lot Trade | [optional] 
**IsTradeThroughExempt** | **bool** | Bit 4 (Mask 0x10): Trade Through Exempt Flag  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS | [optional] 
**IsSinglePriceCrossTrade** | **bool** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag  True: Trade resulting from a single-price cross  False: Execution during continuous trading | [optional] 
**Size** | **int** | Trade volume in number of shares | [optional] 
**Price** | **double** | Execution price as decimal | [optional] 
**TradeId** | **long** | IEX trade identifier | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

