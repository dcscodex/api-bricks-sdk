# OpenapiClient::Order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | null | [optional] 
**exchange_name** | **String** | Exchange name | [optional] 
**data** | [**Array&lt;OrderData&gt;**](OrderData.md) | Orders array | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Order.new(type: snapshotOrders,
                                 exchange_name: KRAKEN,
                                 data: null)
```


