

# AdminRetailLiquidityIndicatorModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol |  [optional]
**timestampNanos** | **Long** | Original timestamp in nanoseconds since epoch |  [optional]
**timestamp** | [**Date**](Date.md) | Time when the retail liquidity indicator was recorded as DateTime |  [optional]
**retailLiquidityIndicator** | **Integer** | Retail liquidity indicator as byte value |  [optional]
**retailLiquidityIndicatorCode** | **String** | Retail liquidity indicator as character string |  [optional]
**retailLiquidityIndicatorText** | **String** | Human-readable description of the retail liquidity indicator |  [optional]
**isRetailIndicatorNotApplicable** | **Boolean** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). |  [optional]
**isRetailIndicatorBuyInterest** | **Boolean** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). |  [optional]
**isRetailIndicatorSellInterest** | **Boolean** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). |  [optional]
**isRetailIndicatorBuyAndSellInterest** | **Boolean** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). |  [optional]




