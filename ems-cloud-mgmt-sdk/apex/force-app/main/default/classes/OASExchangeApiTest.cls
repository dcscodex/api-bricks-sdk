@isTest
private class OASExchangeApiTest {
    /**
     * Get exchange configuration
     *
     * Get information about the required parameters or server site location of the exchanges supported in the EMS API.
     */
    @isTest
    private static void exchangeLoginRequireTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASExchangeApi api;
        List<OASExchangeLoginRequire> response;
        List<OASExchangeLoginRequire> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExchangeApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyHeader')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASExchangeLoginRequire>{OASExchangeLoginRequire.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASExchangeLoginRequire>{OASExchangeLoginRequire.getExample()};
        response = (List<OASExchangeLoginRequire>) api.exchangeLoginRequire();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASExchangeApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyQueryParam')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASExchangeLoginRequire>{OASExchangeLoginRequire.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASExchangeLoginRequire>{OASExchangeLoginRequire.getExample()};
        response = (List<OASExchangeLoginRequire>) api.exchangeLoginRequire();
        System.assertEquals(expectedResponse, response);
    }
}