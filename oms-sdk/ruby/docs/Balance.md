# OpenapiClient::Balance

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Result type. | [optional] 
**exchange_name** | **String** | Exchange name. | [optional] 
**data** | [**Array&lt;BalanceData&gt;**](BalanceData.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Balance.new(type: snapshotBalances,
                                 exchange_name: KRAKEN,
                                 data: null)
```


