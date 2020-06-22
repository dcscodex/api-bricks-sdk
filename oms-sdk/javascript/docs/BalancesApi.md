# OmsRestApi.BalancesApi

All URIs are relative to *http://localhost:3001*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1BalancesGet**](BalancesApi.md#v1BalancesGet) | **GET** /v1/balances | Get balances



## v1BalancesGet

> [Balance] v1BalancesGet(opts)

Get balances

Returns all of your balances, including available balance.

### Example

```javascript
import OmsRestApi from 'oms_rest_api';

let apiInstance = new OmsRestApi.BalancesApi();
let opts = {
  'exchangeId': KRAKEN // String | Exchange name
};
apiInstance.v1BalancesGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Exchange name | [optional] 

### Return type

[**[Balance]**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

