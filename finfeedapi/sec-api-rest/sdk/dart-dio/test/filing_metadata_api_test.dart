import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FilingMetadataApi
void main() {
  final instance = Openapi().getFilingMetadataApi();

  group(FilingMetadataApi, () {
    // Query SEC filing metadata
    //
    // Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \"10-K,8-K,10-Q\"    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
    //
    //Future<BuiltList<DTOFilingMetadataDto>> v1FilingsGet({ int cik, String ticker, String formType, String fillingDateStart, String fillingDateEnd, String reportDateStart, String reportDateEnd, String itemsContain, int pageSize, int pageNumber, DTOFilingSortBy sortBy, String sortOrder }) async
    test('test v1FilingsGet', () async {
      // TODO
    });

  });
}
