

# Level3ExecutedOrderModel

Represents the response DTO for order executed information

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**symbol** | **String** | The stock symbol |  [optional] |
|**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional] |
|**timestamp** | **OffsetDateTime** | Time when the order was executed as DateTime |  [optional] |
|**orderIdReference** | **Long** | Order identifier reference |  [optional] |
|**saleConditionFlags** | **Integer** | Sale condition flags for the execution as byte value |  [optional] |
|**isIntermarketSweep** | **Boolean** | Bit 7 (Mask 0x80): Intermarket Sweep Flag  True: Intermarket Sweep Order (\&quot;ISO\&quot;)  False: Non-Intermarket Sweep Order |  [optional] |
|**isExtendedHoursTrade** | **Boolean** | Bit 6 (Mask 0x40): Extended Hours Flag  True: Extended Hours Trade (i.e., Form T sale condition)  False: Regular Market Session Trade |  [optional] |
|**isOddLotTrade** | **Boolean** | Bit 5 (Mask 0x20): Odd Lot Flag  True: Odd Lot Trade  False: Round or Mixed Lot Trade |  [optional] |
|**isTradeThroughExempt** | **Boolean** | Bit 4 (Mask 0x10): Trade Through Exempt Flag  True: Trade is not subject to Rule 611 (Trade Through) of SEC Reg. NMS  False: Trade is subject to Rule 611 (Trade Through) of SEC Reg. NMS |  [optional] |
|**isSinglePriceCrossTrade** | **Boolean** | Bit 3 (Mask 0x08): Single-price Cross Trade Flag  True: Trade resulting from a single-price cross  False: Execution during continuous trading |  [optional] |
|**size** | **Integer** | Trade volume in number of shares |  [optional] |
|**price** | **Double** | Execution price as decimal |  [optional] |
|**tradeId** | **Long** | IEX trade identifier |  [optional] |



