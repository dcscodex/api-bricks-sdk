# openapi::AdminAuctionInformationModel

Represents the response DTO for auction information

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **character** | The stock symbol | [optional] 
**timestamp_nanos** | **integer** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **character** | Time when the auction data was recorded as DateTime | [optional] 
**auction_type** | **integer** | Type of auction as byte value | [optional] 
**auction_type_code** | **character** | Type of auction as character string | [optional] 
**auction_type_text** | **character** | Human-readable description of the auction type | [optional] 
**is_auction_type_opening** | **character** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] 
**is_auction_type_closing** | **character** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] 
**is_auction_type_ipo** | **character** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] 
**is_auction_type_halt** | **character** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] 
**is_auction_type_volatility** | **character** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] 
**paired_shares** | **integer** | Number of shares paired at the Reference Price | [optional] 
**reference_price** | **numeric** | Reference price as decimal | [optional] 
**indicative_clearing_price** | **numeric** | Indicative clearing price as decimal | [optional] 
**imbalance_shares** | **integer** | Number of unpaired shares at the Reference Price | [optional] 
**imbalance_side** | **integer** | Side of the imbalance as byte value | [optional] 
**imbalance_side_code** | **character** | Side of the imbalance as character string | [optional] 
**imbalance_side_text** | **character** | Human-readable description of the imbalance side | [optional] 
**is_imbalance_side_buy** | **character** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] 
**is_imbalance_side_sell** | **character** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] 
**is_imbalance_side_none** | **character** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] 
**extension_number** | **integer** | Number of extensions to the auction | [optional] 
**scheduled_auction_time_seconds** | **integer** | Scheduled auction time in seconds since epoch | [optional] 
**scheduled_auction_time** | **character** | Scheduled time for the auction as DateTime | [optional] 
**auction_book_clearing_price** | **numeric** | Auction book clearing price as decimal | [optional] 
**collar_reference_price** | **numeric** | Collar reference price as decimal | [optional] 
**lower_auction_collar** | **numeric** | Lower auction collar as decimal | [optional] 
**upper_auction_collar** | **numeric** | Upper auction collar as decimal | [optional] 


