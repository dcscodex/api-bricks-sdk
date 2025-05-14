//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FilingMetadataApi {
  FilingMetadataApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Query SEC filing metadata
  ///
  /// Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] cik:
  ///   Filter by Central Index Key (CIK)
  ///
  /// * [String] formType:
  ///   Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  ///
  /// * [String] fillingDateStart:
  ///   Filter by filling date start (inclusive), format YYYY-MM-DD
  ///
  /// * [String] fillingDateEnd:
  ///   Filter by filling date end (inclusive), format YYYY-MM-DD
  ///
  /// * [String] reportDateStart:
  ///   Filter by report date start (inclusive), format YYYY-MM-DD
  ///
  /// * [String] reportDateEnd:
  ///   Filter by report date end (inclusive), format YYYY-MM-DD
  ///
  /// * [String] itemsContain:
  ///   Filter filings where the 'Items' field contains the specified text
  ///
  /// * [int] pageSize:
  ///   Number of results per page (default: 50, max: 200)
  ///
  /// * [int] pageNumber:
  ///   Page number to retrieve (default: 1)
  ///
  /// * [DTOFilingSortBy] sortBy:
  ///   Field to sort results by (default: AccessionNumber)
  ///
  /// * [String] sortOrder:
  ///   Sort order (asc or desc, default: desc)
  Future<Response> v1FilingsGetWithHttpInfo({ int? cik, String? formType, String? fillingDateStart, String? fillingDateEnd, String? reportDateStart, String? reportDateEnd, String? itemsContain, int? pageSize, int? pageNumber, DTOFilingSortBy? sortBy, String? sortOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/filings';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cik != null) {
      queryParams.addAll(_queryParams('', 'cik', cik));
    }
    if (formType != null) {
      queryParams.addAll(_queryParams('', 'form_type', formType));
    }
    if (fillingDateStart != null) {
      queryParams.addAll(_queryParams('', 'filling_date_start', fillingDateStart));
    }
    if (fillingDateEnd != null) {
      queryParams.addAll(_queryParams('', 'filling_date_end', fillingDateEnd));
    }
    if (reportDateStart != null) {
      queryParams.addAll(_queryParams('', 'report_date_start', reportDateStart));
    }
    if (reportDateEnd != null) {
      queryParams.addAll(_queryParams('', 'report_date_end', reportDateEnd));
    }
    if (itemsContain != null) {
      queryParams.addAll(_queryParams('', 'items_contain', itemsContain));
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

  /// Query SEC filing metadata
  ///
  /// Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
  ///
  /// Parameters:
  ///
  /// * [int] cik:
  ///   Filter by Central Index Key (CIK)
  ///
  /// * [String] formType:
  ///   Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated
  ///
  /// * [String] fillingDateStart:
  ///   Filter by filling date start (inclusive), format YYYY-MM-DD
  ///
  /// * [String] fillingDateEnd:
  ///   Filter by filling date end (inclusive), format YYYY-MM-DD
  ///
  /// * [String] reportDateStart:
  ///   Filter by report date start (inclusive), format YYYY-MM-DD
  ///
  /// * [String] reportDateEnd:
  ///   Filter by report date end (inclusive), format YYYY-MM-DD
  ///
  /// * [String] itemsContain:
  ///   Filter filings where the 'Items' field contains the specified text
  ///
  /// * [int] pageSize:
  ///   Number of results per page (default: 50, max: 200)
  ///
  /// * [int] pageNumber:
  ///   Page number to retrieve (default: 1)
  ///
  /// * [DTOFilingSortBy] sortBy:
  ///   Field to sort results by (default: AccessionNumber)
  ///
  /// * [String] sortOrder:
  ///   Sort order (asc or desc, default: desc)
  Future<List<DTOFilingMetadataDto>?> v1FilingsGet({ int? cik, String? formType, String? fillingDateStart, String? fillingDateEnd, String? reportDateStart, String? reportDateEnd, String? itemsContain, int? pageSize, int? pageNumber, DTOFilingSortBy? sortBy, String? sortOrder, }) async {
    final response = await v1FilingsGetWithHttpInfo( cik: cik, formType: formType, fillingDateStart: fillingDateStart, fillingDateEnd: fillingDateEnd, reportDateStart: reportDateStart, reportDateEnd: reportDateEnd, itemsContain: itemsContain, pageSize: pageSize, pageNumber: pageNumber, sortBy: sortBy, sortOrder: sortOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DTOFilingMetadataDto>') as List)
        .cast<DTOFilingMetadataDto>()
        .toList(growable: false);

    }
    return null;
  }
}
