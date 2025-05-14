# AdminAuctionInformationModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **NullableString** | The stock symbol | [optional] 
**TimestampNanos** | Pointer to **int64** | Original timestamp in nanoseconds since epoch | [optional] 
**Timestamp** | Pointer to **time.Time** | Time when the auction data was recorded as DateTime | [optional] 
**AuctionType** | Pointer to **int32** | Type of auction as byte value | [optional] 
**AuctionTypeCode** | Pointer to **NullableString** | Type of auction as character string | [optional] 
**AuctionTypeText** | Pointer to **NullableString** | Human-readable description of the auction type | [optional] 
**IsAuctionTypeOpening** | Pointer to **bool** | Indicates if the auction type is &#39;Opening Auction&#39; (&#39;O&#39;/0x4f). | [optional] 
**IsAuctionTypeClosing** | Pointer to **bool** | Indicates if the auction type is &#39;Closing Auction&#39; (&#39;C&#39;/0x43). | [optional] 
**IsAuctionTypeIpo** | Pointer to **bool** | Indicates if the auction type is &#39;IPO Auction&#39; (&#39;I&#39;/0x49). | [optional] 
**IsAuctionTypeHalt** | Pointer to **bool** | Indicates if the auction type is &#39;Halt Auction&#39; (&#39;H&#39;/0x48). | [optional] 
**IsAuctionTypeVolatility** | Pointer to **bool** | Indicates if the auction type is &#39;Volatility Auction&#39; (&#39;V&#39;/0x56). | [optional] 
**PairedShares** | Pointer to **int32** | Number of shares paired at the Reference Price | [optional] 
**ReferencePrice** | Pointer to **float64** | Reference price as decimal | [optional] 
**IndicativeClearingPrice** | Pointer to **float64** | Indicative clearing price as decimal | [optional] 
**ImbalanceShares** | Pointer to **int32** | Number of unpaired shares at the Reference Price | [optional] 
**ImbalanceSide** | Pointer to **int32** | Side of the imbalance as byte value | [optional] 
**ImbalanceSideCode** | Pointer to **NullableString** | Side of the imbalance as character string | [optional] 
**ImbalanceSideText** | Pointer to **NullableString** | Human-readable description of the imbalance side | [optional] 
**IsImbalanceSideBuy** | Pointer to **bool** | Indicates if there is a buy-side imbalance (&#39;B&#39;/0x42). | [optional] 
**IsImbalanceSideSell** | Pointer to **bool** | Indicates if there is a sell-side imbalance (&#39;S&#39;/0x53). | [optional] 
**IsImbalanceSideNone** | Pointer to **bool** | Indicates if there is no imbalance (&#39;N&#39;/0x4e). | [optional] 
**ExtensionNumber** | Pointer to **int32** | Number of extensions to the auction | [optional] 
**ScheduledAuctionTimeSeconds** | Pointer to **int32** | Scheduled auction time in seconds since epoch | [optional] 
**ScheduledAuctionTime** | Pointer to **time.Time** | Scheduled time for the auction as DateTime | [optional] 
**AuctionBookClearingPrice** | Pointer to **float64** | Auction book clearing price as decimal | [optional] 
**CollarReferencePrice** | Pointer to **float64** | Collar reference price as decimal | [optional] 
**LowerAuctionCollar** | Pointer to **float64** | Lower auction collar as decimal | [optional] 
**UpperAuctionCollar** | Pointer to **float64** | Upper auction collar as decimal | [optional] 

## Methods

### NewAdminAuctionInformationModel

`func NewAdminAuctionInformationModel() *AdminAuctionInformationModel`

NewAdminAuctionInformationModel instantiates a new AdminAuctionInformationModel object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAdminAuctionInformationModelWithDefaults

`func NewAdminAuctionInformationModelWithDefaults() *AdminAuctionInformationModel`

NewAdminAuctionInformationModelWithDefaults instantiates a new AdminAuctionInformationModel object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *AdminAuctionInformationModel) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AdminAuctionInformationModel) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AdminAuctionInformationModel) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AdminAuctionInformationModel) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *AdminAuctionInformationModel) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *AdminAuctionInformationModel) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetTimestampNanos

`func (o *AdminAuctionInformationModel) GetTimestampNanos() int64`

GetTimestampNanos returns the TimestampNanos field if non-nil, zero value otherwise.

### GetTimestampNanosOk

`func (o *AdminAuctionInformationModel) GetTimestampNanosOk() (*int64, bool)`

GetTimestampNanosOk returns a tuple with the TimestampNanos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestampNanos

`func (o *AdminAuctionInformationModel) SetTimestampNanos(v int64)`

SetTimestampNanos sets TimestampNanos field to given value.

### HasTimestampNanos

`func (o *AdminAuctionInformationModel) HasTimestampNanos() bool`

HasTimestampNanos returns a boolean if a field has been set.

### GetTimestamp

`func (o *AdminAuctionInformationModel) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *AdminAuctionInformationModel) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *AdminAuctionInformationModel) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *AdminAuctionInformationModel) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### GetAuctionType

`func (o *AdminAuctionInformationModel) GetAuctionType() int32`

GetAuctionType returns the AuctionType field if non-nil, zero value otherwise.

### GetAuctionTypeOk

`func (o *AdminAuctionInformationModel) GetAuctionTypeOk() (*int32, bool)`

GetAuctionTypeOk returns a tuple with the AuctionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuctionType

`func (o *AdminAuctionInformationModel) SetAuctionType(v int32)`

SetAuctionType sets AuctionType field to given value.

### HasAuctionType

`func (o *AdminAuctionInformationModel) HasAuctionType() bool`

HasAuctionType returns a boolean if a field has been set.

### GetAuctionTypeCode

`func (o *AdminAuctionInformationModel) GetAuctionTypeCode() string`

GetAuctionTypeCode returns the AuctionTypeCode field if non-nil, zero value otherwise.

### GetAuctionTypeCodeOk

`func (o *AdminAuctionInformationModel) GetAuctionTypeCodeOk() (*string, bool)`

GetAuctionTypeCodeOk returns a tuple with the AuctionTypeCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuctionTypeCode

`func (o *AdminAuctionInformationModel) SetAuctionTypeCode(v string)`

SetAuctionTypeCode sets AuctionTypeCode field to given value.

### HasAuctionTypeCode

`func (o *AdminAuctionInformationModel) HasAuctionTypeCode() bool`

HasAuctionTypeCode returns a boolean if a field has been set.

### SetAuctionTypeCodeNil

`func (o *AdminAuctionInformationModel) SetAuctionTypeCodeNil(b bool)`

 SetAuctionTypeCodeNil sets the value for AuctionTypeCode to be an explicit nil

### UnsetAuctionTypeCode
`func (o *AdminAuctionInformationModel) UnsetAuctionTypeCode()`

UnsetAuctionTypeCode ensures that no value is present for AuctionTypeCode, not even an explicit nil
### GetAuctionTypeText

`func (o *AdminAuctionInformationModel) GetAuctionTypeText() string`

GetAuctionTypeText returns the AuctionTypeText field if non-nil, zero value otherwise.

### GetAuctionTypeTextOk

`func (o *AdminAuctionInformationModel) GetAuctionTypeTextOk() (*string, bool)`

GetAuctionTypeTextOk returns a tuple with the AuctionTypeText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuctionTypeText

`func (o *AdminAuctionInformationModel) SetAuctionTypeText(v string)`

SetAuctionTypeText sets AuctionTypeText field to given value.

### HasAuctionTypeText

`func (o *AdminAuctionInformationModel) HasAuctionTypeText() bool`

HasAuctionTypeText returns a boolean if a field has been set.

### SetAuctionTypeTextNil

`func (o *AdminAuctionInformationModel) SetAuctionTypeTextNil(b bool)`

 SetAuctionTypeTextNil sets the value for AuctionTypeText to be an explicit nil

### UnsetAuctionTypeText
`func (o *AdminAuctionInformationModel) UnsetAuctionTypeText()`

UnsetAuctionTypeText ensures that no value is present for AuctionTypeText, not even an explicit nil
### GetIsAuctionTypeOpening

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeOpening() bool`

GetIsAuctionTypeOpening returns the IsAuctionTypeOpening field if non-nil, zero value otherwise.

### GetIsAuctionTypeOpeningOk

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeOpeningOk() (*bool, bool)`

GetIsAuctionTypeOpeningOk returns a tuple with the IsAuctionTypeOpening field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAuctionTypeOpening

`func (o *AdminAuctionInformationModel) SetIsAuctionTypeOpening(v bool)`

SetIsAuctionTypeOpening sets IsAuctionTypeOpening field to given value.

### HasIsAuctionTypeOpening

`func (o *AdminAuctionInformationModel) HasIsAuctionTypeOpening() bool`

HasIsAuctionTypeOpening returns a boolean if a field has been set.

### GetIsAuctionTypeClosing

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeClosing() bool`

GetIsAuctionTypeClosing returns the IsAuctionTypeClosing field if non-nil, zero value otherwise.

### GetIsAuctionTypeClosingOk

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeClosingOk() (*bool, bool)`

GetIsAuctionTypeClosingOk returns a tuple with the IsAuctionTypeClosing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAuctionTypeClosing

`func (o *AdminAuctionInformationModel) SetIsAuctionTypeClosing(v bool)`

SetIsAuctionTypeClosing sets IsAuctionTypeClosing field to given value.

### HasIsAuctionTypeClosing

`func (o *AdminAuctionInformationModel) HasIsAuctionTypeClosing() bool`

HasIsAuctionTypeClosing returns a boolean if a field has been set.

### GetIsAuctionTypeIpo

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeIpo() bool`

GetIsAuctionTypeIpo returns the IsAuctionTypeIpo field if non-nil, zero value otherwise.

### GetIsAuctionTypeIpoOk

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeIpoOk() (*bool, bool)`

GetIsAuctionTypeIpoOk returns a tuple with the IsAuctionTypeIpo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAuctionTypeIpo

`func (o *AdminAuctionInformationModel) SetIsAuctionTypeIpo(v bool)`

SetIsAuctionTypeIpo sets IsAuctionTypeIpo field to given value.

### HasIsAuctionTypeIpo

`func (o *AdminAuctionInformationModel) HasIsAuctionTypeIpo() bool`

HasIsAuctionTypeIpo returns a boolean if a field has been set.

### GetIsAuctionTypeHalt

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeHalt() bool`

GetIsAuctionTypeHalt returns the IsAuctionTypeHalt field if non-nil, zero value otherwise.

### GetIsAuctionTypeHaltOk

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeHaltOk() (*bool, bool)`

GetIsAuctionTypeHaltOk returns a tuple with the IsAuctionTypeHalt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAuctionTypeHalt

`func (o *AdminAuctionInformationModel) SetIsAuctionTypeHalt(v bool)`

SetIsAuctionTypeHalt sets IsAuctionTypeHalt field to given value.

### HasIsAuctionTypeHalt

`func (o *AdminAuctionInformationModel) HasIsAuctionTypeHalt() bool`

HasIsAuctionTypeHalt returns a boolean if a field has been set.

### GetIsAuctionTypeVolatility

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeVolatility() bool`

GetIsAuctionTypeVolatility returns the IsAuctionTypeVolatility field if non-nil, zero value otherwise.

### GetIsAuctionTypeVolatilityOk

`func (o *AdminAuctionInformationModel) GetIsAuctionTypeVolatilityOk() (*bool, bool)`

GetIsAuctionTypeVolatilityOk returns a tuple with the IsAuctionTypeVolatility field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsAuctionTypeVolatility

`func (o *AdminAuctionInformationModel) SetIsAuctionTypeVolatility(v bool)`

SetIsAuctionTypeVolatility sets IsAuctionTypeVolatility field to given value.

### HasIsAuctionTypeVolatility

`func (o *AdminAuctionInformationModel) HasIsAuctionTypeVolatility() bool`

HasIsAuctionTypeVolatility returns a boolean if a field has been set.

### GetPairedShares

`func (o *AdminAuctionInformationModel) GetPairedShares() int32`

GetPairedShares returns the PairedShares field if non-nil, zero value otherwise.

### GetPairedSharesOk

`func (o *AdminAuctionInformationModel) GetPairedSharesOk() (*int32, bool)`

GetPairedSharesOk returns a tuple with the PairedShares field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairedShares

`func (o *AdminAuctionInformationModel) SetPairedShares(v int32)`

SetPairedShares sets PairedShares field to given value.

### HasPairedShares

`func (o *AdminAuctionInformationModel) HasPairedShares() bool`

HasPairedShares returns a boolean if a field has been set.

### GetReferencePrice

`func (o *AdminAuctionInformationModel) GetReferencePrice() float64`

GetReferencePrice returns the ReferencePrice field if non-nil, zero value otherwise.

### GetReferencePriceOk

`func (o *AdminAuctionInformationModel) GetReferencePriceOk() (*float64, bool)`

GetReferencePriceOk returns a tuple with the ReferencePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReferencePrice

`func (o *AdminAuctionInformationModel) SetReferencePrice(v float64)`

SetReferencePrice sets ReferencePrice field to given value.

### HasReferencePrice

`func (o *AdminAuctionInformationModel) HasReferencePrice() bool`

HasReferencePrice returns a boolean if a field has been set.

### GetIndicativeClearingPrice

`func (o *AdminAuctionInformationModel) GetIndicativeClearingPrice() float64`

GetIndicativeClearingPrice returns the IndicativeClearingPrice field if non-nil, zero value otherwise.

### GetIndicativeClearingPriceOk

`func (o *AdminAuctionInformationModel) GetIndicativeClearingPriceOk() (*float64, bool)`

GetIndicativeClearingPriceOk returns a tuple with the IndicativeClearingPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIndicativeClearingPrice

`func (o *AdminAuctionInformationModel) SetIndicativeClearingPrice(v float64)`

SetIndicativeClearingPrice sets IndicativeClearingPrice field to given value.

### HasIndicativeClearingPrice

`func (o *AdminAuctionInformationModel) HasIndicativeClearingPrice() bool`

HasIndicativeClearingPrice returns a boolean if a field has been set.

### GetImbalanceShares

`func (o *AdminAuctionInformationModel) GetImbalanceShares() int32`

GetImbalanceShares returns the ImbalanceShares field if non-nil, zero value otherwise.

### GetImbalanceSharesOk

`func (o *AdminAuctionInformationModel) GetImbalanceSharesOk() (*int32, bool)`

GetImbalanceSharesOk returns a tuple with the ImbalanceShares field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImbalanceShares

`func (o *AdminAuctionInformationModel) SetImbalanceShares(v int32)`

SetImbalanceShares sets ImbalanceShares field to given value.

### HasImbalanceShares

`func (o *AdminAuctionInformationModel) HasImbalanceShares() bool`

HasImbalanceShares returns a boolean if a field has been set.

### GetImbalanceSide

`func (o *AdminAuctionInformationModel) GetImbalanceSide() int32`

GetImbalanceSide returns the ImbalanceSide field if non-nil, zero value otherwise.

### GetImbalanceSideOk

`func (o *AdminAuctionInformationModel) GetImbalanceSideOk() (*int32, bool)`

GetImbalanceSideOk returns a tuple with the ImbalanceSide field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImbalanceSide

`func (o *AdminAuctionInformationModel) SetImbalanceSide(v int32)`

SetImbalanceSide sets ImbalanceSide field to given value.

### HasImbalanceSide

`func (o *AdminAuctionInformationModel) HasImbalanceSide() bool`

HasImbalanceSide returns a boolean if a field has been set.

### GetImbalanceSideCode

`func (o *AdminAuctionInformationModel) GetImbalanceSideCode() string`

GetImbalanceSideCode returns the ImbalanceSideCode field if non-nil, zero value otherwise.

### GetImbalanceSideCodeOk

`func (o *AdminAuctionInformationModel) GetImbalanceSideCodeOk() (*string, bool)`

GetImbalanceSideCodeOk returns a tuple with the ImbalanceSideCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImbalanceSideCode

`func (o *AdminAuctionInformationModel) SetImbalanceSideCode(v string)`

SetImbalanceSideCode sets ImbalanceSideCode field to given value.

### HasImbalanceSideCode

`func (o *AdminAuctionInformationModel) HasImbalanceSideCode() bool`

HasImbalanceSideCode returns a boolean if a field has been set.

### SetImbalanceSideCodeNil

`func (o *AdminAuctionInformationModel) SetImbalanceSideCodeNil(b bool)`

 SetImbalanceSideCodeNil sets the value for ImbalanceSideCode to be an explicit nil

### UnsetImbalanceSideCode
`func (o *AdminAuctionInformationModel) UnsetImbalanceSideCode()`

UnsetImbalanceSideCode ensures that no value is present for ImbalanceSideCode, not even an explicit nil
### GetImbalanceSideText

`func (o *AdminAuctionInformationModel) GetImbalanceSideText() string`

GetImbalanceSideText returns the ImbalanceSideText field if non-nil, zero value otherwise.

### GetImbalanceSideTextOk

`func (o *AdminAuctionInformationModel) GetImbalanceSideTextOk() (*string, bool)`

GetImbalanceSideTextOk returns a tuple with the ImbalanceSideText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImbalanceSideText

`func (o *AdminAuctionInformationModel) SetImbalanceSideText(v string)`

SetImbalanceSideText sets ImbalanceSideText field to given value.

### HasImbalanceSideText

`func (o *AdminAuctionInformationModel) HasImbalanceSideText() bool`

HasImbalanceSideText returns a boolean if a field has been set.

### SetImbalanceSideTextNil

`func (o *AdminAuctionInformationModel) SetImbalanceSideTextNil(b bool)`

 SetImbalanceSideTextNil sets the value for ImbalanceSideText to be an explicit nil

### UnsetImbalanceSideText
`func (o *AdminAuctionInformationModel) UnsetImbalanceSideText()`

UnsetImbalanceSideText ensures that no value is present for ImbalanceSideText, not even an explicit nil
### GetIsImbalanceSideBuy

`func (o *AdminAuctionInformationModel) GetIsImbalanceSideBuy() bool`

GetIsImbalanceSideBuy returns the IsImbalanceSideBuy field if non-nil, zero value otherwise.

### GetIsImbalanceSideBuyOk

`func (o *AdminAuctionInformationModel) GetIsImbalanceSideBuyOk() (*bool, bool)`

GetIsImbalanceSideBuyOk returns a tuple with the IsImbalanceSideBuy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsImbalanceSideBuy

`func (o *AdminAuctionInformationModel) SetIsImbalanceSideBuy(v bool)`

SetIsImbalanceSideBuy sets IsImbalanceSideBuy field to given value.

### HasIsImbalanceSideBuy

`func (o *AdminAuctionInformationModel) HasIsImbalanceSideBuy() bool`

HasIsImbalanceSideBuy returns a boolean if a field has been set.

### GetIsImbalanceSideSell

`func (o *AdminAuctionInformationModel) GetIsImbalanceSideSell() bool`

GetIsImbalanceSideSell returns the IsImbalanceSideSell field if non-nil, zero value otherwise.

### GetIsImbalanceSideSellOk

`func (o *AdminAuctionInformationModel) GetIsImbalanceSideSellOk() (*bool, bool)`

GetIsImbalanceSideSellOk returns a tuple with the IsImbalanceSideSell field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsImbalanceSideSell

`func (o *AdminAuctionInformationModel) SetIsImbalanceSideSell(v bool)`

SetIsImbalanceSideSell sets IsImbalanceSideSell field to given value.

### HasIsImbalanceSideSell

`func (o *AdminAuctionInformationModel) HasIsImbalanceSideSell() bool`

HasIsImbalanceSideSell returns a boolean if a field has been set.

### GetIsImbalanceSideNone

`func (o *AdminAuctionInformationModel) GetIsImbalanceSideNone() bool`

GetIsImbalanceSideNone returns the IsImbalanceSideNone field if non-nil, zero value otherwise.

### GetIsImbalanceSideNoneOk

`func (o *AdminAuctionInformationModel) GetIsImbalanceSideNoneOk() (*bool, bool)`

GetIsImbalanceSideNoneOk returns a tuple with the IsImbalanceSideNone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsImbalanceSideNone

`func (o *AdminAuctionInformationModel) SetIsImbalanceSideNone(v bool)`

SetIsImbalanceSideNone sets IsImbalanceSideNone field to given value.

### HasIsImbalanceSideNone

`func (o *AdminAuctionInformationModel) HasIsImbalanceSideNone() bool`

HasIsImbalanceSideNone returns a boolean if a field has been set.

### GetExtensionNumber

`func (o *AdminAuctionInformationModel) GetExtensionNumber() int32`

GetExtensionNumber returns the ExtensionNumber field if non-nil, zero value otherwise.

### GetExtensionNumberOk

`func (o *AdminAuctionInformationModel) GetExtensionNumberOk() (*int32, bool)`

GetExtensionNumberOk returns a tuple with the ExtensionNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtensionNumber

`func (o *AdminAuctionInformationModel) SetExtensionNumber(v int32)`

SetExtensionNumber sets ExtensionNumber field to given value.

### HasExtensionNumber

`func (o *AdminAuctionInformationModel) HasExtensionNumber() bool`

HasExtensionNumber returns a boolean if a field has been set.

### GetScheduledAuctionTimeSeconds

`func (o *AdminAuctionInformationModel) GetScheduledAuctionTimeSeconds() int32`

GetScheduledAuctionTimeSeconds returns the ScheduledAuctionTimeSeconds field if non-nil, zero value otherwise.

### GetScheduledAuctionTimeSecondsOk

`func (o *AdminAuctionInformationModel) GetScheduledAuctionTimeSecondsOk() (*int32, bool)`

GetScheduledAuctionTimeSecondsOk returns a tuple with the ScheduledAuctionTimeSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledAuctionTimeSeconds

`func (o *AdminAuctionInformationModel) SetScheduledAuctionTimeSeconds(v int32)`

SetScheduledAuctionTimeSeconds sets ScheduledAuctionTimeSeconds field to given value.

### HasScheduledAuctionTimeSeconds

`func (o *AdminAuctionInformationModel) HasScheduledAuctionTimeSeconds() bool`

HasScheduledAuctionTimeSeconds returns a boolean if a field has been set.

### GetScheduledAuctionTime

`func (o *AdminAuctionInformationModel) GetScheduledAuctionTime() time.Time`

GetScheduledAuctionTime returns the ScheduledAuctionTime field if non-nil, zero value otherwise.

### GetScheduledAuctionTimeOk

`func (o *AdminAuctionInformationModel) GetScheduledAuctionTimeOk() (*time.Time, bool)`

GetScheduledAuctionTimeOk returns a tuple with the ScheduledAuctionTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledAuctionTime

`func (o *AdminAuctionInformationModel) SetScheduledAuctionTime(v time.Time)`

SetScheduledAuctionTime sets ScheduledAuctionTime field to given value.

### HasScheduledAuctionTime

`func (o *AdminAuctionInformationModel) HasScheduledAuctionTime() bool`

HasScheduledAuctionTime returns a boolean if a field has been set.

### GetAuctionBookClearingPrice

`func (o *AdminAuctionInformationModel) GetAuctionBookClearingPrice() float64`

GetAuctionBookClearingPrice returns the AuctionBookClearingPrice field if non-nil, zero value otherwise.

### GetAuctionBookClearingPriceOk

`func (o *AdminAuctionInformationModel) GetAuctionBookClearingPriceOk() (*float64, bool)`

GetAuctionBookClearingPriceOk returns a tuple with the AuctionBookClearingPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuctionBookClearingPrice

`func (o *AdminAuctionInformationModel) SetAuctionBookClearingPrice(v float64)`

SetAuctionBookClearingPrice sets AuctionBookClearingPrice field to given value.

### HasAuctionBookClearingPrice

`func (o *AdminAuctionInformationModel) HasAuctionBookClearingPrice() bool`

HasAuctionBookClearingPrice returns a boolean if a field has been set.

### GetCollarReferencePrice

`func (o *AdminAuctionInformationModel) GetCollarReferencePrice() float64`

GetCollarReferencePrice returns the CollarReferencePrice field if non-nil, zero value otherwise.

### GetCollarReferencePriceOk

`func (o *AdminAuctionInformationModel) GetCollarReferencePriceOk() (*float64, bool)`

GetCollarReferencePriceOk returns a tuple with the CollarReferencePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCollarReferencePrice

`func (o *AdminAuctionInformationModel) SetCollarReferencePrice(v float64)`

SetCollarReferencePrice sets CollarReferencePrice field to given value.

### HasCollarReferencePrice

`func (o *AdminAuctionInformationModel) HasCollarReferencePrice() bool`

HasCollarReferencePrice returns a boolean if a field has been set.

### GetLowerAuctionCollar

`func (o *AdminAuctionInformationModel) GetLowerAuctionCollar() float64`

GetLowerAuctionCollar returns the LowerAuctionCollar field if non-nil, zero value otherwise.

### GetLowerAuctionCollarOk

`func (o *AdminAuctionInformationModel) GetLowerAuctionCollarOk() (*float64, bool)`

GetLowerAuctionCollarOk returns a tuple with the LowerAuctionCollar field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLowerAuctionCollar

`func (o *AdminAuctionInformationModel) SetLowerAuctionCollar(v float64)`

SetLowerAuctionCollar sets LowerAuctionCollar field to given value.

### HasLowerAuctionCollar

`func (o *AdminAuctionInformationModel) HasLowerAuctionCollar() bool`

HasLowerAuctionCollar returns a boolean if a field has been set.

### GetUpperAuctionCollar

`func (o *AdminAuctionInformationModel) GetUpperAuctionCollar() float64`

GetUpperAuctionCollar returns the UpperAuctionCollar field if non-nil, zero value otherwise.

### GetUpperAuctionCollarOk

`func (o *AdminAuctionInformationModel) GetUpperAuctionCollarOk() (*float64, bool)`

GetUpperAuctionCollarOk returns a tuple with the UpperAuctionCollar field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpperAuctionCollar

`func (o *AdminAuctionInformationModel) SetUpperAuctionCollar(v float64)`

SetUpperAuctionCollar sets UpperAuctionCollar field to given value.

### HasUpperAuctionCollar

`func (o *AdminAuctionInformationModel) HasUpperAuctionCollar() bool`

HasUpperAuctionCollar returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


