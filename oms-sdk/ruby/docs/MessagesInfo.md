# OpenapiClient::MessagesInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of message | [optional] 
**exchange_id** | **String** | Exchange name | [optional] 
**error_message** | **String** | Error message | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::MessagesInfo.new(type: error,
                                 exchange_id: KRAKEN,
                                 error_message: Exchange not registered)
```


