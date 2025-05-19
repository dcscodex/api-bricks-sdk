//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexes_index_definition_input_data.g.dart';

/// IndexesIndexDefinitionInputData
///
/// Properties:
/// * [exchangeId] 
/// * [exchangeSymbolId] 
/// * [baseAssetId] 
/// * [quoteAssetId] 
/// * [beginDate] 
/// * [endDate] 
/// * [status] 
/// * [statusInfo] 
/// * [lastModificationTime] 
@BuiltValue()
abstract class IndexesIndexDefinitionInputData implements Built<IndexesIndexDefinitionInputData, IndexesIndexDefinitionInputDataBuilder> {
  @BuiltValueField(wireName: r'exchangeId')
  String? get exchangeId;

  @BuiltValueField(wireName: r'exchangeSymbolId')
  String? get exchangeSymbolId;

  @BuiltValueField(wireName: r'baseAssetId')
  String? get baseAssetId;

  @BuiltValueField(wireName: r'quoteAssetId')
  String? get quoteAssetId;

  @BuiltValueField(wireName: r'beginDate')
  DateTime? get beginDate;

  @BuiltValueField(wireName: r'endDate')
  DateTime? get endDate;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'statusInfo')
  String? get statusInfo;

  @BuiltValueField(wireName: r'lastModificationTime')
  DateTime? get lastModificationTime;

  IndexesIndexDefinitionInputData._();

  factory IndexesIndexDefinitionInputData([void updates(IndexesIndexDefinitionInputDataBuilder b)]) = _$IndexesIndexDefinitionInputData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexesIndexDefinitionInputDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexesIndexDefinitionInputData> get serializer => _$IndexesIndexDefinitionInputDataSerializer();
}

class _$IndexesIndexDefinitionInputDataSerializer implements PrimitiveSerializer<IndexesIndexDefinitionInputData> {
  @override
  final Iterable<Type> types = const [IndexesIndexDefinitionInputData, _$IndexesIndexDefinitionInputData];

  @override
  final String wireName = r'IndexesIndexDefinitionInputData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexesIndexDefinitionInputData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exchangeId != null) {
      yield r'exchangeId';
      yield serializers.serialize(
        object.exchangeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.exchangeSymbolId != null) {
      yield r'exchangeSymbolId';
      yield serializers.serialize(
        object.exchangeSymbolId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.baseAssetId != null) {
      yield r'baseAssetId';
      yield serializers.serialize(
        object.baseAssetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.quoteAssetId != null) {
      yield r'quoteAssetId';
      yield serializers.serialize(
        object.quoteAssetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.beginDate != null) {
      yield r'beginDate';
      yield serializers.serialize(
        object.beginDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statusInfo != null) {
      yield r'statusInfo';
      yield serializers.serialize(
        object.statusInfo,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastModificationTime != null) {
      yield r'lastModificationTime';
      yield serializers.serialize(
        object.lastModificationTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexesIndexDefinitionInputData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndexesIndexDefinitionInputDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exchangeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeId = valueDes;
          break;
        case r'exchangeSymbolId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.exchangeSymbolId = valueDes;
          break;
        case r'baseAssetId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.baseAssetId = valueDes;
          break;
        case r'quoteAssetId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.quoteAssetId = valueDes;
          break;
        case r'beginDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.beginDate = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endDate = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'statusInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusInfo = valueDes;
          break;
        case r'lastModificationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastModificationTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexesIndexDefinitionInputData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexesIndexDefinitionInputDataBuilder();
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

