@isTest
private class OASEndpointsApiTest {
    /**
     * Get API endpoints
     *
     * Get all API endpoints that the EMS API expose for your subscription.
     */
    @isTest
    private static void endpointsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterExchangeId' => new List<String>{''}
        };

        OASClient client;
        OASEndpointsApi api;
        List<OASAccountEndpoint> response;
        List<OASAccountEndpoint> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASEndpointsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyHeader')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASAccountEndpoint>{OASAccountEndpoint.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAccountEndpoint>{OASAccountEndpoint.getExample()};
        response = (List<OASAccountEndpoint>) api.endpoints(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASEndpointsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyQueryParam')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASAccountEndpoint>{OASAccountEndpoint.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAccountEndpoint>{OASAccountEndpoint.getExample()};
        response = (List<OASAccountEndpoint>) api.endpoints(params);
        System.assertEquals(expectedResponse, response);
    }
}