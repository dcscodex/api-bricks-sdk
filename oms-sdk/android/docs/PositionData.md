

# PositionData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique position ID |  [optional]
**symbolExchange** | **String** | The contract for this position. |  [optional]
**symbolCoinapi** | **String** | The coinapi contract for this position. |  [optional]
**avgEntryPrice** | [**BigDecimal**](BigDecimal.md) |  |  [optional]
**quantity** | [**BigDecimal**](BigDecimal.md) | The current position amount in contracts. |  [optional]
**isBuy** | **Boolean** |  |  [optional]
**unrealisedPnL** | [**BigDecimal**](BigDecimal.md) | Unrealised PNL is all the unrealised profit or loss coming from your portfolio&#39;s open positions. |  [optional]
**leverage** | [**BigDecimal**](BigDecimal.md) | 1 / initMarginReq. |  [optional]
**crossMargin** | **Boolean** | True/false depending on whether you set cross margin on this position. |  [optional]
**liquidationPrice** | [**BigDecimal**](BigDecimal.md) | Once markPrice reaches this price, this position will be liquidated. |  [optional]
**rawData** | **String** |  |  [optional]




