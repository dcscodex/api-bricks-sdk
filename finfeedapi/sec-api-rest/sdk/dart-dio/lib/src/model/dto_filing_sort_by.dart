//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dto_filing_sort_by.g.dart';

class DTOFilingSortBy extends EnumClass {

  /// Defines sorting options for the filing query.
  @BuiltValueEnumConst(wireName: r'AccessionNumber')
  static const DTOFilingSortBy accessionNumber = _$accessionNumber;
  /// Defines sorting options for the filing query.
  @BuiltValueEnumConst(wireName: r'FilingDate')
  static const DTOFilingSortBy filingDate = _$filingDate;
  /// Defines sorting options for the filing query.
  @BuiltValueEnumConst(wireName: r'ReportDate')
  static const DTOFilingSortBy reportDate = _$reportDate;
  /// Defines sorting options for the filing query.
  @BuiltValueEnumConst(wireName: r'AcceptanceDateTime')
  static const DTOFilingSortBy acceptanceDateTime = _$acceptanceDateTime;
  /// Defines sorting options for the filing query.
  @BuiltValueEnumConst(wireName: r'Size')
  static const DTOFilingSortBy size = _$size;

  static Serializer<DTOFilingSortBy> get serializer => _$dTOFilingSortBySerializer;

  const DTOFilingSortBy._(String name): super(name);

  static BuiltSet<DTOFilingSortBy> get values => _$values;
  static DTOFilingSortBy valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DTOFilingSortByMixin = Object with _$DTOFilingSortByMixin;

