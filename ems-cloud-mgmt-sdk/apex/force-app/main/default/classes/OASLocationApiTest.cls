@isTest
private class OASLocationApiTest {
    /**
     * Get site locations
     *
     * This endpoint providing information about the server site locations supported in the EMS API.
     */
    @isTest
    private static void locationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASLocationApi api;
        List<OASLocations> response;
        List<OASLocations> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASLocationApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyHeader')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASLocations>{OASLocations.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLocations>{OASLocations.getExample()};
        response = (List<OASLocations>) api.locations();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASLocationApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyQueryParam')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASLocations>{OASLocations.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLocations>{OASLocations.getExample()};
        response = (List<OASLocations>) api.locations();
        System.assertEquals(expectedResponse, response);
    }
}