# OpenapiClient::CancelOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exchange_id** | **String** | Exchange name | [optional] 
**exchange_order_id** | **String** | Order Id | [optional] 
**client_order_id** | **String** | Client order Id | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CancelOrder.new(exchange_id: KRAKEN,
                                 exchange_order_id: d8574207d9e3b16a4a5511753eeef1751,
                                 client_order_id: A12345)
```


