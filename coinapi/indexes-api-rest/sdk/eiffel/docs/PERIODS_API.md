# PERIODS_API

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**v1_metadata_periods_get**](PERIODS_API.md#v1_metadata_periods_get) | **Get** /v1/metadata/periods | List all periods


# **v1_metadata_periods_get**
> v1_metadata_periods_get : detachable LIST [METADATA_TIMESERIES_PERIOD]


List all periods

Get full list of supported time periods                ### Available periods                Time unit | Period identifiers  --------- | -----------  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY  Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH  Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS                :::tip  You can assume that we will not remove any periods from this response, however, we may add new ones.  :::


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [METADATA_TIMESERIES_PERIOD]**](Metadata.TimeseriesPeriod.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

