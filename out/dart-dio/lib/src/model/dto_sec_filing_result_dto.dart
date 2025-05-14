//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dto_sec_filing_result_dto.g.dart';

/// DTOSecFilingResultDto
///
/// Properties:
/// * [accessionNumber] 
/// * [formType] 
/// * [filingDate] 
/// * [companyName] 
/// * [cik] 
/// * [documentFilename] 
/// * [documentDescription] 
/// * [sourceFile] 
@BuiltValue()
abstract class DTOSecFilingResultDto implements Built<DTOSecFilingResultDto, DTOSecFilingResultDtoBuilder> {
  @BuiltValueField(wireName: r'accession_number')
  String? get accessionNumber;

  @BuiltValueField(wireName: r'form_type')
  String? get formType;

  @BuiltValueField(wireName: r'filing_date')
  Date? get filingDate;

  @BuiltValueField(wireName: r'company_name')
  String? get companyName;

  @BuiltValueField(wireName: r'cik')
  int? get cik;

  @BuiltValueField(wireName: r'document_filename')
  String? get documentFilename;

  @BuiltValueField(wireName: r'document_description')
  String? get documentDescription;

  @BuiltValueField(wireName: r'source_file')
  String? get sourceFile;

  DTOSecFilingResultDto._();

  factory DTOSecFilingResultDto([void updates(DTOSecFilingResultDtoBuilder b)]) = _$DTOSecFilingResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DTOSecFilingResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DTOSecFilingResultDto> get serializer => _$DTOSecFilingResultDtoSerializer();
}

class _$DTOSecFilingResultDtoSerializer implements PrimitiveSerializer<DTOSecFilingResultDto> {
  @override
  final Iterable<Type> types = const [DTOSecFilingResultDto, _$DTOSecFilingResultDto];

  @override
  final String wireName = r'DTOSecFilingResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DTOSecFilingResultDto object, {
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
    if (object.filingDate != null) {
      yield r'filing_date';
      yield serializers.serialize(
        object.filingDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.companyName != null) {
      yield r'company_name';
      yield serializers.serialize(
        object.companyName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cik != null) {
      yield r'cik';
      yield serializers.serialize(
        object.cik,
        specifiedType: const FullType(int),
      );
    }
    if (object.documentFilename != null) {
      yield r'document_filename';
      yield serializers.serialize(
        object.documentFilename,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.documentDescription != null) {
      yield r'document_description';
      yield serializers.serialize(
        object.documentDescription,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceFile != null) {
      yield r'source_file';
      yield serializers.serialize(
        object.sourceFile,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DTOSecFilingResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DTOSecFilingResultDtoBuilder result,
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
        case r'filing_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.filingDate = valueDes;
          break;
        case r'company_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.companyName = valueDes;
          break;
        case r'cik':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cik = valueDes;
          break;
        case r'document_filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.documentFilename = valueDes;
          break;
        case r'document_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.documentDescription = valueDes;
          break;
        case r'source_file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceFile = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DTOSecFilingResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DTOSecFilingResultDtoBuilder();
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

