

# PriceLevelUpdateModel

Represents the response DTO for price level update information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol |  [optional]
**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional]
**timestamp** | **OffsetDateTime** | Time when the price level update was recorded as DateTime |  [optional]
**isSideBuy** | **Boolean** | Indicates if this is a price level update for the Buy Side. |  [optional]
**isEventProcessingComplete** | **Boolean** | Indicates if event processing is complete. |  [optional]
**size** | **Int** | Aggregate quoted size at the price level |  [optional]
**price** | **Double** | Price level as decimal |  [optional]



