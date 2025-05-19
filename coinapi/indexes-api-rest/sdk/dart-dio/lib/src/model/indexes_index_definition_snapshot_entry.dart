//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indexes_index_definition_snapshot_entry.g.dart';

/// IndexesIndexDefinitionSnapshotEntry
///
/// Properties:
/// * [indexId] 
/// * [timestamp] 
/// * [value] 
@BuiltValue()
abstract class IndexesIndexDefinitionSnapshotEntry implements Built<IndexesIndexDefinitionSnapshotEntry, IndexesIndexDefinitionSnapshotEntryBuilder> {
  @BuiltValueField(wireName: r'index_id')
  String? get indexId;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'value')
  double? get value;

  IndexesIndexDefinitionSnapshotEntry._();

  factory IndexesIndexDefinitionSnapshotEntry([void updates(IndexesIndexDefinitionSnapshotEntryBuilder b)]) = _$IndexesIndexDefinitionSnapshotEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexesIndexDefinitionSnapshotEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexesIndexDefinitionSnapshotEntry> get serializer => _$IndexesIndexDefinitionSnapshotEntrySerializer();
}

class _$IndexesIndexDefinitionSnapshotEntrySerializer implements PrimitiveSerializer<IndexesIndexDefinitionSnapshotEntry> {
  @override
  final Iterable<Type> types = const [IndexesIndexDefinitionSnapshotEntry, _$IndexesIndexDefinitionSnapshotEntry];

  @override
  final String wireName = r'IndexesIndexDefinitionSnapshotEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexesIndexDefinitionSnapshotEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.indexId != null) {
      yield r'index_id';
      yield serializers.serialize(
        object.indexId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexesIndexDefinitionSnapshotEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndexesIndexDefinitionSnapshotEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.indexId = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexesIndexDefinitionSnapshotEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexesIndexDefinitionSnapshotEntryBuilder();
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

