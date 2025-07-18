# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test FilingMetadataApi")

api_instance <- FilingMetadataApi$new()

test_that("V1FilingsGet", {
  # tests for V1FilingsGet
  # base path: https://api.sec.finfeedapi.com
  # Query SEC filing metadata
  # Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.  ### Available Sort Fields  Field Name | Description -----------|------------- AccessionNumber | SEC filing accession number FilingDate | Date when filing was submitted AcceptanceDateTime | Date and time of filing acceptance ReportDate | Date of the report Size | Size of the filing document  ### Date Format All dates must be provided in YYYY-MM-DD format  ### Form Types Form types can be provided as comma-separated values, e.g.: \&quot;10-K,8-K,10-Q\&quot;  :::tip For optimal performance, use date ranges and form types to narrow down your search :::
  # @param cik integer Filter by Central Index Key (CIK) (optional)
  # @param ticker character Filter by stock ticker symbol (optional)
  # @param form_type character Filter by form type(s) (e.g., \"10-K\", \"8-K\"). Multiple values can be comma-separated (optional)
  # @param filling_date_start character Filter by filling date start (inclusive), format YYYY-MM-DD (optional)
  # @param filling_date_end character Filter by filling date end (inclusive), format YYYY-MM-DD (optional)
  # @param report_date_start character Filter by report date start (inclusive), format YYYY-MM-DD (optional)
  # @param report_date_end character Filter by report date end (inclusive), format YYYY-MM-DD (optional)
  # @param items_contain character Filter filings where the 'Items' field contains the specified text (optional)
  # @param page_size integer Number of results per page (default: 50, max: 200) (optional)
  # @param page_number integer Page number to retrieve (default: 1) (optional)
  # @param sort_by DTOFilingSortBy Field to sort results by (default: AccessionNumber) (optional)
  # @param sort_order character Sort order (asc or desc, default: desc) (optional)
  # @return [array[DTOFilingMetadataDto]]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})
