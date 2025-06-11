//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FullTextSearchApi {
  FullTextSearchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Full-text search of SEC filing documents
  ///
  /// Search across SEC filing documents with advanced filtering and sorting capabilities.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FormType | Type of the filing document FilingDate | Date when filing was submitted CompanyName | Name of the company CIK | Central Index Key DocumentFilename | Name of the filing document DocumentDescription | Description of the document  ### Search Options  Option | Description --------|------------- text_contains | Keywords that must appear in the document text_not_contain | Keywords that must not appear in the document  ### Date Format All dates must be provided in YYYY-MM-DD format  :::tip Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches :::  :::note The search is case-insensitive and supports partial word matches :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] formType:
  ///   Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  ///
  /// * [String] fillingDateStart:
  ///   Filter by filling date start (inclusive), format YYYY-MM-DD
  ///
  /// * [String] fillingDateEnd:
  ///   Filter by filling date end (inclusive), format YYYY-MM-DD
  ///
  /// * [String] textContains:
  ///   Keywords that the text must contain. Multiple values can be comma-separated
  ///
  /// * [String] textNotContain:
  ///   Keywords that the text must not contain. Multiple values can be comma-separated
  ///
  /// * [int] pageSize:
  ///   Number of results per page (default: 100)
  ///
  /// * [int] pageNumber:
  ///   Page number to retrieve (default: 1)
  ///
  /// * [String] sortBy:
  ///   Field to sort by (default: AccessionNumber)
  ///
  /// * [String] sortOrder:
  ///   Sort order (asc or desc). Defaults to asc
  Future<Response> v1FullTextGetWithHttpInfo({ String? formType, String? fillingDateStart, String? fillingDateEnd, String? textContains, String? textNotContain, int? pageSize, int? pageNumber, String? sortBy, String? sortOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/full-text';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (formType != null) {
      queryParams.addAll(_queryParams('', 'form_type', formType));
    }
    if (fillingDateStart != null) {
      queryParams.addAll(_queryParams('', 'filling_date_start', fillingDateStart));
    }
    if (fillingDateEnd != null) {
      queryParams.addAll(_queryParams('', 'filling_date_end', fillingDateEnd));
    }
    if (textContains != null) {
      queryParams.addAll(_queryParams('', 'text_contains', textContains));
    }
    if (textNotContain != null) {
      queryParams.addAll(_queryParams('', 'text_not_contain', textNotContain));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'page_size', pageSize));
    }
    if (pageNumber != null) {
      queryParams.addAll(_queryParams('', 'page_number', pageNumber));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sort_by', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sort_order', sortOrder));
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

  /// Full-text search of SEC filing documents
  ///
  /// Search across SEC filing documents with advanced filtering and sorting capabilities.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FormType | Type of the filing document FilingDate | Date when filing was submitted CompanyName | Name of the company CIK | Central Index Key DocumentFilename | Name of the filing document DocumentDescription | Description of the document  ### Search Options  Option | Description --------|------------- text_contains | Keywords that must appear in the document text_not_contain | Keywords that must not appear in the document  ### Date Format All dates must be provided in YYYY-MM-DD format  :::tip Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches :::  :::note The search is case-insensitive and supports partial word matches :::
  ///
  /// Parameters:
  ///
  /// * [String] formType:
  ///   Filter by form type (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  ///
  /// * [String] fillingDateStart:
  ///   Filter by filling date start (inclusive), format YYYY-MM-DD
  ///
  /// * [String] fillingDateEnd:
  ///   Filter by filling date end (inclusive), format YYYY-MM-DD
  ///
  /// * [String] textContains:
  ///   Keywords that the text must contain. Multiple values can be comma-separated
  ///
  /// * [String] textNotContain:
  ///   Keywords that the text must not contain. Multiple values can be comma-separated
  ///
  /// * [int] pageSize:
  ///   Number of results per page (default: 100)
  ///
  /// * [int] pageNumber:
  ///   Page number to retrieve (default: 1)
  ///
  /// * [String] sortBy:
  ///   Field to sort by (default: AccessionNumber)
  ///
  /// * [String] sortOrder:
  ///   Sort order (asc or desc). Defaults to asc
  Future<List<DTOSecFilingResultDto>?> v1FullTextGet({ String? formType, String? fillingDateStart, String? fillingDateEnd, String? textContains, String? textNotContain, int? pageSize, int? pageNumber, String? sortBy, String? sortOrder, }) async {
    final response = await v1FullTextGetWithHttpInfo( formType: formType, fillingDateStart: fillingDateStart, fillingDateEnd: fillingDateEnd, textContains: textContains, textNotContain: textNotContain, pageSize: pageSize, pageNumber: pageNumber, sortBy: sortBy, sortOrder: sortOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DTOSecFilingResultDto>') as List)
        .cast<DTOSecFilingResultDto>()
        .toList(growable: false);

    }
    return null;
  }
}
