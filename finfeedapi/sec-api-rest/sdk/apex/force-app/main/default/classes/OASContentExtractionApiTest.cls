@isTest
private class OASContentExtractionApiTest {
    /**
     * Extract and classify SEC filing content
     *
     * Retrieves filing content from the EDGAR database and intelligently classifies it according to form type and item categories.\n\n### Supported Form Types\n\nForm Type | Description\n----------|------------\n8-K      | Current report filing\n10-K     | Annual report filing\n10-Q     | Quarterly report filing\n\n### Content Classification\n- 8-K forms: Content classified by item numbers (e.g., 1.01, 2.01)\n- 10-K/10-Q forms: Items categorized by their respective part and item structure\n\n:::note\nBoth HTML and plain text documents are supported for content extraction.\n:::
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
        Map<String, oas_any_type_not_mapped> response;
        Map<String, oas_any_type_not_mapped> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASContentExtractionApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()};
        response = (Map<String, oas_any_type_not_mapped>) api.v1ExtractorGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()};
        response = (Map<String, oas_any_type_not_mapped>) api.v1ExtractorGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASContentExtractionApi(client);

        js = JSON.serialize(new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()};
        response = (Map<String, oas_any_type_not_mapped>) api.v1ExtractorGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()};
        response = (Map<String, oas_any_type_not_mapped>) api.v1ExtractorGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Extract specific item content from SEC filing
     *
     * Retrieves filing content from the EDGAR database and returns only the text content of the specified item number.\n\n### Item Number Format\n\nForm Type | Item Format Examples\n-----------|-------------------\n8-K       | 1.01, 2.01, 7.01\n10-K      | 1, 2, 3\n10-K/10-Q | PartI 1, PartII 2\n\n:::tip\nFor best results, ensure the item number matches exactly with the filing\&#39;s structure.\n:::
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

        client = new OASClient();
        api = new OASContentExtractionApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


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
        client = new OASClient();
        api = new OASContentExtractionApi(client);

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