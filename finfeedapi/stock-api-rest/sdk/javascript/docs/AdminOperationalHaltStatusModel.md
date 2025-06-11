# FinFeedApiStockRestApi.AdminOperationalHaltStatusModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **Number** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | **Date** | Time when the operational halt status was recorded as DateTime | [optional] 
**operationalHaltStatus** | **Number** | Operational halt status as byte value | [optional] 
**operationalHaltStatusCode** | **String** | Operational halt status as character string | [optional] 
**operationalHaltStatusText** | **String** | Human-readable description of the operational halt status | [optional] 
**isOperationallyHalted** | **Boolean** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] 
**isNotOperationallyHalted** | **Boolean** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] 


