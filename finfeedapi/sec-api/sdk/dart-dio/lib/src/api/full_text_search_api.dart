//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/dto_sec_filing_result_dto.dart';
import 'package:openapi/src/model/mvc_problem_details.dart';
import 'package:openapi/src/model/mvc_validation_problem_details.dart';

class FullTextSearchApi {

  final Dio _dio;

  final Serializers _serializers;

  const FullTextSearchApi(this._dio, this._serializers);

  /// Full-text search of SEC filing documents
  /// Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
  ///
  /// Parameters:
  /// * [formType] - Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  /// * [fillingDateStart] - Filter by filling date start (inclusive), format YYYY-MM-DD
  /// * [fillingDateEnd] - Filter by filling date end (inclusive), format YYYY-MM-DD
  /// * [textContains] - Keywords that the text must contain. Multiple values can be comma-separated
  /// * [textNotContain] - Keywords that the text must not contain. Multiple values can be comma-separated
  /// * [pageSize] - Number of results per page (default: 100)
  /// * [pageNumber] - Page number to retrieve (default: 1)
  /// * [sortBy] - Field to sort by (default: AccessionNumber)
  /// * [sortOrder] - Sort order (asc or desc). Defaults to asc
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<DTOSecFilingResultDto>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<DTOSecFilingResultDto>>> v1FullTextGet({ 
    String? formType,
    String? fillingDateStart,
    String? fillingDateEnd,
    String? textContains,
    String? textNotContain,
    int? pageSize,
    int? pageNumber,
    String? sortBy = 'AccessionNumber',
    String? sortOrder = 'asc',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/full-text';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (formType != null) r'form_type': encodeQueryParameter(_serializers, formType, const FullType(String)),
      if (fillingDateStart != null) r'filling_date_start': encodeQueryParameter(_serializers, fillingDateStart, const FullType(String)),
      if (fillingDateEnd != null) r'filling_date_end': encodeQueryParameter(_serializers, fillingDateEnd, const FullType(String)),
      if (textContains != null) r'text_contains': encodeQueryParameter(_serializers, textContains, const FullType(String)),
      if (textNotContain != null) r'text_not_contain': encodeQueryParameter(_serializers, textNotContain, const FullType(String)),
      if (pageSize != null) r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (pageNumber != null) r'page_number': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (sortBy != null) r'sort_by': encodeQueryParameter(_serializers, sortBy, const FullType(String)),
      if (sortOrder != null) r'sort_order': encodeQueryParameter(_serializers, sortOrder, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<DTOSecFilingResultDto>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(DTOSecFilingResultDto)]),
      ) as BuiltList<DTOSecFilingResultDto>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<DTOSecFilingResultDto>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
