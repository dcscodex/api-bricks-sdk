@isTest
private class OASFilingMetadataApiTest {
    /**
     * Query SEC filing metadata
     *
     * Retrieves metadata for SEC filings based on various filter criteria with pagination and sorting support.\n\n### Available Sort Fields\n\nField Name | Description\n-----------|-------------\nAccessionNumber | SEC filing accession number\nFilingDate | Date when filing was submitted\nAcceptanceDateTime | Date and time of filing acceptance\nReportDate | Date of the report\nSize | Size of the filing document\n\n### Date Format\nAll dates must be provided in YYYY-MM-DD format\n\n### Form Types\nForm types can be provided as comma-separated values, e.g.: &quot;10-K,8-K,10-Q&quot;\n\n:::tip\nFor optimal performance, use date ranges and form types to narrow down your search\n:::
     */
    @isTest
    private static void v1FilingsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'cik' => 2147483648L,
            'ticker' => 'null',
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

        client = new OASClient();
        api = new OASFilingMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


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
        client = new OASClient();
        api = new OASFilingMetadataApi(client);

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