note
    description: "API tests for FILINGMETADATA_API"
    date: "$Date$"
    revision: "$Revision$"


class FILINGMETADATA_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_filings_get
            -- Query SEC filing metadata
            --
            -- Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.    ### Available Sort Fields    Field Name | Description  -----------|-------------  AccessionNumber | SEC filing accession number  FilingDate | Date when filing was submitted  AcceptanceDateTime | Date and time of filing acceptance  ReportDate | Date of the report  Size | Size of the filing document    ### Date Format  All dates must be provided in YYYY-MM-DD format    ### Form Types  Form types can be provided as comma-separated values, e.g.: \&quot;10-K,8-K,10-Q\&quot;    :::tip  For optimal performance, use date ranges and form types to narrow down your search  :::
        local
            l_response: LIST [DTO_FILING_METADATA_DTO]
            l_cik: INTEGER_64
            l_ticker: STRING_32
            l_form_type: STRING_32
            l_filling_date_start: STRING_32
            l_filling_date_end: STRING_32
            l_report_date_start: STRING_32
            l_report_date_end: STRING_32
            l_items_contain: STRING_32
            l_page_size: INTEGER_32
            l_page_number: INTEGER_32
            l_sort_by: DTO_FILING_SORT_BY
            l_sort_order: STRING_32
        do
            -- TODO: Initialize required params.

            -- l_response := api.v1_filings_get(l_cik, l_ticker, l_form_type, l_filling_date_start, l_filling_date_end, l_report_date_start, l_report_date_end, l_items_contain, l_page_size, l_page_number, l_sort_by, l_sort_order)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: FILINGMETADATA_API
            -- Create an object instance of `FILINGMETADATA_API'.
        once
            create { FILINGMETADATA_API } Result
        end

end
