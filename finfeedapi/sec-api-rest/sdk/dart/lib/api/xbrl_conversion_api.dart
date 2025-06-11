//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class XBRLConversionApi {
  XBRLConversionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Convert XBRL data to JSON format
  ///
  /// Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response ```json {   \"StatementsOfIncome\": {     \"RevenueFromContractWithCustomerExcludingAssessedTax\": [       {         \"decimals\": \"-6\",         \"unitRef\": \"U_USD\",         \"period\": {           \"startDate\": \"2023-07-01\",           \"endDate\": \"2024-06-30\"         },         \"value\": \"245122000000\"       }     ]   } } ```
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] htmUrl:
  ///   URL of the filing ending with .htm or .html
  ///
  /// * [String] xbrlUrl:
  ///   URL of the XBRL file ending with .xml
  ///
  /// * [String] accessionNo:
  ///   SEC filing accession number
  Future<Response> v1XbrlConverterGetWithHttpInfo({ String? htmUrl, String? xbrlUrl, String? accessionNo, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/xbrl-converter';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (htmUrl != null) {
      queryParams.addAll(_queryParams('', 'htm-url', htmUrl));
    }
    if (xbrlUrl != null) {
      queryParams.addAll(_queryParams('', 'xbrl-url', xbrlUrl));
    }
    if (accessionNo != null) {
      queryParams.addAll(_queryParams('', 'accession-no', accessionNo));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Convert XBRL data to JSON format
  ///
  /// Converts XBRL data to JSON format using one of three possible input methods.  ### Input Methods  1. HTML URL (htm-url)    - URL of the filing ending with .htm or .html    - Both filing URLs and index page URLs are accepted    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm  2. XBRL URL (xbrl-url)    - URL of the XBRL file ending with .xml    - Can be found in the dataFiles array from Query API    - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml  3. Accession Number (accession-no)    - The SEC filing accession number    - Example: 0001564590-21-004599  :::note Only one of the three parameters should be provided. If multiple parameters are provided, the priority order is: 1. htm-url 2. xbrl-url 3. accession-no :::  ### Supported Filing Types  - Annual Reports (10-K) - Quarterly Reports (10-Q) - Current Reports (8-K) - Registration Statements (S-1, S-3) - Foreign Private Issuer Reports (20-F, 40-F)  ### Response Format  The API returns a JSON object containing: - Financial statements (Income Statement, Balance Sheet, Cash Flow Statement) - Accounting policies and footnotes - Company information - Filing metadata  ### Example Response ```json {   \"StatementsOfIncome\": {     \"RevenueFromContractWithCustomerExcludingAssessedTax\": [       {         \"decimals\": \"-6\",         \"unitRef\": \"U_USD\",         \"period\": {           \"startDate\": \"2023-07-01\",           \"endDate\": \"2024-06-30\"         },         \"value\": \"245122000000\"       }     ]   } } ```
  ///
  /// Parameters:
  ///
  /// * [String] htmUrl:
  ///   URL of the filing ending with .htm or .html
  ///
  /// * [String] xbrlUrl:
  ///   URL of the XBRL file ending with .xml
  ///
  /// * [String] accessionNo:
  ///   SEC filing accession number
  Future<Map<String, Object>?> v1XbrlConverterGet({ String? htmUrl, String? xbrlUrl, String? accessionNo, }) async {
    final response = await v1XbrlConverterGetWithHttpInfo( htmUrl: htmUrl, xbrlUrl: xbrlUrl, accessionNo: accessionNo, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }
}
