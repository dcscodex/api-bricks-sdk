//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FileDownloadApi {
  FileDownloadApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Download file from SEC EDGAR archive
  ///
  /// Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accessionNo (required):
  ///   SEC filing accession number in format: 0000000000-00-000000
  ///
  /// * [String] fileName (required):
  ///   Name of the file to download from the filing
  Future<Response> v1DownloadGetWithHttpInfo(String accessionNo, String fileName,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/download';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'accession_no', accessionNo));
      queryParams.addAll(_queryParams('', 'file_name', fileName));

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

  /// Download file from SEC EDGAR archive
  ///
  /// Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
  ///
  /// Parameters:
  ///
  /// * [String] accessionNo (required):
  ///   SEC filing accession number in format: 0000000000-00-000000
  ///
  /// * [String] fileName (required):
  ///   Name of the file to download from the filing
  Future<void> v1DownloadGet(String accessionNo, String fileName,) async {
    final response = await v1DownloadGetWithHttpInfo(accessionNo, fileName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
