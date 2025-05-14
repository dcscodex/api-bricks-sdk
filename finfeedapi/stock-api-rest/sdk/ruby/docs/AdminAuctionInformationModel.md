# OpenapiClient::AdminAuctionInformationModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | The stock symbol | [optional] |
| **timestamp_nanos** | **Integer** | Original timestamp in nanoseconds since epoch | [optional] |
| **timestamp** | **Time** | Time when the auction data was recorded as DateTime | [optional] |
| **auction_type** | **Integer** | Type of auction as byte value | [optional] |
| **auction_type_code** | **String** | Type of auction as character string | [optional] |
| **auction_type_text** | **String** | Human-readable description of the auction type | [optional] |
| **is_auction_type_opening** | **Boolean** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] |
| **is_auction_type_closing** | **Boolean** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] |
| **is_auction_type_ipo** | **Boolean** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] |
| **is_auction_type_halt** | **Boolean** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] |
| **is_auction_type_volatility** | **Boolean** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] |
| **paired_shares** | **Integer** | Number of shares paired at the Reference Price | [optional] |
| **reference_price** | **Float** | Reference price as decimal | [optional] |
| **indicative_clearing_price** | **Float** | Indicative clearing price as decimal | [optional] |
| **imbalance_shares** | **Integer** | Number of unpaired shares at the Reference Price | [optional] |
| **imbalance_side** | **Integer** | Side of the imbalance as byte value | [optional] |
| **imbalance_side_code** | **String** | Side of the imbalance as character string | [optional] |
| **imbalance_side_text** | **String** | Human-readable description of the imbalance side | [optional] |
| **is_imbalance_side_buy** | **Boolean** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] |
| **is_imbalance_side_sell** | **Boolean** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] |
| **is_imbalance_side_none** | **Boolean** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] |
| **extension_number** | **Integer** | Number of extensions to the auction | [optional] |
| **scheduled_auction_time_seconds** | **Integer** | Scheduled auction time in seconds since epoch | [optional] |
| **scheduled_auction_time** | **Time** | Scheduled time for the auction as DateTime | [optional] |
| **auction_book_clearing_price** | **Float** | Auction book clearing price as decimal | [optional] |
| **collar_reference_price** | **Float** | Collar reference price as decimal | [optional] |
| **lower_auction_collar** | **Float** | Lower auction collar as decimal | [optional] |
| **upper_auction_collar** | **Float** | Upper auction collar as decimal | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AdminAuctionInformationModel.new(
  symbol: null,
  timestamp_nanos: null,
  timestamp: null,
  auction_type: null,
  auction_type_code: null,
  auction_type_text: null,
  is_auction_type_opening: null,
  is_auction_type_closing: null,
  is_auction_type_ipo: null,
  is_auction_type_halt: null,
  is_auction_type_volatility: null,
  paired_shares: null,
  reference_price: null,
  indicative_clearing_price: null,
  imbalance_shares: null,
  imbalance_side: null,
  imbalance_side_code: null,
  imbalance_side_text: null,
  is_imbalance_side_buy: null,
  is_imbalance_side_sell: null,
  is_imbalance_side_none: null,
  extension_number: null,
  scheduled_auction_time_seconds: null,
  scheduled_auction_time: null,
  auction_book_clearing_price: null,
  collar_reference_price: null,
  lower_auction_collar: null,
  upper_auction_collar: null
)
```

