# openapi.model.AdminSystemEventModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the system event was recorded as DateTime | [optional] 
**systemEvent** | **int** | System event as byte value | [optional] 
**systemEventCode** | **String** | System event as string | [optional] 
**systemEventText** | **String** | Human-readable description of the system event | [optional] 
**isSystemEventStartOfMessages** | **bool** | Indicates if the system event is 'Start of Messages' (O).  Outside of heartbeat messages on the lower level protocol,   the start of day message is the first message sent in any trading session. | [optional] 
**isSystemEventStartOfSystemHours** | **bool** | Indicates if the system event is 'Start of System Hours' (S).  This message indicates that IEX is open and ready to start accepting orders. | [optional] 
**isSystemEventStartOfRegularMarketHours** | **bool** | Indicates if the system event is 'Start of Regular Market Hours' (R).  This message indicates that DAY and GTX orders, as well as market orders and pegged orders,   are available for execution on IEX. | [optional] 
**isSystemEventEndOfRegularMarketHours** | **bool** | Indicates if the system event is 'End of Regular Market Hours' (M).  This message indicates that DAY orders, market orders, and pegged orders   are no longer accepted by IEX. | [optional] 
**isSystemEventEndOfSystemHours** | **bool** | Indicates if the system event is 'End of System Hours' (E).  This message indicates that IEX is now closed and will not accept   any new orders during this trading session. It is still possible   to receive messages after the end of day. | [optional] 
**isSystemEventEndOfMessages** | **bool** | Indicates if the system event is 'End of Messages' (C).  This is always the last message sent in any trading session. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


