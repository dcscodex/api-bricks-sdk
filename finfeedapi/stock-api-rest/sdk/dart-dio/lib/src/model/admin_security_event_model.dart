//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_security_event_model.g.dart';

/// Represents the response DTO for security event information
///
/// Properties:
/// * [symbol] - The stock symbol
/// * [timestampNanos] - Original timestamp in nanoseconds since epoch
/// * [timestamp] - Time when the security event was recorded as DateTime
/// * [securityEvent] - Security event as byte value
/// * [securityEventCode] - Security event as character string ('O' or 'C')
/// * [securityEventText] - Human-readable description of the security event
/// * [isOpeningProcessComplete] - Indicates if the security event is 'Opening Process Complete' ('O'/0x4f).
/// * [isClosingProcessComplete] - Indicates if the security event is 'Closing Process Complete' ('C'/0x43).
@BuiltValue()
abstract class AdminSecurityEventModel implements Built<AdminSecurityEventModel, AdminSecurityEventModelBuilder> {
  /// The stock symbol
  @BuiltValueField(wireName: r'symbol')
  String? get symbol;

  /// Original timestamp in nanoseconds since epoch
  @BuiltValueField(wireName: r'timestamp_nanos')
  int? get timestampNanos;

  /// Time when the security event was recorded as DateTime
  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  /// Security event as byte value
  @BuiltValueField(wireName: r'security_event')
  int? get securityEvent;

  /// Security event as character string ('O' or 'C')
  @BuiltValueField(wireName: r'security_event_code')
  String? get securityEventCode;

  /// Human-readable description of the security event
  @BuiltValueField(wireName: r'security_event_text')
  String? get securityEventText;

  /// Indicates if the security event is 'Opening Process Complete' ('O'/0x4f).
  @BuiltValueField(wireName: r'is_opening_process_complete')
  bool? get isOpeningProcessComplete;

  /// Indicates if the security event is 'Closing Process Complete' ('C'/0x43).
  @BuiltValueField(wireName: r'is_closing_process_complete')
  bool? get isClosingProcessComplete;

  AdminSecurityEventModel._();

  factory AdminSecurityEventModel([void updates(AdminSecurityEventModelBuilder b)]) = _$AdminSecurityEventModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminSecurityEventModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminSecurityEventModel> get serializer => _$AdminSecurityEventModelSerializer();
}

class _$AdminSecurityEventModelSerializer implements PrimitiveSerializer<AdminSecurityEventModel> {
  @override
  final Iterable<Type> types = const [AdminSecurityEventModel, _$AdminSecurityEventModel];

  @override
  final String wireName = r'AdminSecurityEventModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminSecurityEventModel object, {
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
    if (object.securityEvent != null) {
      yield r'security_event';
      yield serializers.serialize(
        object.securityEvent,
        specifiedType: const FullType(int),
      );
    }
    if (object.securityEventCode != null) {
      yield r'security_event_code';
      yield serializers.serialize(
        object.securityEventCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.securityEventText != null) {
      yield r'security_event_text';
      yield serializers.serialize(
        object.securityEventText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isOpeningProcessComplete != null) {
      yield r'is_opening_process_complete';
      yield serializers.serialize(
        object.isOpeningProcessComplete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isClosingProcessComplete != null) {
      yield r'is_closing_process_complete';
      yield serializers.serialize(
        object.isClosingProcessComplete,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminSecurityEventModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminSecurityEventModelBuilder result,
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
        case r'security_event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.securityEvent = valueDes;
          break;
        case r'security_event_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.securityEventCode = valueDes;
          break;
        case r'security_event_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.securityEventText = valueDes;
          break;
        case r'is_opening_process_complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOpeningProcessComplete = valueDes;
          break;
        case r'is_closing_process_complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isClosingProcessComplete = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminSecurityEventModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminSecurityEventModelBuilder();
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

