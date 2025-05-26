//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ContentExtractionApi
void main() {
  // final instance = ContentExtractionApi();

  group('tests for ContentExtractionApi', () {
    // Extract and classify SEC filing content
    //
    // Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.    ### Supported Form Types    Form Type | Description  ----------|------------  8-K      | Current report filing  10-K     | Annual report filing  10-Q     | Quarterly report filing    ### Content Classification  - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)  - 10-K/10-Q forms: Items categorized by their respective part and item structure    :::note  Both HTML and plain text documents are supported for content extraction.  :::
    //
    //Future<Map<String, Object>> v1ExtractorGet(String accessionNumber, { DTOExtractorType type }) async
    test('test v1ExtractorGet', () async {
      // TODO
    });

    // Extract specific item content from SEC filing
    //
    // Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.    ### Item Number Format    Form Type | Item Format Examples  -----------|-------------------  8-K       | 1.01, 2.01, 7.01  10-K      | 1, 2, 3  10-K/10-Q | PartI 1, PartII 2    :::tip  For best results, ensure the item number matches exactly with the filing's structure.  :::
    //
    //Future<String> v1ExtractorItemGet(String accessionNumber, String itemNumber, { DTOExtractorType type }) async
    test('test v1ExtractorItemGet', () async {
      // TODO
    });

  });
}
