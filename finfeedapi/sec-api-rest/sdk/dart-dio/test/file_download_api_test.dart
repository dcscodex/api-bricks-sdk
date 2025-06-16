import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FileDownloadApi
void main() {
  final instance = Openapi().getFileDownloadApi();

  group(FileDownloadApi, () {
    // Download file from SEC EDGAR archive
    //
    // Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: `d123456d10k.htm`, `d789012d8k.htm` - XBRL files: `d123456d10k_htm.xml`, `FilingSummary.xml` - Exhibits: `d123456dexhibit99.htm`, `d123456dex101.htm`  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the `/v1/filings` endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
    //
    //Future v1DownloadGet(String accessionNo, String fileName) async
    test('test v1DownloadGet', () async {
      // TODO
    });

  });
}
