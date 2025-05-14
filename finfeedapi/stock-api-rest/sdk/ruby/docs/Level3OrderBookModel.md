# OpenapiClient::Level3OrderBookModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_order** | [**Level3AddOrderModel**](Level3AddOrderModel.md) |  | [optional] |
| **delete_order** | [**Level3DeleteOrderModel**](Level3DeleteOrderModel.md) |  | [optional] |
| **modify_order** | [**Level3ModifyOrderModel**](Level3ModifyOrderModel.md) |  | [optional] |
| **executed_order** | [**Level3ExecutedOrderModel**](Level3ExecutedOrderModel.md) |  | [optional] |
| **clear_book** | [**Level3ClearBookModel**](Level3ClearBookModel.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Level3OrderBookModel.new(
  add_order: null,
  delete_order: null,
  modify_order: null,
  executed_order: null,
  clear_book: null
)
```

