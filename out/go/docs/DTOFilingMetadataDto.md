# DTOFilingMetadataDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cik** | Pointer to **int64** |  | [optional] 
**AccessionNumber** | Pointer to **NullableString** |  | [optional] 
**FilingDate** | Pointer to **string** |  | [optional] 
**ReportDate** | Pointer to **NullableString** |  | [optional] 
**AcceptanceDateTime** | Pointer to **NullableTime** |  | [optional] 
**Act** | Pointer to **NullableString** |  | [optional] 
**Form** | Pointer to **NullableString** |  | [optional] 
**FileNumber** | Pointer to **NullableString** |  | [optional] 
**FilmNumber** | Pointer to **NullableString** |  | [optional] 
**Items** | Pointer to **NullableString** |  | [optional] 
**CoreType** | Pointer to **NullableString** |  | [optional] 
**Size** | Pointer to **NullableInt32** |  | [optional] 
**IsXbrl** | Pointer to **NullableBool** |  | [optional] 
**IsInlineXbrl** | Pointer to **NullableBool** |  | [optional] 
**PrimaryDocument** | Pointer to **NullableString** |  | [optional] 
**PrimaryDocDescription** | Pointer to **NullableString** |  | [optional] 
**SourceFile** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewDTOFilingMetadataDto

`func NewDTOFilingMetadataDto() *DTOFilingMetadataDto`

NewDTOFilingMetadataDto instantiates a new DTOFilingMetadataDto object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDTOFilingMetadataDtoWithDefaults

`func NewDTOFilingMetadataDtoWithDefaults() *DTOFilingMetadataDto`

NewDTOFilingMetadataDtoWithDefaults instantiates a new DTOFilingMetadataDto object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCik

`func (o *DTOFilingMetadataDto) GetCik() int64`

GetCik returns the Cik field if non-nil, zero value otherwise.

### GetCikOk

`func (o *DTOFilingMetadataDto) GetCikOk() (*int64, bool)`

GetCikOk returns a tuple with the Cik field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCik

`func (o *DTOFilingMetadataDto) SetCik(v int64)`

SetCik sets Cik field to given value.

### HasCik

`func (o *DTOFilingMetadataDto) HasCik() bool`

HasCik returns a boolean if a field has been set.

### GetAccessionNumber

`func (o *DTOFilingMetadataDto) GetAccessionNumber() string`

GetAccessionNumber returns the AccessionNumber field if non-nil, zero value otherwise.

### GetAccessionNumberOk

`func (o *DTOFilingMetadataDto) GetAccessionNumberOk() (*string, bool)`

GetAccessionNumberOk returns a tuple with the AccessionNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccessionNumber

`func (o *DTOFilingMetadataDto) SetAccessionNumber(v string)`

SetAccessionNumber sets AccessionNumber field to given value.

### HasAccessionNumber

`func (o *DTOFilingMetadataDto) HasAccessionNumber() bool`

HasAccessionNumber returns a boolean if a field has been set.

### SetAccessionNumberNil

`func (o *DTOFilingMetadataDto) SetAccessionNumberNil(b bool)`

 SetAccessionNumberNil sets the value for AccessionNumber to be an explicit nil

### UnsetAccessionNumber
`func (o *DTOFilingMetadataDto) UnsetAccessionNumber()`

UnsetAccessionNumber ensures that no value is present for AccessionNumber, not even an explicit nil
### GetFilingDate

`func (o *DTOFilingMetadataDto) GetFilingDate() string`

GetFilingDate returns the FilingDate field if non-nil, zero value otherwise.

### GetFilingDateOk

`func (o *DTOFilingMetadataDto) GetFilingDateOk() (*string, bool)`

GetFilingDateOk returns a tuple with the FilingDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilingDate

`func (o *DTOFilingMetadataDto) SetFilingDate(v string)`

SetFilingDate sets FilingDate field to given value.

### HasFilingDate

`func (o *DTOFilingMetadataDto) HasFilingDate() bool`

HasFilingDate returns a boolean if a field has been set.

### GetReportDate

`func (o *DTOFilingMetadataDto) GetReportDate() string`

GetReportDate returns the ReportDate field if non-nil, zero value otherwise.

### GetReportDateOk

`func (o *DTOFilingMetadataDto) GetReportDateOk() (*string, bool)`

GetReportDateOk returns a tuple with the ReportDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReportDate

`func (o *DTOFilingMetadataDto) SetReportDate(v string)`

SetReportDate sets ReportDate field to given value.

### HasReportDate

`func (o *DTOFilingMetadataDto) HasReportDate() bool`

HasReportDate returns a boolean if a field has been set.

### SetReportDateNil

`func (o *DTOFilingMetadataDto) SetReportDateNil(b bool)`

 SetReportDateNil sets the value for ReportDate to be an explicit nil

### UnsetReportDate
`func (o *DTOFilingMetadataDto) UnsetReportDate()`

UnsetReportDate ensures that no value is present for ReportDate, not even an explicit nil
### GetAcceptanceDateTime

`func (o *DTOFilingMetadataDto) GetAcceptanceDateTime() time.Time`

GetAcceptanceDateTime returns the AcceptanceDateTime field if non-nil, zero value otherwise.

### GetAcceptanceDateTimeOk

`func (o *DTOFilingMetadataDto) GetAcceptanceDateTimeOk() (*time.Time, bool)`

GetAcceptanceDateTimeOk returns a tuple with the AcceptanceDateTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAcceptanceDateTime

`func (o *DTOFilingMetadataDto) SetAcceptanceDateTime(v time.Time)`

SetAcceptanceDateTime sets AcceptanceDateTime field to given value.

### HasAcceptanceDateTime

`func (o *DTOFilingMetadataDto) HasAcceptanceDateTime() bool`

HasAcceptanceDateTime returns a boolean if a field has been set.

### SetAcceptanceDateTimeNil

`func (o *DTOFilingMetadataDto) SetAcceptanceDateTimeNil(b bool)`

 SetAcceptanceDateTimeNil sets the value for AcceptanceDateTime to be an explicit nil

### UnsetAcceptanceDateTime
`func (o *DTOFilingMetadataDto) UnsetAcceptanceDateTime()`

UnsetAcceptanceDateTime ensures that no value is present for AcceptanceDateTime, not even an explicit nil
### GetAct

`func (o *DTOFilingMetadataDto) GetAct() string`

GetAct returns the Act field if non-nil, zero value otherwise.

### GetActOk

`func (o *DTOFilingMetadataDto) GetActOk() (*string, bool)`

GetActOk returns a tuple with the Act field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAct

`func (o *DTOFilingMetadataDto) SetAct(v string)`

SetAct sets Act field to given value.

### HasAct

`func (o *DTOFilingMetadataDto) HasAct() bool`

HasAct returns a boolean if a field has been set.

### SetActNil

`func (o *DTOFilingMetadataDto) SetActNil(b bool)`

 SetActNil sets the value for Act to be an explicit nil

### UnsetAct
`func (o *DTOFilingMetadataDto) UnsetAct()`

UnsetAct ensures that no value is present for Act, not even an explicit nil
### GetForm

`func (o *DTOFilingMetadataDto) GetForm() string`

GetForm returns the Form field if non-nil, zero value otherwise.

### GetFormOk

`func (o *DTOFilingMetadataDto) GetFormOk() (*string, bool)`

GetFormOk returns a tuple with the Form field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetForm

`func (o *DTOFilingMetadataDto) SetForm(v string)`

SetForm sets Form field to given value.

### HasForm

`func (o *DTOFilingMetadataDto) HasForm() bool`

HasForm returns a boolean if a field has been set.

### SetFormNil

`func (o *DTOFilingMetadataDto) SetFormNil(b bool)`

 SetFormNil sets the value for Form to be an explicit nil

### UnsetForm
`func (o *DTOFilingMetadataDto) UnsetForm()`

UnsetForm ensures that no value is present for Form, not even an explicit nil
### GetFileNumber

`func (o *DTOFilingMetadataDto) GetFileNumber() string`

GetFileNumber returns the FileNumber field if non-nil, zero value otherwise.

### GetFileNumberOk

`func (o *DTOFilingMetadataDto) GetFileNumberOk() (*string, bool)`

GetFileNumberOk returns a tuple with the FileNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFileNumber

`func (o *DTOFilingMetadataDto) SetFileNumber(v string)`

SetFileNumber sets FileNumber field to given value.

### HasFileNumber

`func (o *DTOFilingMetadataDto) HasFileNumber() bool`

HasFileNumber returns a boolean if a field has been set.

### SetFileNumberNil

`func (o *DTOFilingMetadataDto) SetFileNumberNil(b bool)`

 SetFileNumberNil sets the value for FileNumber to be an explicit nil

### UnsetFileNumber
`func (o *DTOFilingMetadataDto) UnsetFileNumber()`

UnsetFileNumber ensures that no value is present for FileNumber, not even an explicit nil
### GetFilmNumber

`func (o *DTOFilingMetadataDto) GetFilmNumber() string`

GetFilmNumber returns the FilmNumber field if non-nil, zero value otherwise.

### GetFilmNumberOk

`func (o *DTOFilingMetadataDto) GetFilmNumberOk() (*string, bool)`

GetFilmNumberOk returns a tuple with the FilmNumber field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilmNumber

`func (o *DTOFilingMetadataDto) SetFilmNumber(v string)`

SetFilmNumber sets FilmNumber field to given value.

### HasFilmNumber

`func (o *DTOFilingMetadataDto) HasFilmNumber() bool`

HasFilmNumber returns a boolean if a field has been set.

### SetFilmNumberNil

`func (o *DTOFilingMetadataDto) SetFilmNumberNil(b bool)`

 SetFilmNumberNil sets the value for FilmNumber to be an explicit nil

### UnsetFilmNumber
`func (o *DTOFilingMetadataDto) UnsetFilmNumber()`

UnsetFilmNumber ensures that no value is present for FilmNumber, not even an explicit nil
### GetItems

`func (o *DTOFilingMetadataDto) GetItems() string`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *DTOFilingMetadataDto) GetItemsOk() (*string, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *DTOFilingMetadataDto) SetItems(v string)`

SetItems sets Items field to given value.

### HasItems

`func (o *DTOFilingMetadataDto) HasItems() bool`

HasItems returns a boolean if a field has been set.

### SetItemsNil

`func (o *DTOFilingMetadataDto) SetItemsNil(b bool)`

 SetItemsNil sets the value for Items to be an explicit nil

### UnsetItems
`func (o *DTOFilingMetadataDto) UnsetItems()`

UnsetItems ensures that no value is present for Items, not even an explicit nil
### GetCoreType

`func (o *DTOFilingMetadataDto) GetCoreType() string`

GetCoreType returns the CoreType field if non-nil, zero value otherwise.

### GetCoreTypeOk

`func (o *DTOFilingMetadataDto) GetCoreTypeOk() (*string, bool)`

GetCoreTypeOk returns a tuple with the CoreType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCoreType

`func (o *DTOFilingMetadataDto) SetCoreType(v string)`

SetCoreType sets CoreType field to given value.

### HasCoreType

`func (o *DTOFilingMetadataDto) HasCoreType() bool`

HasCoreType returns a boolean if a field has been set.

### SetCoreTypeNil

`func (o *DTOFilingMetadataDto) SetCoreTypeNil(b bool)`

 SetCoreTypeNil sets the value for CoreType to be an explicit nil

### UnsetCoreType
`func (o *DTOFilingMetadataDto) UnsetCoreType()`

UnsetCoreType ensures that no value is present for CoreType, not even an explicit nil
### GetSize

`func (o *DTOFilingMetadataDto) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *DTOFilingMetadataDto) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *DTOFilingMetadataDto) SetSize(v int32)`

SetSize sets Size field to given value.

### HasSize

`func (o *DTOFilingMetadataDto) HasSize() bool`

HasSize returns a boolean if a field has been set.

### SetSizeNil

`func (o *DTOFilingMetadataDto) SetSizeNil(b bool)`

 SetSizeNil sets the value for Size to be an explicit nil

### UnsetSize
`func (o *DTOFilingMetadataDto) UnsetSize()`

UnsetSize ensures that no value is present for Size, not even an explicit nil
### GetIsXbrl

`func (o *DTOFilingMetadataDto) GetIsXbrl() bool`

GetIsXbrl returns the IsXbrl field if non-nil, zero value otherwise.

### GetIsXbrlOk

`func (o *DTOFilingMetadataDto) GetIsXbrlOk() (*bool, bool)`

GetIsXbrlOk returns a tuple with the IsXbrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsXbrl

`func (o *DTOFilingMetadataDto) SetIsXbrl(v bool)`

SetIsXbrl sets IsXbrl field to given value.

### HasIsXbrl

`func (o *DTOFilingMetadataDto) HasIsXbrl() bool`

HasIsXbrl returns a boolean if a field has been set.

### SetIsXbrlNil

`func (o *DTOFilingMetadataDto) SetIsXbrlNil(b bool)`

 SetIsXbrlNil sets the value for IsXbrl to be an explicit nil

### UnsetIsXbrl
`func (o *DTOFilingMetadataDto) UnsetIsXbrl()`

UnsetIsXbrl ensures that no value is present for IsXbrl, not even an explicit nil
### GetIsInlineXbrl

`func (o *DTOFilingMetadataDto) GetIsInlineXbrl() bool`

GetIsInlineXbrl returns the IsInlineXbrl field if non-nil, zero value otherwise.

### GetIsInlineXbrlOk

`func (o *DTOFilingMetadataDto) GetIsInlineXbrlOk() (*bool, bool)`

GetIsInlineXbrlOk returns a tuple with the IsInlineXbrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsInlineXbrl

`func (o *DTOFilingMetadataDto) SetIsInlineXbrl(v bool)`

SetIsInlineXbrl sets IsInlineXbrl field to given value.

### HasIsInlineXbrl

`func (o *DTOFilingMetadataDto) HasIsInlineXbrl() bool`

HasIsInlineXbrl returns a boolean if a field has been set.

### SetIsInlineXbrlNil

`func (o *DTOFilingMetadataDto) SetIsInlineXbrlNil(b bool)`

 SetIsInlineXbrlNil sets the value for IsInlineXbrl to be an explicit nil

### UnsetIsInlineXbrl
`func (o *DTOFilingMetadataDto) UnsetIsInlineXbrl()`

UnsetIsInlineXbrl ensures that no value is present for IsInlineXbrl, not even an explicit nil
### GetPrimaryDocument

`func (o *DTOFilingMetadataDto) GetPrimaryDocument() string`

GetPrimaryDocument returns the PrimaryDocument field if non-nil, zero value otherwise.

### GetPrimaryDocumentOk

`func (o *DTOFilingMetadataDto) GetPrimaryDocumentOk() (*string, bool)`

GetPrimaryDocumentOk returns a tuple with the PrimaryDocument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimaryDocument

`func (o *DTOFilingMetadataDto) SetPrimaryDocument(v string)`

SetPrimaryDocument sets PrimaryDocument field to given value.

### HasPrimaryDocument

`func (o *DTOFilingMetadataDto) HasPrimaryDocument() bool`

HasPrimaryDocument returns a boolean if a field has been set.

### SetPrimaryDocumentNil

`func (o *DTOFilingMetadataDto) SetPrimaryDocumentNil(b bool)`

 SetPrimaryDocumentNil sets the value for PrimaryDocument to be an explicit nil

### UnsetPrimaryDocument
`func (o *DTOFilingMetadataDto) UnsetPrimaryDocument()`

UnsetPrimaryDocument ensures that no value is present for PrimaryDocument, not even an explicit nil
### GetPrimaryDocDescription

`func (o *DTOFilingMetadataDto) GetPrimaryDocDescription() string`

GetPrimaryDocDescription returns the PrimaryDocDescription field if non-nil, zero value otherwise.

### GetPrimaryDocDescriptionOk

`func (o *DTOFilingMetadataDto) GetPrimaryDocDescriptionOk() (*string, bool)`

GetPrimaryDocDescriptionOk returns a tuple with the PrimaryDocDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimaryDocDescription

`func (o *DTOFilingMetadataDto) SetPrimaryDocDescription(v string)`

SetPrimaryDocDescription sets PrimaryDocDescription field to given value.

### HasPrimaryDocDescription

`func (o *DTOFilingMetadataDto) HasPrimaryDocDescription() bool`

HasPrimaryDocDescription returns a boolean if a field has been set.

### SetPrimaryDocDescriptionNil

`func (o *DTOFilingMetadataDto) SetPrimaryDocDescriptionNil(b bool)`

 SetPrimaryDocDescriptionNil sets the value for PrimaryDocDescription to be an explicit nil

### UnsetPrimaryDocDescription
`func (o *DTOFilingMetadataDto) UnsetPrimaryDocDescription()`

UnsetPrimaryDocDescription ensures that no value is present for PrimaryDocDescription, not even an explicit nil
### GetSourceFile

`func (o *DTOFilingMetadataDto) GetSourceFile() string`

GetSourceFile returns the SourceFile field if non-nil, zero value otherwise.

### GetSourceFileOk

`func (o *DTOFilingMetadataDto) GetSourceFileOk() (*string, bool)`

GetSourceFileOk returns a tuple with the SourceFile field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSourceFile

`func (o *DTOFilingMetadataDto) SetSourceFile(v string)`

SetSourceFile sets SourceFile field to given value.

### HasSourceFile

`func (o *DTOFilingMetadataDto) HasSourceFile() bool`

HasSourceFile returns a boolean if a field has been set.

### SetSourceFileNil

`func (o *DTOFilingMetadataDto) SetSourceFileNil(b bool)`

 SetSourceFileNil sets the value for SourceFile to be an explicit nil

### UnsetSourceFile
`func (o *DTOFilingMetadataDto) UnsetSourceFile()`

UnsetSourceFile ensures that no value is present for SourceFile, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


