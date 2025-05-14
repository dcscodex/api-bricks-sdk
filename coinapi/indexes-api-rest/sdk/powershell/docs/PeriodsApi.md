# PSOpenAPITools.PSOpenAPITools\Api.PeriodsApi

All URIs are relative to *https://rest-api.indexes.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1MetadataPeriodsGet**](PeriodsApi.md#Invoke-V1MetadataPeriodsGet) | **GET** /v1/metadata/periods | List all periods


<a id="Invoke-V1MetadataPeriodsGet"></a>
# **Invoke-V1MetadataPeriodsGet**
> MetadataTimeseriesPeriod[] Invoke-V1MetadataPeriodsGet<br>

List all periods

Get full list of supported time periods                ### Available periods                Time unit | Period identifiers  --------- | -----------  Second | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC  Minute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN  Hour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS  Day | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY  Month | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH  Year | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS                :::tip  You can assume that we will not remove any periods from this response, however, we may add new ones.  :::

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: ApiKey
$Configuration.ApiKey.X-CoinAPI-Key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.X-CoinAPI-Key = "Bearer"


# List all periods
try {
    $Result = Invoke-V1MetadataPeriodsGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1MetadataPeriodsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MetadataTimeseriesPeriod[]**](MetadataTimeseriesPeriod.md) (PSCustomObject)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/x-msgpack

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

