

# Level3AddOrderModel

Represents the response DTO for add order information

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**symbol** | **String** | The stock symbol |  [optional] |
|**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional] |
|**timestamp** | **OffsetDateTime** | Time when the order was added as DateTime (UTC) |  [optional] |
|**isSideBuy** | **Boolean** | Indicates if this is a Buy order (&#39;8&#39;/0x38). |  [optional] |
|**size** | **Integer** | Quoted size in number of shares |  [optional] |
|**price** | **Double** | Price as decimal |  [optional] |
|**orderId** | **Long** | Order identifier |  [optional] |



