//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_short_sale_price_test_status_model.g.dart';

/// Represents the response DTO for short sale price test status information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the short sale price test status was recorded as DateTime
/// * [shortSalePriceTestStatus] - Short sale price test status as byte value
/// * [shortSalePriceTestStatusCode] - Short sale price test status as hex string
/// * [shortSalePriceTestStatusText] - Human-readable description of the short sale price test status
/// * [isShortSalePriceTestNotInEffect] - Indicates if the short sale price test is not in effect
/// * [isShortSalePriceTestInEffect] - Indicates if the short sale price test is in effect
/// * [detail] - Detail of the short sale price test as byte value
/// * [detailCode] - Detail of the short sale price test as character string
/// * [detailText] - Human-readable description of the short sale price test detail
/// * [isDetailNoPriceTest] - Indicates if there is no price test in place
/// * [isDetailActivated] - Indicates if the short sale price test restriction is in effect due to an intraday price drop
/// * [isDetailContinued] - Indicates if the short sale price test restriction remains in effect from prior day
/// * [isDetailDeactivated] - Indicates if the short sale price test restriction is deactivated
/// * [isDetailNotAvailable] - Indicates if the detail is not available
@BuiltValue()
abstract class AdminShortSalePriceTestStatusModel implements Built<AdminShortSalePriceTestStatusModel, AdminShortSalePriceTestStatusModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the short sale price test status was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Short sale price test status as byte value
  @BuiltValueField(wireName: r'short_sale_price_test_status')
  int? get shortSalePriceTestStatus;

  /// Short sale price test status as hex string
  @BuiltValueField(wireName: r'short_sale_price_test_status_code')
  String? get shortSalePriceTestStatusCode;

  /// Human-readable description of the short sale price test status
  @BuiltValueField(wireName: r'short_sale_price_test_status_text')
  String? get shortSalePriceTestStatusText;

  /// Indicates if the short sale price test is not in effect
  @BuiltValueField(wireName: r'is_short_sale_price_test_not_in_effect')
  bool? get isShortSalePriceTestNotInEffect;

  /// Indicates if the short sale price test is in effect
  @BuiltValueField(wireName: r'is_short_sale_price_test_in_effect')
  bool? get isShortSalePriceTestInEffect;

  /// Detail of the short sale price test as byte value
  @BuiltValueField(wireName: r'detail')
  int? get detail;

  /// Detail of the short sale price test as character string
  @BuiltValueField(wireName: r'detail_code')
  String? get detailCode;

  /// Human-readable description of the short sale price test detail
  @BuiltValueField(wireName: r'detail_text')
  String? get detailText;

  /// Indicates if there is no price test in place
  @BuiltValueField(wireName: r'is_detail_no_price_test')
  bool? get isDetailNoPriceTest;

  /// Indicates if the short sale price test restriction is in effect due to an intraday price drop
  @BuiltValueField(wireName: r'is_detail_activated')
  bool? get isDetailActivated;

  /// Indicates if the short sale price test restriction remains in effect from prior day
  @BuiltValueField(wireName: r'is_detail_continued')
  bool? get isDetailContinued;

  /// Indicates if the short sale price test restriction is deactivated
  @BuiltValueField(wireName: r'is_detail_deactivated')
  bool? get isDetailDeactivated;

  /// Indicates if the detail is not available
  @BuiltValueField(wireName: r'is_detail_not_available')
  bool? get isDetailNotAvailable;

  AdminShortSalePriceTestStatusModel._();

  factory AdminShortSalePriceTestStatusModel([void updates(AdminShortSalePriceTestStatusModelBuilder b)]) = _$AdminShortSalePriceTestStatusModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminShortSalePriceTestStatusModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminShortSalePriceTestStatusModel> get serializer => _$AdminShortSalePriceTestStatusModelSerializer();
}

class _$AdminShortSalePriceTestStatusModelSerializer implements PrimitiveSerializer<AdminShortSalePriceTestStatusModel> {
  @override
  final Iterable<Type> types = const [AdminShortSalePriceTestStatusModel, _$AdminShortSalePriceTestStatusModel];

  @override
  final String wireName = r'AdminShortSalePriceTestStatusModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminShortSalePriceTestStatusModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.symbol != null) {
      yield r'symbol';
      yield serializers.serialize(
        object.symbol,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestampNanos != null) {
      yield r'timestamp_nanos';
      yield serializers.serialize(
        object.timestampNanos,
        specifiedType: const FullType(int),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.shortSalePriceTestStatus != null) {
      yield r'short_sale_price_test_status';
      yield serializers.serialize(
        object.shortSalePriceTestStatus,
        specifiedType: const FullType(int),
      );
    }
    if (object.shortSalePriceTestStatusCode != null) {
      yield r'short_sale_price_test_status_code';
      yield serializers.serialize(
        object.shortSalePriceTestStatusCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shortSalePriceTestStatusText != null) {
      yield r'short_sale_price_test_status_text';
      yield serializers.serialize(
        object.shortSalePriceTestStatusText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isShortSalePriceTestNotInEffect != null) {
      yield r'is_short_sale_price_test_not_in_effect';
      yield serializers.serialize(
        object.isShortSalePriceTestNotInEffect,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isShortSalePriceTestInEffect != null) {
      yield r'is_short_sale_price_test_in_effect';
      yield serializers.serialize(
        object.isShortSalePriceTestInEffect,
        specifiedType: const FullType(bool),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(int),
      );
    }
    if (object.detailCode != null) {
      yield r'detail_code';
      yield serializers.serialize(
        object.detailCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.detailText != null) {
      yield r'detail_text';
      yield serializers.serialize(
        object.detailText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isDetailNoPriceTest != null) {
      yield r'is_detail_no_price_test';
      yield serializers.serialize(
        object.isDetailNoPriceTest,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isDetailActivated != null) {
      yield r'is_detail_activated';
      yield serializers.serialize(
        object.isDetailActivated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isDetailContinued != null) {
      yield r'is_detail_continued';
      yield serializers.serialize(
        object.isDetailContinued,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isDetailDeactivated != null) {
      yield r'is_detail_deactivated';
      yield serializers.serialize(
        object.isDetailDeactivated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isDetailNotAvailable != null) {
      yield r'is_detail_not_available';
      yield serializers.serialize(
        object.isDetailNotAvailable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminShortSalePriceTestStatusModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminShortSalePriceTestStatusModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.symbol = valueDes;
          break;
        case r'timestamp_nanos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestampNanos = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'short_sale_price_test_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.shortSalePriceTestStatus = valueDes;
          break;
        case r'short_sale_price_test_status_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortSalePriceTestStatusCode = valueDes;
          break;
        case r'short_sale_price_test_status_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shortSalePriceTestStatusText = valueDes;
          break;
        case r'is_short_sale_price_test_not_in_effect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isShortSalePriceTestNotInEffect = valueDes;
          break;
        case r'is_short_sale_price_test_in_effect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isShortSalePriceTestInEffect = valueDes;
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.detail = valueDes;
          break;
        case r'detail_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.detailCode = valueDes;
          break;
        case r'detail_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.detailText = valueDes;
          break;
        case r'is_detail_no_price_test':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDetailNoPriceTest = valueDes;
          break;
        case r'is_detail_activated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDetailActivated = valueDes;
          break;
        case r'is_detail_continued':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDetailContinued = valueDes;
          break;
        case r'is_detail_deactivated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDetailDeactivated = valueDes;
          break;
        case r'is_detail_not_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDetailNotAvailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminShortSalePriceTestStatusModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminShortSalePriceTestStatusModelBuilder();
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

