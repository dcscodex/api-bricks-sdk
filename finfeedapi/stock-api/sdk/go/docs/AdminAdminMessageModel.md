# AdminAdminMessageModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TradingStatus** | Pointer to [**AdminTradingStatusModel**](AdminTradingStatusModel.md) |  | [optional] 
**OfficialPrice** | Pointer to [**AdminOfficialPriceModel**](AdminOfficialPriceModel.md) |  | [optional] 
**SecurityEvent** | Pointer to [**AdminSecurityEventModel**](AdminSecurityEventModel.md) |  | [optional] 
**AuctionInformation** | Pointer to [**AdminAuctionInformationModel**](AdminAuctionInformationModel.md) |  | [optional] 
**ShortSalePriceTest** | Pointer to [**AdminShortSalePriceTestStatusModel**](AdminShortSalePriceTestStatusModel.md) |  | [optional] 
**OperationalHaltStatus** | Pointer to [**AdminOperationalHaltStatusModel**](AdminOperationalHaltStatusModel.md) |  | [optional] 
**RetailLiquidityIndicator** | Pointer to [**AdminRetailLiquidityIndicatorModel**](AdminRetailLiquidityIndicatorModel.md) |  | [optional] 
**SystemEvent** | Pointer to [**AdminSystemEventModel**](AdminSystemEventModel.md) |  | [optional] 
**SecurityDirectory** | Pointer to [**AdminSecurityDirectoryModel**](AdminSecurityDirectoryModel.md) |  | [optional] 

## Methods

### NewAdminAdminMessageModel

`func NewAdminAdminMessageModel() *AdminAdminMessageModel`

NewAdminAdminMessageModel instantiates a new AdminAdminMessageModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAdminMessageModelWithDefaults

`func NewAdminAdminMessageModelWithDefaults() *AdminAdminMessageModel`

NewAdminAdminMessageModelWithDefaults instantiates a new AdminAdminMessageModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTradingStatus

`func (o *AdminAdminMessageModel) GetTradingStatus() AdminTradingStatusModel`

GetTradingStatus returns the TradingStatus field if non-nil, zero value otherwise.

### GetTradingStatusOk

`func (o *AdminAdminMessageModel) GetTradingStatusOk() (*AdminTradingStatusModel, bool)`

GetTradingStatusOk returns a tuple with the TradingStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradingStatus

`func (o *AdminAdminMessageModel) SetTradingStatus(v AdminTradingStatusModel)`

SetTradingStatus sets TradingStatus field to given value.

### HasTradingStatus

`func (o *AdminAdminMessageModel) HasTradingStatus() bool`

HasTradingStatus returns a boolean if a field has been set.

### GetOfficialPrice

`func (o *AdminAdminMessageModel) GetOfficialPrice() AdminOfficialPriceModel`

GetOfficialPrice returns the OfficialPrice field if non-nil, zero value otherwise.

### GetOfficialPriceOk

`func (o *AdminAdminMessageModel) GetOfficialPriceOk() (*AdminOfficialPriceModel, bool)`

GetOfficialPriceOk returns a tuple with the OfficialPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOfficialPrice

`func (o *AdminAdminMessageModel) SetOfficialPrice(v AdminOfficialPriceModel)`

SetOfficialPrice sets OfficialPrice field to given value.

### HasOfficialPrice

`func (o *AdminAdminMessageModel) HasOfficialPrice() bool`

HasOfficialPrice returns a boolean if a field has been set.

### GetSecurityEvent

`func (o *AdminAdminMessageModel) GetSecurityEvent() AdminSecurityEventModel`

GetSecurityEvent returns the SecurityEvent field if non-nil, zero value otherwise.

### GetSecurityEventOk

`func (o *AdminAdminMessageModel) GetSecurityEventOk() (*AdminSecurityEventModel, bool)`

GetSecurityEventOk returns a tuple with the SecurityEvent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecurityEvent

`func (o *AdminAdminMessageModel) SetSecurityEvent(v AdminSecurityEventModel)`

SetSecurityEvent sets SecurityEvent field to given value.

### HasSecurityEvent

`func (o *AdminAdminMessageModel) HasSecurityEvent() bool`

HasSecurityEvent returns a boolean if a field has been set.

### GetAuctionInformation

`func (o *AdminAdminMessageModel) GetAuctionInformation() AdminAuctionInformationModel`

GetAuctionInformation returns the AuctionInformation field if non-nil, zero value otherwise.

### GetAuctionInformationOk

`func (o *AdminAdminMessageModel) GetAuctionInformationOk() (*AdminAuctionInformationModel, bool)`

GetAuctionInformationOk returns a tuple with the AuctionInformation field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuctionInformation

`func (o *AdminAdminMessageModel) SetAuctionInformation(v AdminAuctionInformationModel)`

SetAuctionInformation sets AuctionInformation field to given value.

### HasAuctionInformation

`func (o *AdminAdminMessageModel) HasAuctionInformation() bool`

HasAuctionInformation returns a boolean if a field has been set.

### GetShortSalePriceTest

`func (o *AdminAdminMessageModel) GetShortSalePriceTest() AdminShortSalePriceTestStatusModel`

GetShortSalePriceTest returns the ShortSalePriceTest field if non-nil, zero value otherwise.

### GetShortSalePriceTestOk

`func (o *AdminAdminMessageModel) GetShortSalePriceTestOk() (*AdminShortSalePriceTestStatusModel, bool)`

GetShortSalePriceTestOk returns a tuple with the ShortSalePriceTest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShortSalePriceTest

`func (o *AdminAdminMessageModel) SetShortSalePriceTest(v AdminShortSalePriceTestStatusModel)`

SetShortSalePriceTest sets ShortSalePriceTest field to given value.

### HasShortSalePriceTest

`func (o *AdminAdminMessageModel) HasShortSalePriceTest() bool`

HasShortSalePriceTest returns a boolean if a field has been set.

### GetOperationalHaltStatus

`func (o *AdminAdminMessageModel) GetOperationalHaltStatus() AdminOperationalHaltStatusModel`

GetOperationalHaltStatus returns the OperationalHaltStatus field if non-nil, zero value otherwise.

### GetOperationalHaltStatusOk

`func (o *AdminAdminMessageModel) GetOperationalHaltStatusOk() (*AdminOperationalHaltStatusModel, bool)`

GetOperationalHaltStatusOk returns a tuple with the OperationalHaltStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOperationalHaltStatus

`func (o *AdminAdminMessageModel) SetOperationalHaltStatus(v AdminOperationalHaltStatusModel)`

SetOperationalHaltStatus sets OperationalHaltStatus field to given value.

### HasOperationalHaltStatus

`func (o *AdminAdminMessageModel) HasOperationalHaltStatus() bool`

HasOperationalHaltStatus returns a boolean if a field has been set.

### GetRetailLiquidityIndicator

`func (o *AdminAdminMessageModel) GetRetailLiquidityIndicator() AdminRetailLiquidityIndicatorModel`

GetRetailLiquidityIndicator returns the RetailLiquidityIndicator field if non-nil, zero value otherwise.

### GetRetailLiquidityIndicatorOk

`func (o *AdminAdminMessageModel) GetRetailLiquidityIndicatorOk() (*AdminRetailLiquidityIndicatorModel, bool)`

GetRetailLiquidityIndicatorOk returns a tuple with the RetailLiquidityIndicator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRetailLiquidityIndicator

`func (o *AdminAdminMessageModel) SetRetailLiquidityIndicator(v AdminRetailLiquidityIndicatorModel)`

SetRetailLiquidityIndicator sets RetailLiquidityIndicator field to given value.

### HasRetailLiquidityIndicator

`func (o *AdminAdminMessageModel) HasRetailLiquidityIndicator() bool`

HasRetailLiquidityIndicator returns a boolean if a field has been set.

### GetSystemEvent

`func (o *AdminAdminMessageModel) GetSystemEvent() AdminSystemEventModel`

GetSystemEvent returns the SystemEvent field if non-nil, zero value otherwise.

### GetSystemEventOk

`func (o *AdminAdminMessageModel) GetSystemEventOk() (*AdminSystemEventModel, bool)`

GetSystemEventOk returns a tuple with the SystemEvent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSystemEvent

`func (o *AdminAdminMessageModel) SetSystemEvent(v AdminSystemEventModel)`

SetSystemEvent sets SystemEvent field to given value.

### HasSystemEvent

`func (o *AdminAdminMessageModel) HasSystemEvent() bool`

HasSystemEvent returns a boolean if a field has been set.

### GetSecurityDirectory

`func (o *AdminAdminMessageModel) GetSecurityDirectory() AdminSecurityDirectoryModel`

GetSecurityDirectory returns the SecurityDirectory field if non-nil, zero value otherwise.

### GetSecurityDirectoryOk

`func (o *AdminAdminMessageModel) GetSecurityDirectoryOk() (*AdminSecurityDirectoryModel, bool)`

GetSecurityDirectoryOk returns a tuple with the SecurityDirectory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSecurityDirectory

`func (o *AdminAdminMessageModel) SetSecurityDirectory(v AdminSecurityDirectoryModel)`

SetSecurityDirectory sets SecurityDirectory field to given value.

### HasSecurityDirectory

`func (o *AdminAdminMessageModel) HasSecurityDirectory() bool`

HasSecurityDirectory returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


