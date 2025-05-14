# Level3OrderBookModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AddOrder** | Pointer to [**Level3AddOrderModel**](Level3AddOrderModel.md) |  | [optional] 
**DeleteOrder** | Pointer to [**Level3DeleteOrderModel**](Level3DeleteOrderModel.md) |  | [optional] 
**ModifyOrder** | Pointer to [**Level3ModifyOrderModel**](Level3ModifyOrderModel.md) |  | [optional] 
**ExecutedOrder** | Pointer to [**Level3ExecutedOrderModel**](Level3ExecutedOrderModel.md) |  | [optional] 
**ClearBook** | Pointer to [**Level3ClearBookModel**](Level3ClearBookModel.md) |  | [optional] 

## Methods

### NewLevel3OrderBookModel

`func NewLevel3OrderBookModel() *Level3OrderBookModel`

NewLevel3OrderBookModel instantiates a new Level3OrderBookModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLevel3OrderBookModelWithDefaults

`func NewLevel3OrderBookModelWithDefaults() *Level3OrderBookModel`

NewLevel3OrderBookModelWithDefaults instantiates a new Level3OrderBookModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAddOrder

`func (o *Level3OrderBookModel) GetAddOrder() Level3AddOrderModel`

GetAddOrder returns the AddOrder field if non-nil, zero value otherwise.

### GetAddOrderOk

`func (o *Level3OrderBookModel) GetAddOrderOk() (*Level3AddOrderModel, bool)`

GetAddOrderOk returns a tuple with the AddOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAddOrder

`func (o *Level3OrderBookModel) SetAddOrder(v Level3AddOrderModel)`

SetAddOrder sets AddOrder field to given value.

### HasAddOrder

`func (o *Level3OrderBookModel) HasAddOrder() bool`

HasAddOrder returns a boolean if a field has been set.

### GetDeleteOrder

`func (o *Level3OrderBookModel) GetDeleteOrder() Level3DeleteOrderModel`

GetDeleteOrder returns the DeleteOrder field if non-nil, zero value otherwise.

### GetDeleteOrderOk

`func (o *Level3OrderBookModel) GetDeleteOrderOk() (*Level3DeleteOrderModel, bool)`

GetDeleteOrderOk returns a tuple with the DeleteOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeleteOrder

`func (o *Level3OrderBookModel) SetDeleteOrder(v Level3DeleteOrderModel)`

SetDeleteOrder sets DeleteOrder field to given value.

### HasDeleteOrder

`func (o *Level3OrderBookModel) HasDeleteOrder() bool`

HasDeleteOrder returns a boolean if a field has been set.

### GetModifyOrder

`func (o *Level3OrderBookModel) GetModifyOrder() Level3ModifyOrderModel`

GetModifyOrder returns the ModifyOrder field if non-nil, zero value otherwise.

### GetModifyOrderOk

`func (o *Level3OrderBookModel) GetModifyOrderOk() (*Level3ModifyOrderModel, bool)`

GetModifyOrderOk returns a tuple with the ModifyOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetModifyOrder

`func (o *Level3OrderBookModel) SetModifyOrder(v Level3ModifyOrderModel)`

SetModifyOrder sets ModifyOrder field to given value.

### HasModifyOrder

`func (o *Level3OrderBookModel) HasModifyOrder() bool`

HasModifyOrder returns a boolean if a field has been set.

### GetExecutedOrder

`func (o *Level3OrderBookModel) GetExecutedOrder() Level3ExecutedOrderModel`

GetExecutedOrder returns the ExecutedOrder field if non-nil, zero value otherwise.

### GetExecutedOrderOk

`func (o *Level3OrderBookModel) GetExecutedOrderOk() (*Level3ExecutedOrderModel, bool)`

GetExecutedOrderOk returns a tuple with the ExecutedOrder field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutedOrder

`func (o *Level3OrderBookModel) SetExecutedOrder(v Level3ExecutedOrderModel)`

SetExecutedOrder sets ExecutedOrder field to given value.

### HasExecutedOrder

`func (o *Level3OrderBookModel) HasExecutedOrder() bool`

HasExecutedOrder returns a boolean if a field has been set.

### GetClearBook

`func (o *Level3OrderBookModel) GetClearBook() Level3ClearBookModel`

GetClearBook returns the ClearBook field if non-nil, zero value otherwise.

### GetClearBookOk

`func (o *Level3OrderBookModel) GetClearBookOk() (*Level3ClearBookModel, bool)`

GetClearBookOk returns a tuple with the ClearBook field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClearBook

`func (o *Level3OrderBookModel) SetClearBook(v Level3ClearBookModel)`

SetClearBook sets ClearBook field to given value.

### HasClearBook

`func (o *Level3OrderBookModel) HasClearBook() bool`

HasClearBook returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


