# ADMIN_AUCTION_INFORMATION_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the auction data was recorded as DateTime | [optional] [default to null]
**auction_type** | **INTEGER_32** | Type of auction as byte value | [optional] [default to null]
**auction_type_code** | [**STRING_32**](STRING_32.md) | Type of auction as character string | [optional] [default to null]
**auction_type_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the auction type | [optional] [default to null]
**is_auction_type_opening** | **BOOLEAN** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] [default to null]
**is_auction_type_closing** | **BOOLEAN** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] [default to null]
**is_auction_type_ipo** | **BOOLEAN** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] [default to null]
**is_auction_type_halt** | **BOOLEAN** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] [default to null]
**is_auction_type_volatility** | **BOOLEAN** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] [default to null]
**paired_shares** | **INTEGER_32** | Number of shares paired at the Reference Price | [optional] [default to null]
**reference_price** | **REAL_64** | Reference price as decimal | [optional] [default to null]
**indicative_clearing_price** | **REAL_64** | Indicative clearing price as decimal | [optional] [default to null]
**imbalance_shares** | **INTEGER_32** | Number of unpaired shares at the Reference Price | [optional] [default to null]
**imbalance_side** | **INTEGER_32** | Side of the imbalance as byte value | [optional] [default to null]
**imbalance_side_code** | [**STRING_32**](STRING_32.md) | Side of the imbalance as character string | [optional] [default to null]
**imbalance_side_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the imbalance side | [optional] [default to null]
**is_imbalance_side_buy** | **BOOLEAN** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] [default to null]
**is_imbalance_side_sell** | **BOOLEAN** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] [default to null]
**is_imbalance_side_none** | **BOOLEAN** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] [default to null]
**extension_number** | **INTEGER_32** | Number of extensions to the auction | [optional] [default to null]
**scheduled_auction_time_seconds** | **INTEGER_32** | Scheduled auction time in seconds since epoch | [optional] [default to null]
**scheduled_auction_time** | [**DATE_TIME**](DATE_TIME.md) | Scheduled time for the auction as DateTime | [optional] [default to null]
**auction_book_clearing_price** | **REAL_64** | Auction book clearing price as decimal | [optional] [default to null]
**collar_reference_price** | **REAL_64** | Collar reference price as decimal | [optional] [default to null]
**lower_auction_collar** | **REAL_64** | Lower auction collar as decimal | [optional] [default to null]
**upper_auction_collar** | **REAL_64** | Upper auction collar as decimal | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


