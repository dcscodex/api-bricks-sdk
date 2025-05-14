# Level3OrderBookModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AddOrder** | [**Level3AddOrderModel**](Level3AddOrderModel.md) |  | [optional] 
**DeleteOrder** | [**Level3DeleteOrderModel**](Level3DeleteOrderModel.md) |  | [optional] 
**ModifyOrder** | [**Level3ModifyOrderModel**](Level3ModifyOrderModel.md) |  | [optional] 
**ExecutedOrder** | [**Level3ExecutedOrderModel**](Level3ExecutedOrderModel.md) |  | [optional] 
**ClearBook** | [**Level3ClearBookModel**](Level3ClearBookModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Level3OrderBookModel = Initialize-PSOpenAPIToolsLevel3OrderBookModel  -AddOrder null `
 -DeleteOrder null `
 -ModifyOrder null `
 -ExecutedOrder null `
 -ClearBook null
```

- Convert the resource to JSON
```powershell
$Level3OrderBookModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

