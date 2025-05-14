//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/dto_filing_item_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dto_filing_extract_result_dto.g.dart';

/// Represents the result of a filing extraction.
///
/// Properties:
/// * [accessionNumber] 
/// * [formType] 
/// * [items] 
@BuiltValue()
abstract class DTOFilingExtractResultDto implements Built<DTOFilingExtractResultDto, DTOFilingExtractResultDtoBuilder> {
  @BuiltValueField(wireName: r'accession_number')
  String? get accessionNumber;

  @BuiltValueField(wireName: r'form_type')
  String? get formType;

  @BuiltValueField(wireName: r'items')
  BuiltList<DTOFilingItemDto>? get items;

  DTOFilingExtractResultDto._();

  factory DTOFilingExtractResultDto([void updates(DTOFilingExtractResultDtoBuilder b)]) = _$DTOFilingExtractResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DTOFilingExtractResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DTOFilingExtractResultDto> get serializer => _$DTOFilingExtractResultDtoSerializer();
}

class _$DTOFilingExtractResultDtoSerializer implements PrimitiveSerializer<DTOFilingExtractResultDto> {
  @override
  final Iterable<Type> types = const [DTOFilingExtractResultDto, _$DTOFilingExtractResultDto];

  @override
  final String wireName = r'DTOFilingExtractResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DTOFilingExtractResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessionNumber != null) {
      yield r'accession_number';
      yield serializers.serialize(
        object.accessionNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.formType != null) {
      yield r'form_type';
      yield serializers.serialize(
        object.formType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(BuiltList, [FullType(DTOFilingItemDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DTOFilingExtractResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DTOFilingExtractResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accession_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accessionNumber = valueDes;
          break;
        case r'form_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.formType = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DTOFilingItemDto)]),
          ) as BuiltList<DTOFilingItemDto>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DTOFilingExtractResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DTOFilingExtractResultDtoBuilder();
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

