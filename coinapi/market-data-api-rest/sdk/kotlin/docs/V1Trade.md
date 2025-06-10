
# V1Trade

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbolId** | **kotlin.String** | The symbol identifier. |  [optional] |
| **timeExchange** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The time of trade reported by the exchange. |  [optional] |
| **timeCoinapi** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | The time when the trade was received by CoinAPI. |  [optional] |
| **uuid** | [**java.util.UUID**](java.util.UUID.md) | The unique identifier for the trade. |  [optional] |
| **price** | **kotlin.Double** | The price of the transaction. |  [optional] |
| **propertySize** | **kotlin.Double** | The base asset amount traded in the transaction. |  [optional] |
| **takerSide** | **kotlin.String** | The aggressor side of the transaction (BUY/SELL/BUY_ESTIMATED/SELL_ESTIMATED/UNKNOWN). |  [optional] |
| **idTrade** | **kotlin.String** | The trade identifier. |  [optional] |
| **idOrderMaker** | **kotlin.String** | The order maker identifier. |  [optional] |
| **idOrderTaker** | **kotlin.String** | The order taker identifier. |  [optional] |



