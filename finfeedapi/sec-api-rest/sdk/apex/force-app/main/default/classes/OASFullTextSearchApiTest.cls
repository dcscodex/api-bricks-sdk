@isTest
private class OASFullTextSearchApiTest {
    /**
     * Full-text search of SEC filing documents
     *
     * Search across SEC filing documents with advanced filtering and sorting capabilities.\n\n### Available Sort Fields\n\nField Name | Description\n-----------|-------------\nAccessionNumber | SEC filing accession number\nFormType | Type of the filing document\nFilingDate | Date when filing was submitted\nCompanyName | Name of the company\nCIK | Central Index Key\nDocumentFilename | Name of the filing document\nDocumentDescription | Description of the document\n\n### Search Options\n\nOption | Description\n--------|-------------\ntext_contains | Keywords that must appear in the document\ntext_not_contain | Keywords that must not appear in the document\n\n### Date Format\nAll dates must be provided in YYYY-MM-DD format\n\n:::tip\nUse text_contains and text_not_contain with multiple keywords separated by commas for more precise searches\n:::\n\n:::note\nThe search is case-insensitive and supports partial word matches\n:::
     */
    @isTest
    private static void v1FullTextGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'formType' => 'null',
            'fillingDateStart' => 'null',
            'fillingDateEnd' => 'null',
            'textContains' => 'null',
            'textNotContain' => 'null',
            'pageSize' => '',
            'pageNumber' => '',
            'sortBy' => 'null',
            'sortOrder' => 'null'
        };

        OASClient client;
        OASFullTextSearchApi api;
        List<OASDTOSecFilingResultDto> response;
        List<OASDTOSecFilingResultDto> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASFullTextSearchApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()};
        response = (List<OASDTOSecFilingResultDto>) api.v1FullTextGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()};
        response = (List<OASDTOSecFilingResultDto>) api.v1FullTextGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()};
        response = (List<OASDTOSecFilingResultDto>) api.v1FullTextGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFullTextSearchApi(client);

        js = JSON.serialize(new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()};
        response = (List<OASDTOSecFilingResultDto>) api.v1FullTextGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()};
        response = (List<OASDTOSecFilingResultDto>) api.v1FullTextGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASDTOSecFilingResultDto>{OASDTOSecFilingResultDto.getExample()};
        response = (List<OASDTOSecFilingResultDto>) api.v1FullTextGet(params);
        System.assertEquals(expectedResponse, response);
    }
}