# OpenapiClient::GetAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  &lt;code&gt;BITSTAMP&lt;/code&gt; &lt;code&gt;BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70&#x60;&lt;/code&gt; &lt;code&gt;BITSTAMP/2574&lt;/code&gt; Allowed separators between the exchange identifier and the tag: &lt;code&gt;~/.,:;\\!@#$%^&amp;*-_+&#x3D;.&lt;/code&gt;  | [optional] |
| **parameters** | [**Array&lt;KeyValue&gt;**](KeyValue.md) | Exchange specific configuration parameters | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetAccount.new(
  exchange_id: null,
  parameters: null
)
```

