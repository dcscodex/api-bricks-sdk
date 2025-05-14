# ADMIN_OPERATIONAL_HALT_STATUS_MODEL

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | [**STRING_32**](STRING_32.md) | The stock symbol | [optional] [default to null]
**timestamp_nanos** | **INTEGER_64** | Original timestamp in nanoseconds since epoch | [optional] [default to null]
**timestamp** | [**DATE_TIME**](DATE_TIME.md) | Time when the operational halt status was recorded as DateTime | [optional] [default to null]
**operational_halt_status** | **INTEGER_32** | Operational halt status as byte value | [optional] [default to null]
**operational_halt_status_code** | [**STRING_32**](STRING_32.md) | Operational halt status as character string | [optional] [default to null]
**operational_halt_status_text** | [**STRING_32**](STRING_32.md) | Human-readable description of the operational halt status | [optional] [default to null]
**is_operationally_halted** | **BOOLEAN** | Indicates if the status is &#39;IEX specific operational trading halt&#39; (&#39;O&#39;/0x4f). | [optional] [default to null]
**is_not_operationally_halted** | **BOOLEAN** | Indicates if the status is &#39;Not operationally halted on IEX&#39; (&#39;N&#39;/0x4e). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


