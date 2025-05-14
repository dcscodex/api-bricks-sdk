//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ContentExtractionApi {
  ContentExtractionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Extract and classify SEC filing content
  ///
  /// Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accessionNumber (required):
  ///   The SEC filing accession number used to retrieve the filing from EDGAR database.
  ///
  /// * [DTOExtractorType] type:
  ///   Result type (text or html, default: text)
  Future<Response> v1ExtractorGetWithHttpInfo(String accessionNumber, { DTOExtractorType? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/extractor';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accession_number', accessionNumber));
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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

  /// Extract and classify SEC filing content
  ///
  /// Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::
  ///
  /// Parameters:
  ///
  /// * [String] accessionNumber (required):
  ///   The SEC filing accession number used to retrieve the filing from EDGAR database.
  ///
  /// * [DTOExtractorType] type:
  ///   Result type (text or html, default: text)
  Future<DTOFilingExtractResultDto?> v1ExtractorGet(String accessionNumber, { DTOExtractorType? type, }) async {
    final response = await v1ExtractorGetWithHttpInfo(accessionNumber,  type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DTOFilingExtractResultDto',) as DTOFilingExtractResultDto;
    
    }
    return null;
  }

  /// Extract specific item content from SEC filing
  ///
  /// Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accessionNumber (required):
  ///   The SEC filing accession number used to retrieve the filing from EDGAR database.
  ///
  /// * [String] itemNumber (required):
  ///   The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
  ///
  /// * [DTOExtractorType] type:
  ///   Result type (text or html, default: text)
  Future<Response> v1ExtractorItemGetWithHttpInfo(String accessionNumber, String itemNumber, { DTOExtractorType? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/extractor/item';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accession_number', accessionNumber));
      queryParams.addAll(_queryParams('', 'item_number', itemNumber));
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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

  /// Extract specific item content from SEC filing
  ///
  /// Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::
  ///
  /// Parameters:
  ///
  /// * [String] accessionNumber (required):
  ///   The SEC filing accession number used to retrieve the filing from EDGAR database.
  ///
  /// * [String] itemNumber (required):
  ///   The specific item number to extract (e.g., \"1.01\", \"2.01\", \"7.01\").
  ///
  /// * [DTOExtractorType] type:
  ///   Result type (text or html, default: text)
  Future<String?> v1ExtractorItemGet(String accessionNumber, String itemNumber, { DTOExtractorType? type, }) async {
    final response = await v1ExtractorItemGetWithHttpInfo(accessionNumber, itemNumber,  type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }
}
