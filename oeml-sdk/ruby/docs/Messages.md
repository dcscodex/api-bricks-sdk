# OpenapiClient::Messages

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of message | [optional] 
**exchange_id** | **String** | Exchange name | [optional] 
**message** | **String** | Message | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Messages.new(type: message,
                                 exchange_id: KRAKEN,
                                 message: Ok)
```


