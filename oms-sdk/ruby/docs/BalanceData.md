# OpenapiClient::BalanceData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | symbol_exchange | [optional] 
**symbol_exchange** | **String** | Currency code. | [optional] 
**symbol_coinapi** | **String** | CoinAPI currency code. | [optional] 
**balance** | **Float** | The current balance. | [optional] 
**available** | **Float** | The amount that is available to trade. | [optional] 
**locked** | **Float** | Blocked funds. | [optional] 
**update_origin** | **String** | Source of last modification.  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BalanceData.new(id: BTC,
                                 symbol_exchange: BTC,
                                 symbol_coinapi: BTC,
                                 balance: 0.00134444,
                                 available: 0.00134444,
                                 locked: 0.0,
                                 update_origin: EXCHANGE)
```


