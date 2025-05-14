# admin_auction_information_model_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **char \*** | The stock symbol | [optional] 
**timestamp_nanos** | **long** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **char \*** | Time when the auction data was recorded as DateTime | [optional] 
**auction_type** | **int** | Type of auction as byte value | [optional] 
**auction_type_code** | **char \*** | Type of auction as character string | [optional] 
**auction_type_text** | **char \*** | Human-readable description of the auction type | [optional] 
**is_auction_type_opening** | **int** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] 
**is_auction_type_closing** | **int** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] 
**is_auction_type_ipo** | **int** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] 
**is_auction_type_halt** | **int** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] 
**is_auction_type_volatility** | **int** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] 
**paired_shares** | **int** | Number of shares paired at the Reference Price | [optional] 
**reference_price** | **double** | Reference price as decimal | [optional] 
**indicative_clearing_price** | **double** | Indicative clearing price as decimal | [optional] 
**imbalance_shares** | **int** | Number of unpaired shares at the Reference Price | [optional] 
**imbalance_side** | **int** | Side of the imbalance as byte value | [optional] 
**imbalance_side_code** | **char \*** | Side of the imbalance as character string | [optional] 
**imbalance_side_text** | **char \*** | Human-readable description of the imbalance side | [optional] 
**is_imbalance_side_buy** | **int** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] 
**is_imbalance_side_sell** | **int** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] 
**is_imbalance_side_none** | **int** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] 
**extension_number** | **int** | Number of extensions to the auction | [optional] 
**scheduled_auction_time_seconds** | **int** | Scheduled auction time in seconds since epoch | [optional] 
**scheduled_auction_time** | **char \*** | Scheduled time for the auction as DateTime | [optional] 
**auction_book_clearing_price** | **double** | Auction book clearing price as decimal | [optional] 
**collar_reference_price** | **double** | Collar reference price as decimal | [optional] 
**lower_auction_collar** | **double** | Lower auction collar as decimal | [optional] 
**upper_auction_collar** | **double** | Upper auction collar as decimal | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


