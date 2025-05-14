# openapi.model.AdminSecurityDirectoryModel

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | The stock symbol | [optional] 
**timestampNanos** | **int** | Original timestamp in nanoseconds since epoch | [optional] 
**timestamp** | [**DateTime**](DateTime.md) | Time when the security directory information was recorded as DateTime | [optional] 
**flags** | **int** | Flags for the security | [optional] 
**roundLotSize** | **int** | Number of shares that represent a round lot | [optional] 
**adjustedPocPrice** | **double** | Adjusted previous official closing price as decimal | [optional] 
**luldTier** | **int** | LULD tier as byte value | [optional] 
**luldTierCode** | **String** | LULD tier as numeric string | [optional] 
**luldTierText** | **String** | Human-readable description of the LULD tier | [optional] 
**isLuldTierNotApplicable** | **bool** | Indicates if LULD Tier is 'Not applicable' (0x0). | [optional] 
**isLuldTier1** | **bool** | Indicates if LULD Tier is 'Tier 1 NMS Stock' (0x1). | [optional] 
**isLuldTier2** | **bool** | Indicates if LULD Tier is 'Tier 2 NMS Stock' (0x2). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


