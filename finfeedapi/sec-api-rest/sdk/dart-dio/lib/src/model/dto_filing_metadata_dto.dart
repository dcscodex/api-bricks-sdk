//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dto_filing_metadata_dto.g.dart';

/// Represents the response for a single SEC filing metadata record. Maps fields from the edgar_submissions table.
///
/// Properties:
/// * [cik] 
/// * [accessionNumber] 
/// * [filingDate] 
/// * [reportDate] 
/// * [acceptanceDateTime] 
/// * [act] 
/// * [form] 
/// * [fileNumber] 
/// * [filmNumber] 
/// * [items] 
/// * [coreType] 
/// * [size] 
/// * [isXbrl] 
/// * [isInlineXbrl] 
/// * [primaryDocument] 
/// * [primaryDocDescription] 
/// * [sourceFile] 
@BuiltValue()
abstract class DTOFilingMetadataDto implements Built<DTOFilingMetadataDto, DTOFilingMetadataDtoBuilder> {
  @BuiltValueField(wireName: r'cik')
  int? get cik;

  @BuiltValueField(wireName: r'accession_number')
  String? get accessionNumber;

  @BuiltValueField(wireName: r'filing_date')
  Date? get filingDate;

  @BuiltValueField(wireName: r'report_date')
  Date? get reportDate;

  @BuiltValueField(wireName: r'acceptance_date_time')
  DateTime? get acceptanceDateTime;

  @BuiltValueField(wireName: r'act')
  String? get act;

  @BuiltValueField(wireName: r'form')
  String? get form;

  @BuiltValueField(wireName: r'file_number')
  String? get fileNumber;

  @BuiltValueField(wireName: r'film_number')
  String? get filmNumber;

  @BuiltValueField(wireName: r'items')
  String? get items;

  @BuiltValueField(wireName: r'core_type')
  String? get coreType;

  @BuiltValueField(wireName: r'size')
  int? get size;

  @BuiltValueField(wireName: r'is_xbrl')
  bool? get isXbrl;

  @BuiltValueField(wireName: r'is_inline_xbrl')
  bool? get isInlineXbrl;

  @BuiltValueField(wireName: r'primary_document')
  String? get primaryDocument;

  @BuiltValueField(wireName: r'primary_doc_description')
  String? get primaryDocDescription;

  @BuiltValueField(wireName: r'source_file')
  String? get sourceFile;

  DTOFilingMetadataDto._();

  factory DTOFilingMetadataDto([void updates(DTOFilingMetadataDtoBuilder b)]) = _$DTOFilingMetadataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DTOFilingMetadataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DTOFilingMetadataDto> get serializer => _$DTOFilingMetadataDtoSerializer();
}

class _$DTOFilingMetadataDtoSerializer implements PrimitiveSerializer<DTOFilingMetadataDto> {
  @override
  final Iterable<Type> types = const [DTOFilingMetadataDto, _$DTOFilingMetadataDto];

  @override
  final String wireName = r'DTOFilingMetadataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DTOFilingMetadataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cik != null) {
      yield r'cik';
      yield serializers.serialize(
        object.cik,
        specifiedType: const FullType(int),
      );
    }
    if (object.accessionNumber != null) {
      yield r'accession_number';
      yield serializers.serialize(
        object.accessionNumber,
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
    if (object.reportDate != null) {
      yield r'report_date';
      yield serializers.serialize(
        object.reportDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.acceptanceDateTime != null) {
      yield r'acceptance_date_time';
      yield serializers.serialize(
        object.acceptanceDateTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.act != null) {
      yield r'act';
      yield serializers.serialize(
        object.act,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.form != null) {
      yield r'form';
      yield serializers.serialize(
        object.form,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fileNumber != null) {
      yield r'file_number';
      yield serializers.serialize(
        object.fileNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.filmNumber != null) {
      yield r'film_number';
      yield serializers.serialize(
        object.filmNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.coreType != null) {
      yield r'core_type';
      yield serializers.serialize(
        object.coreType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.isXbrl != null) {
      yield r'is_xbrl';
      yield serializers.serialize(
        object.isXbrl,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.isInlineXbrl != null) {
      yield r'is_inline_xbrl';
      yield serializers.serialize(
        object.isInlineXbrl,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.primaryDocument != null) {
      yield r'primary_document';
      yield serializers.serialize(
        object.primaryDocument,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.primaryDocDescription != null) {
      yield r'primary_doc_description';
      yield serializers.serialize(
        object.primaryDocDescription,
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
    DTOFilingMetadataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DTOFilingMetadataDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cik':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cik = valueDes;
          break;
        case r'accession_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accessionNumber = valueDes;
          break;
        case r'filing_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.filingDate = valueDes;
          break;
        case r'report_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.reportDate = valueDes;
          break;
        case r'acceptance_date_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.acceptanceDateTime = valueDes;
          break;
        case r'act':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.act = valueDes;
          break;
        case r'form':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.form = valueDes;
          break;
        case r'file_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fileNumber = valueDes;
          break;
        case r'film_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.filmNumber = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.items = valueDes;
          break;
        case r'core_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.coreType = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.size = valueDes;
          break;
        case r'is_xbrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isXbrl = valueDes;
          break;
        case r'is_inline_xbrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isInlineXbrl = valueDes;
          break;
        case r'primary_document':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.primaryDocument = valueDes;
          break;
        case r'primary_doc_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.primaryDocDescription = valueDes;
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
  DTOFilingMetadataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DTOFilingMetadataDtoBuilder();
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

