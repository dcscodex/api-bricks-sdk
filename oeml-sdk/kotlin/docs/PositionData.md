
# PositionData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **kotlin.String** | Unique position ID |  [optional]
**symbolExchange** | **kotlin.String** | The contract for this position. |  [optional]
**symbolCoinapi** | **kotlin.String** | The coinapi contract for this position. |  [optional]
**avgEntryPrice** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  [optional]
**quantity** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | The current position amount in contracts. |  [optional]
**isBuy** | **kotlin.Boolean** |  |  [optional]
**unrealisedPnL** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. |  [optional]
**leverage** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | 1 / initMarginReq. |  [optional]
**crossMargin** | **kotlin.Boolean** | True/false depending on whether you set cross margin on this position. |  [optional]
**liquidationPrice** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Once markPrice reaches this price, this position will be liquidated. |  [optional]
**rawData** | **kotlin.String** |  |  [optional]



