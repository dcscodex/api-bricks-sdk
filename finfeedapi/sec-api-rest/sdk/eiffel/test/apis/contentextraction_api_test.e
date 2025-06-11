note
    description: "API tests for CONTENTEXTRACTION_API"
    date: "$Date$"
    revision: "$Revision$"


class CONTENTEXTRACTION_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_extractor_get
            -- Extract and classify SEC filing content
            --
            -- Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.  ### Supported Form Types  Form Type | Description ----------|------------ 8-K      | Current report filing 10-K     | Annual report filing 10-Q     | Quarterly report filing  ### Content Classification - 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01) - 10-K/10-Q forms: Items categorized by their respective part and item structure  :::note Both HTML and plain text documents are supported for content extraction. :::
        local
            l_response: STRING_TABLE [ANY]
            l_accession_number: STRING_32
            l_type: DTO_EXTRACTOR_TYPE
        do
            -- TODO: Initialize required params.
            -- l_accession_number

            -- l_response := api.v1_extractor_get(l_accession_number, l_type)
            assert ("not_implemented", False)
        end

    test_v1_extractor_item_get
            -- Extract specific item content from SEC filing
            --
            -- Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.  ### Item Number Format  Form Type | Item Format Examples -----------|------------------- 8-K       | 1.01, 2.01, 7.01 10-K      | 1, 2, 3 10-K/10-Q | PartI 1, PartII 2  :::tip For best results, ensure the item number matches exactly with the filing&#39;s structure. :::
        local
            l_response: STRING_32
            l_accession_number: STRING_32
            l_item_number: STRING_32
            l_type: DTO_EXTRACTOR_TYPE
        do
            -- TODO: Initialize required params.
            -- l_accession_number
            -- l_item_number

            -- l_response := api.v1_extractor_item_get(l_accession_number, l_item_number, l_type)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CONTENTEXTRACTION_API
            -- Create an object instance of `CONTENTEXTRACTION_API'.
        once
            create { CONTENTEXTRACTION_API } Result
        end

end
