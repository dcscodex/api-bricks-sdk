
# AdminOperationalHaltStatusModel

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **symbol** | **kotlin.String** | The stock symbol |  [optional] |
| **timestampNanos** | **kotlin.Long** | Original timestamp in nanoseconds since epoch |  [optional] |
| **timestamp** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | Time when the operational halt status was recorded as DateTime |  [optional] |
| **operationalHaltStatus** | **kotlin.Int** | Operational halt status as byte value |  [optional] |
| **operationalHaltStatusCode** | **kotlin.String** | Operational halt status as character string |  [optional] |
| **operationalHaltStatusText** | **kotlin.String** | Human-readable description of the operational halt status |  [optional] |
| **isOperationallyHalted** | **kotlin.Boolean** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). |  [optional] |
| **isNotOperationallyHalted** | **kotlin.Boolean** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). |  [optional] |



