# AdminRetailLiquidityIndicatorModel

Represents the response DTO for retail liquidity indicator information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **str** | The stock symbol | [optional] 
**timestamp_nanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **datetime** | Time when the retail liquidity indicator was recorded as DateTime | [optional] 
**retail_liquidity_indicator** | **int** | Retail liquidity indicator as byte value | [optional] 
**retail_liquidity_indicator_code** | **str** | Retail liquidity indicator as character string | [optional] 
**retail_liquidity_indicator_text** | **str** | Human-readable description of the retail liquidity indicator | [optional] 
**is_retail_indicator_not_applicable** | **bool** | Indicates if the indicator is &#39;Not Applicable&#39; (&#39; &#39;/0x20). | [optional] 
**is_retail_indicator_buy_interest** | **bool** | Indicates if there is &#39;Buy interest for Retail&#39; (&#39;A&#39;/0x41). | [optional] 
**is_retail_indicator_sell_interest** | **bool** | Indicates if there is &#39;Sell interest for Retail&#39; (&#39;B&#39;/0x42). | [optional] 
**is_retail_indicator_buy_and_sell_interest** | **bool** | Indicates if there is &#39;Buy and sell interest for Retail&#39; (&#39;C&#39;/0x43). | [optional] 

## Example

```python
from api_bricks_stock_api_rest.models.admin_retail_liquidity_indicator_model import AdminRetailLiquidityIndicatorModel

# TODO update the JSON string below
json = "{}"
# create an instance of AdminRetailLiquidityIndicatorModel from a JSON string
admin_retail_liquidity_indicator_model_instance = AdminRetailLiquidityIndicatorModel.from_json(json)
# print the JSON string representation of the object
print(AdminRetailLiquidityIndicatorModel.to_json())

# convert the object into a dict
admin_retail_liquidity_indicator_model_dict = admin_retail_liquidity_indicator_model_instance.to_dict()
# create an instance of AdminRetailLiquidityIndicatorModel from a dict
admin_retail_liquidity_indicator_model_from_dict = AdminRetailLiquidityIndicatorModel.from_dict(admin_retail_liquidity_indicator_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


