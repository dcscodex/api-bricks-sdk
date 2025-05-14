

# Level3ModifyOrderModel

Represents the response DTO for order modify information

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**symbol** | **String** | The stock symbol |  [optional] |
|**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional] |
|**timestamp** | **OffsetDateTime** | Time when the order was modified as DateTime (UTC) |  [optional] |
|**orderIdReference** | **Long** | Order identifier reference |  [optional] |
|**isPriorityReset** | **Boolean** | Indicates if priority is reseted |  [optional] |
|**size** | **Integer** | New total quoted size in number of shares |  [optional] |
|**price** | **Double** | Price as decimal |  [optional] |



