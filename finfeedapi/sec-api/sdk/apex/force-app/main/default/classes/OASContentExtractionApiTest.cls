@isTest
private class OASContentExtractionApiTest {
    /**
     * Extract and classify SEC filing content 
     *
     * Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.\r\n\r\n### Supported Form Types\r\n\r\nForm Type | Description\r\n----------|------------\r\n8-K      | Current report filing\r\n10-K     | Annual report filing\r\n10-Q     | Quarterly report filing\r\n\r\n### Content Classification\r\n- 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)\r\n- 10-K/10-Q forms: Items categorized by their respective part and item structure\r\n\r\n:::note\r\nBoth HTML and plain text documents are supported for content extraction.\r\n:::
     */
    @isTest
    private static void v1ExtractorGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'accessionNumber' => 'null',
            'type' => ''
        };

        OASClient client;
        OASContentExtractionApi api;
        OASDTOFilingExtractResultDto response;
        OASDTOFilingExtractResultDto expectedResponse;
        String js = '';

        api = new OASContentExtractionApi(new OASClient());

        js = JSON.serialize(OASDTOFilingExtractResultDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDTOFilingExtractResultDto.getExample();
        response = (OASDTOFilingExtractResultDto) api.v1ExtractorGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(OASDTOFilingExtractResultDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDTOFilingExtractResultDto.getExample();
        response = (OASDTOFilingExtractResultDto) api.v1ExtractorGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize(OASDTOFilingExtractResultDto.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDTOFilingExtractResultDto.getExample();
        response = (OASDTOFilingExtractResultDto) api.v1ExtractorGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Extract specific item content from SEC filing
     *
     * Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.\r\n\r\n### Item Number Format\r\n\r\nForm Type | Item Format Examples\r\n-----------|-------------------\r\n8-K       | 1.01, 2.01, 7.01\r\n10-K      | 1, 2, 3\r\n10-K/10-Q | PartI 1, PartII 2\r\n\r\n:::tip\r\nFor best results, ensure the item number matches exactly with the filing\&#39;s structure.\r\n:::
     */
    @isTest
    private static void v1ExtractorItemGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'accessionNumber' => 'null',
            'itemNumber' => 'null',
            'type' => ''
        };

        OASClient client;
        OASContentExtractionApi api;
        String response;
        String expectedResponse;
        String js = '';

        api = new OASContentExtractionApi(new OASClient());

        js = JSON.serialize('');
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = '';
        response = (String) api.v1ExtractorItemGet(params);
        System.assertEquals(expectedResponse, response);

        js = JSON.serialize('');
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = '';
        response = (String) api.v1ExtractorItemGet(params);
        System.assertEquals(expectedResponse, response);
    }
}