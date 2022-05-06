# OpenapiClient::AccountEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exchange_id** | **String** | Exchange identifier and optional tag identifying specific account configured when the software will be managing multiple accounts on the same exchange; for eg:  &lt;code&gt;BITSTAMP&lt;/code&gt; &lt;code&gt;BITSTAMP/7c177641-74bd-4dbe-9b01-2497c12a5f70&#x60;&lt;/code&gt; &lt;code&gt;BITSTAMP/2574&lt;/code&gt; Allowed separators between the exchange identifier and the tag: &lt;code&gt;~/.,:;\\!@#$%^&amp;*-_+&#x3D;.&lt;/code&gt;  | [optional] |
| **location_id** | **String** | Location identifier | [optional] |
| **endpoint_schema** | **String** | Endpoint schema | [optional] |
| **endpoint_host** | **String** | Endpoint host | [optional] |
| **endpoint_url** | **String** | Endpoint URL | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AccountEndpoint.new(
  exchange_id: KRAKEN,
  location_id: aws-us-east-2,
  endpoint_schema: https,
  endpoint_host: 1314.51253.51.ec2.eu-west-1.amazonaws.com,
  endpoint_url: https://1314.51253.51.ec2.eu-west-1.amazonaws.com/
)
```

