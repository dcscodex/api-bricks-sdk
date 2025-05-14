//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/admin_retail_liquidity_indicator_model.dart';
import 'package:openapi/src/model/admin_short_sale_price_test_status_model.dart';
import 'package:openapi/src/model/admin_trading_status_model.dart';
import 'package:openapi/src/model/admin_official_price_model.dart';
import 'package:openapi/src/model/admin_auction_information_model.dart';
import 'package:openapi/src/model/admin_operational_halt_status_model.dart';
import 'package:openapi/src/model/admin_security_event_model.dart';
import 'package:openapi/src/model/admin_security_directory_model.dart';
import 'package:openapi/src/model/admin_system_event_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_admin_message_model.g.dart';

/// Represents the response DTO for IEX admin information, combining all symbol-based admin message types
///
/// Properties:
/// * [tradingStatus] 
/// * [officialPrice] 
/// * [securityEvent] 
/// * [auctionInformation] 
/// * [shortSalePriceTest] 
/// * [operationalHaltStatus] 
/// * [retailLiquidityIndicator] 
/// * [systemEvent] 
/// * [securityDirectory] 
@BuiltValue()
abstract class AdminAdminMessageModel implements Built<AdminAdminMessageModel, AdminAdminMessageModelBuilder> {
  @BuiltValueField(wireName: r'trading_status')
  AdminTradingStatusModel? get tradingStatus;

  @BuiltValueField(wireName: r'official_price')
  AdminOfficialPriceModel? get officialPrice;

  @BuiltValueField(wireName: r'security_event')
  AdminSecurityEventModel? get securityEvent;

  @BuiltValueField(wireName: r'auction_information')
  AdminAuctionInformationModel? get auctionInformation;

  @BuiltValueField(wireName: r'short_sale_price_test')
  AdminShortSalePriceTestStatusModel? get shortSalePriceTest;

  @BuiltValueField(wireName: r'operational_halt_status')
  AdminOperationalHaltStatusModel? get operationalHaltStatus;

  @BuiltValueField(wireName: r'retail_liquidity_indicator')
  AdminRetailLiquidityIndicatorModel? get retailLiquidityIndicator;

  @BuiltValueField(wireName: r'system_event')
  AdminSystemEventModel? get systemEvent;

  @BuiltValueField(wireName: r'security_directory')
  AdminSecurityDirectoryModel? get securityDirectory;

  AdminAdminMessageModel._();

  factory AdminAdminMessageModel([void updates(AdminAdminMessageModelBuilder b)]) = _$AdminAdminMessageModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminAdminMessageModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminAdminMessageModel> get serializer => _$AdminAdminMessageModelSerializer();
}

class _$AdminAdminMessageModelSerializer implements PrimitiveSerializer<AdminAdminMessageModel> {
  @override
  final Iterable<Type> types = const [AdminAdminMessageModel, _$AdminAdminMessageModel];

  @override
  final String wireName = r'AdminAdminMessageModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminAdminMessageModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tradingStatus != null) {
      yield r'trading_status';
      yield serializers.serialize(
        object.tradingStatus,
        specifiedType: const FullType(AdminTradingStatusModel),
      );
    }
    if (object.officialPrice != null) {
      yield r'official_price';
      yield serializers.serialize(
        object.officialPrice,
        specifiedType: const FullType(AdminOfficialPriceModel),
      );
    }
    if (object.securityEvent != null) {
      yield r'security_event';
      yield serializers.serialize(
        object.securityEvent,
        specifiedType: const FullType(AdminSecurityEventModel),
      );
    }
    if (object.auctionInformation != null) {
      yield r'auction_information';
      yield serializers.serialize(
        object.auctionInformation,
        specifiedType: const FullType(AdminAuctionInformationModel),
      );
    }
    if (object.shortSalePriceTest != null) {
      yield r'short_sale_price_test';
      yield serializers.serialize(
        object.shortSalePriceTest,
        specifiedType: const FullType(AdminShortSalePriceTestStatusModel),
      );
    }
    if (object.operationalHaltStatus != null) {
      yield r'operational_halt_status';
      yield serializers.serialize(
        object.operationalHaltStatus,
        specifiedType: const FullType(AdminOperationalHaltStatusModel),
      );
    }
    if (object.retailLiquidityIndicator != null) {
      yield r'retail_liquidity_indicator';
      yield serializers.serialize(
        object.retailLiquidityIndicator,
        specifiedType: const FullType(AdminRetailLiquidityIndicatorModel),
      );
    }
    if (object.systemEvent != null) {
      yield r'system_event';
      yield serializers.serialize(
        object.systemEvent,
        specifiedType: const FullType(AdminSystemEventModel),
      );
    }
    if (object.securityDirectory != null) {
      yield r'security_directory';
      yield serializers.serialize(
        object.securityDirectory,
        specifiedType: const FullType(AdminSecurityDirectoryModel),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminAdminMessageModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminAdminMessageModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trading_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminTradingStatusModel),
          ) as AdminTradingStatusModel;
          result.tradingStatus.replace(valueDes);
          break;
        case r'official_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminOfficialPriceModel),
          ) as AdminOfficialPriceModel;
          result.officialPrice.replace(valueDes);
          break;
        case r'security_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminSecurityEventModel),
          ) as AdminSecurityEventModel;
          result.securityEvent.replace(valueDes);
          break;
        case r'auction_information':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminAuctionInformationModel),
          ) as AdminAuctionInformationModel;
          result.auctionInformation.replace(valueDes);
          break;
        case r'short_sale_price_test':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminShortSalePriceTestStatusModel),
          ) as AdminShortSalePriceTestStatusModel;
          result.shortSalePriceTest.replace(valueDes);
          break;
        case r'operational_halt_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminOperationalHaltStatusModel),
          ) as AdminOperationalHaltStatusModel;
          result.operationalHaltStatus.replace(valueDes);
          break;
        case r'retail_liquidity_indicator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminRetailLiquidityIndicatorModel),
          ) as AdminRetailLiquidityIndicatorModel;
          result.retailLiquidityIndicator.replace(valueDes);
          break;
        case r'system_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminSystemEventModel),
          ) as AdminSystemEventModel;
          result.systemEvent.replace(valueDes);
          break;
        case r'security_directory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminSecurityDirectoryModel),
          ) as AdminSecurityDirectoryModel;
          result.securityDirectory.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminAdminMessageModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminAdminMessageModelBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

