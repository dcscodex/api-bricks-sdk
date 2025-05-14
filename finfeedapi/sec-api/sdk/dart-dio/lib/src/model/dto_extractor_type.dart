//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dto_extractor_type.g.dart';

class DTOExtractorType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'text')
  static const DTOExtractorType text = _$text;
  @BuiltValueEnumConst(wireName: r'html')
  static const DTOExtractorType html = _$html;

  static Serializer<DTOExtractorType> get serializer => _$dTOExtractorTypeSerializer;

  const DTOExtractorType._(String name): super(name);

  static BuiltSet<DTOExtractorType> get values => _$values;
  static DTOExtractorType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DTOExtractorTypeMixin = Object with _$DTOExtractorTypeMixin;

