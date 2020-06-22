# OpenapiClient::PositionData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique position ID | [optional] 
**symbol_exchange** | **String** | The contract for this position. | [optional] 
**symbol_coinapi** | **String** | The coinapi contract for this position. | [optional] 
**avg_entry_price** | **Float** |  | [optional] 
**quantity** | **Float** | The current position amount in contracts. | [optional] 
**is_buy** | **Boolean** |  | [optional] 
**unrealised_pn_l** | **Float** | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. | [optional] 
**leverage** | **Float** | 1 / initMarginReq. | [optional] 
**cross_margin** | **Boolean** | True/false depending on whether you set cross margin on this position. | [optional] 
**liquidation_price** | **Float** | Once markPrice reaches this price, this position will be liquidated. | [optional] 
**raw_data** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PositionData.new(id: 2873jkjhgdsd78ii,
                                 symbol_exchange: BTC,
                                 symbol_coinapi: BTC,
                                 avg_entry_price: 0.00134444,
                                 quantity: 0.00134444,
                                 is_buy: true,
                                 unrealised_pn_l: 0.0,
                                 leverage: 0.0,
                                 cross_margin: true,
                                 liquidation_price: 0.072323,
                                 raw_data: xyz)
```


