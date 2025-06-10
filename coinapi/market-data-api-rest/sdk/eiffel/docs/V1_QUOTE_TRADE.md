# V1_QUOTE_TRADE

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol_id** | [**STRING_32**](STRING_32.md) | The symbol identifier. | [optional] [default to null]
**time_exchange** | [**DATE_TIME**](DATE_TIME.md) | The exchange time of the quote trade. | [optional] [default to null]
**time_coinapi** | [**DATE_TIME**](DATE_TIME.md) | The CoinAPI time when the quote trade was received. | [optional] [default to null]
**ask_price** | **REAL_64** | The best asking price. | [optional] [default to null]
**ask_size** | **REAL_64** | The volume resting on the best ask. If the value is equal to zero, then the size is unknown. | [optional] [default to null]
**bid_price** | **REAL_64** | The best bidding price. | [optional] [default to null]
**bid_size** | **REAL_64** | The volume resting on the best bid. If the value is equal to zero, then the size is unknown. | [optional] [default to null]
**last_trade** | [**V1_LAST_TRADE**](v1.LastTrade.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


