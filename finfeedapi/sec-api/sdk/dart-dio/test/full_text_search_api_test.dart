import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FullTextSearchApi
void main() {
  final instance = Openapi().getFullTextSearchApi();

  group(FullTextSearchApi, () {
    // Full-text search of SEC filing documents
    //
    // Search across SEC filing documents with advanced filtering and sorting capabilities.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FormType | Type of the filing document  FilingDate | Date when filing was submitted  CompanyName | Name of the company  CIK | Central Index Key  DocumentFilename | Name of the filing document  DocumentDescription | Description of the document    ### Search Options    Option | Description  --------|-------------  text_contains | Keywords that must appear in the document  text_not_contain | Keywords that must not appear in the document    ### Date Format  All dates must be provided in YYYY-MM-DD format    :::tip  Use text_contains and text_not_contain with multiple keywords separated by commas for more precise searches  :::    :::note  The search is case-insensitive and supports partial word matches  :::
    //
    //Future<BuiltList<DTOSecFilingResultDto>> v1FullTextGet({ String formType, String fillingDateStart, String fillingDateEnd, String textContains, String textNotContain, int pageSize, int pageNumber, String sortBy, String sortOrder }) async
    test('test v1FullTextGet', () async {
      // TODO
    });

  });
}
