//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/dto_extractor_type.dart';
import 'package:openapi/src/model/dto_filing_metadata_dto.dart';
import 'package:openapi/src/model/dto_filing_sort_by.dart';
import 'package:openapi/src/model/dto_sec_filing_result_dto.dart';
import 'package:openapi/src/model/mvc_problem_details.dart';
import 'package:openapi/src/model/mvc_validation_problem_details.dart';

part 'serializers.g.dart';

@SerializersFor([
  DTOExtractorType,
  DTOFilingMetadataDto,
  DTOFilingSortBy,
  DTOSecFilingResultDto,
  MvcProblemDetails,
  MvcValidationProblemDetails,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DTOFilingMetadataDto)]),
        () => ListBuilder<DTOFilingMetadataDto>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DTOSecFilingResultDto)]),
        () => ListBuilder<DTOSecFilingResultDto>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
