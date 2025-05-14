
# Level3ExecutedOrderModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the order was executed as DateTime |  [optional] |
| **orderIdReference** | **kotlin.Long** | Order identifier reference |  [optional] |
| **saleConditionFlags** | **kotlin.Int** | Sale condition flags for the execution as byte value |  [optional] |
| **isIntermarketSweep** | **kotlin.Boolean** | Bit 7 (Mask 0x80): Intermarket Sweep Flag  True: Intermarket Sweep Order (\&quot;ISO\&quot;)  False: Non-Intermarket Sweep Order |  [optional] |
| **isExtendedHoursTrade** | **kotlin.Boolean** | Bit 6 (Mask 0x40): Extended Hours Flag  True: Extended Hours Trade (i.e., Form T sale condition)  False: Regular Market Session Trade |  [optional] |
| **isOddLotTrade** | **kotlin.Boolean** | Bit 5 (Mask 0x20): Odd Lot Flag  True: Odd Lot Trade  False: Round or Mixed Lot Trade |  [optional] |
| **isTradeThroughExempt** | **kotlin.Boolean** | Bit 4 (Mask 0x10): Trade Through Exempt Flag  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS |  [optional] |
| **isSinglePriceCrossTrade** | **kotlin.Boolean** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag  True: Trade resulting from a single-price cross  False: Execution during continuous trading |  [optional] |
| **propertySize** | **kotlin.Int** | Trade volume in number of shares |  [optional] |
| **price** | **kotlin.Double** | Execution price as decimal |  [optional] |
| **tradeId** | **kotlin.Long** | IEX trade identifier |  [optional] |



