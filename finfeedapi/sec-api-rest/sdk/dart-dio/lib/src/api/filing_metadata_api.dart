//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/dto_filing_metadata_dto.dart';
import 'package:openapi/src/model/dto_filing_sort_by.dart';
import 'package:openapi/src/model/mvc_problem_details.dart';
import 'package:openapi/src/model/mvc_validation_problem_details.dart';

class FilingMetadataApi {

  final Dio _dio;

  final Serializers _serializers;

  const FilingMetadataApi(this._dio, this._serializers);

  /// Query SEC filing metadata
  /// Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \&quot;10-K,8-K,10-Q\&quot;    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
  ///
  /// Parameters:
  /// * [cik] - Filter by Central Index Key (CIK)
  /// * [ticker] - Filter by stock ticker symbol
  /// * [formType] - Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  /// * [fillingDateStart] - Filter by filling date start (inclusive), format YYYY-MM-DD
  /// * [fillingDateEnd] - Filter by filling date end (inclusive), format YYYY-MM-DD
  /// * [reportDateStart] - Filter by report date start (inclusive), format YYYY-MM-DD
  /// * [reportDateEnd] - Filter by report date end (inclusive), format YYYY-MM-DD
  /// * [itemsContain] - Filter filings where the 'Items' field contains the specified text
  /// * [pageSize] - Number of results per page (default: 50, max: 200)
  /// * [pageNumber] - Page number to retrieve (default: 1)
  /// * [sortBy] - Field to sort results by (default: AccessionNumber)
  /// * [sortOrder] - Sort order (asc or desc, default: desc)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<DTOFilingMetadataDto>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<DTOFilingMetadataDto>>> v1FilingsGet({ 
    int? cik,
    String? ticker,
    String? formType,
    String? fillingDateStart,
    String? fillingDateEnd,
    String? reportDateStart,
    String? reportDateEnd,
    String? itemsContain,
    int? pageSize,
    int? pageNumber,
    DTOFilingSortBy? sortBy,
    String? sortOrder = 'desc',
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/filings';
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
      if (cik != null) r'cik': encodeQueryParameter(_serializers, cik, const FullType(int)),
      if (ticker != null) r'ticker': encodeQueryParameter(_serializers, ticker, const FullType(String)),
      if (formType != null) r'form_type': encodeQueryParameter(_serializers, formType, const FullType(String)),
      if (fillingDateStart != null) r'filling_date_start': encodeQueryParameter(_serializers, fillingDateStart, const FullType(String)),
      if (fillingDateEnd != null) r'filling_date_end': encodeQueryParameter(_serializers, fillingDateEnd, const FullType(String)),
      if (reportDateStart != null) r'report_date_start': encodeQueryParameter(_serializers, reportDateStart, const FullType(String)),
      if (reportDateEnd != null) r'report_date_end': encodeQueryParameter(_serializers, reportDateEnd, const FullType(String)),
      if (itemsContain != null) r'items_contain': encodeQueryParameter(_serializers, itemsContain, const FullType(String)),
      if (pageSize != null) r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (pageNumber != null) r'page_number': encodeQueryParameter(_serializers, pageNumber, const FullType(int)),
      if (sortBy != null) r'sort_by': encodeQueryParameter(_serializers, sortBy, const FullType(DTOFilingSortBy)),
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

    BuiltList<DTOFilingMetadataDto>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(DTOFilingMetadataDto)]),
      ) as BuiltList<DTOFilingMetadataDto>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<DTOFilingMetadataDto>>(
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
