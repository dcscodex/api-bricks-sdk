//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:openapi/src/api_util.dart';
import 'package:openapi/src/model/mvc_problem_details.dart';
import 'package:openapi/src/model/mvc_validation_problem_details.dart';

class XBRLConversionApi {

  final Dio _dio;

  final Serializers _serializers;

  const XBRLConversionApi(this._dio, this._serializers);

  /// Convert XBRL data to JSON format
  /// Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response &#x60;&#x60;&#x60;json {   \&quot;StatementsOfIncome\&quot;: {     \&quot;RevenueFromContractWithCustomerExcludingAssessedTax\&quot;: [       {         \&quot;decimals\&quot;: \&quot;-6\&quot;,         \&quot;unitRef\&quot;: \&quot;U_USD\&quot;,         \&quot;period\&quot;: {           \&quot;startDate\&quot;: \&quot;2023-07-01\&quot;,           \&quot;endDate\&quot;: \&quot;2024-06-30\&quot;         },         \&quot;value\&quot;: \&quot;245122000000\&quot;       }     ]   } } &#x60;&#x60;&#x60;
  ///
  /// Parameters:
  /// * [htmUrl] - URL of the filing ending with .htm or .html
  /// * [xbrlUrl] - URL of the XBRL file ending with .xml
  /// * [accessionNo] - SEC filing accession number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltMap<String, JsonObject>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltMap<String, JsonObject>>> v1XbrlConverterGet({ 
    String? htmUrl,
    String? xbrlUrl,
    String? accessionNo,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/xbrl-converter';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'APIKey',
            'keyName': 'Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'JWT',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (htmUrl != null) r'htm-url': encodeQueryParameter(_serializers, htmUrl, const FullType(String)),
      if (xbrlUrl != null) r'xbrl-url': encodeQueryParameter(_serializers, xbrlUrl, const FullType(String)),
      if (accessionNo != null) r'accession-no': encodeQueryParameter(_serializers, accessionNo, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltMap<String, JsonObject>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)]),
      ) as BuiltMap<String, JsonObject>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltMap<String, JsonObject>>(
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
