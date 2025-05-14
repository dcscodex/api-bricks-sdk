//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dto_filing_item_dto.g.dart';

/// DTOFilingItemDto
///
/// Properties:
/// * [itemNumber] 
/// * [itemTitle] 
/// * [content] 
@BuiltValue()
abstract class DTOFilingItemDto implements Built<DTOFilingItemDto, DTOFilingItemDtoBuilder> {
  @BuiltValueField(wireName: r'item_number')
  String? get itemNumber;

  @BuiltValueField(wireName: r'item_title')
  String? get itemTitle;

  @BuiltValueField(wireName: r'content')
  String? get content;

  DTOFilingItemDto._();

  factory DTOFilingItemDto([void updates(DTOFilingItemDtoBuilder b)]) = _$DTOFilingItemDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DTOFilingItemDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DTOFilingItemDto> get serializer => _$DTOFilingItemDtoSerializer();
}

class _$DTOFilingItemDtoSerializer implements PrimitiveSerializer<DTOFilingItemDto> {
  @override
  final Iterable<Type> types = const [DTOFilingItemDto, _$DTOFilingItemDto];

  @override
  final String wireName = r'DTOFilingItemDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DTOFilingItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.itemNumber != null) {
      yield r'item_number';
      yield serializers.serialize(
        object.itemNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itemTitle != null) {
      yield r'item_title';
      yield serializers.serialize(
        object.itemTitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DTOFilingItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DTOFilingItemDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.itemNumber = valueDes;
          break;
        case r'item_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.itemTitle = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.content = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DTOFilingItemDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DTOFilingItemDtoBuilder();
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

