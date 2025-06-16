note
    description: "API tests for FILEDOWNLOAD_API"
    date: "$Date$"
    revision: "$Revision$"


class FILEDOWNLOAD_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_v1_download_get
            -- Download file from SEC EDGAR archive
            --
            -- Downloads a specific file from the SEC EDGAR archive using the accession number and filename. The file is streamed directly from the SEC servers to the client.  ### Accession Number Format Accession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)  ### File Name Examples - Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60; - XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60; - Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;  ### File Types The endpoint supports downloading various file types from SEC filings: - HTML documents (.htm, .html) - XBRL files (.xml, .xsd) - Text files (.txt) - PDF files (.pdf) - Other document formats as submitted to SEC  :::tip You can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first :::  :::warning This endpoint streams files directly from the SEC. Large files may take longer to download. :::
        local
            l_accession_no: STRING_32
            l_file_name: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_accession_no
            -- l_file_name

            -- api.v1_download_get(l_accession_no, l_file_name)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: FILEDOWNLOAD_API
            -- Create an object instance of `FILEDOWNLOAD_API'.
        once
            create { FILEDOWNLOAD_API } Result
        end

end
