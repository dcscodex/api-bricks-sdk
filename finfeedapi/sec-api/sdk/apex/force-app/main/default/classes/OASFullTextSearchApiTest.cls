@isTest
private class OASFullTextSearchApiTest {
    /**
     * Full-text search of SEC filing documents
     *
     * Search across SEC filing documents with advanced filtering and sorting capabilities.\r\n\r\n### Available Sort Fields\r\n\r\nField Name | Description\r\n-----------|-------------\r\nAccessionNumber | SEC filing accession number\r\nFormType | Type of the filing document\r\nFilingDate | Date when filing was submitted\r\nCompanyName | Name of the company\r\nCIK | Central Index Key\r\nDocumentFilename | Name of the filing document\r\nDocumentDescription | Description of the document\r\n\r\n### Search Options\r\n\r\nOption | Description\r\n--------|-------------\r\ntext_contains | Keywords that must appear in the document\r\ntext_not_contain | Keywords that must not appear in the document\r\n\r\n### Date Format\r\nAll dates must be provided in YYYY-MM-DD format\r\n\r\n:::tip\r\nUse text_contains and text_not_contain with multiple keywords separated by commas for more precise searches\r\n:::\r\n\r\n:::note\r\nThe search is case-insensitive and supports partial word matches\r\n:::
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

        api = new OASFullTextSearchApi(new OASClient());

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