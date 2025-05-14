@isTest
private class OASFilingMetadataApiTest {
    /**
     * Query SEC filing metadata
     *
     * Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.\r\n\r\n### Available Sort Fields\r\n\r\nField Name | Description\r\n-----------|-------------\r\nAccessionNumber | SEC filing accession number\r\nFilingDate | Date when filing was submitted\r\nAcceptanceDateTime | Date and time of filing acceptance\r\nReportDate | Date of the report\r\nSize | Size of the filing document\r\n\r\n### Date Format\r\nAll dates must be provided in YYYY-MM-DD format\r\n\r\n### Form Types\r\nForm types can be provided as comma-separated values, e.g.: &quot;10-K,8-K,10-Q&quot;\r\n\r\n:::tip\r\nFor optimal performance, use date ranges and form types to narrow down your search\r\n:::
     */
    @isTest
    private static void v1FilingsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'cik' => 2147483648L,
            'formType' => 'null',
            'fillingDateStart' => 'null',
            'fillingDateEnd' => 'null',
            'reportDateStart' => 'null',
            'reportDateEnd' => 'null',
            'itemsContain' => 'null',
            'pageSize' => '',
            'pageNumber' => '',
            'sortBy' => '',
            'sortOrder' => 'null'
        };

        OASClient client;
        OASFilingMetadataApi api;
        List<OASDTOFilingMetadataDto> response;
        List<OASDTOFilingMetadataDto> expectedResponse;
        String js = '';

        api = new OASFilingMetadataApi(new OASClient());

        js = JSON.serialize(new List<OASDTOFilingMetadataDto>{OASDTOFilingMetadataDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOFilingMetadataDto>{OASDTOFilingMetadataDto.getExample()};
        response = (List<OASDTOFilingMetadataDto>) api.v1FilingsGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDTOFilingMetadataDto>{OASDTOFilingMetadataDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOFilingMetadataDto>{OASDTOFilingMetadataDto.getExample()};
        response = (List<OASDTOFilingMetadataDto>) api.v1FilingsGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(new List<OASDTOFilingMetadataDto>{OASDTOFilingMetadataDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOFilingMetadataDto>{OASDTOFilingMetadataDto.getExample()};
        response = (List<OASDTOFilingMetadataDto>) api.v1FilingsGet(params);
        System.assertEquals(expectedResponse, response);
    }
}