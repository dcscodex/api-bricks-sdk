# OpenapiClient::Position

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Result type. | [optional] 
**exchange_name** | **String** | Name of exchange. | [optional] 
**data** | [**Array&lt;PositionData&gt;**](PositionData.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Position.new(type: snapshotPositions,
                                 exchange_name: KRAKEN,
                                 data: null)
```


