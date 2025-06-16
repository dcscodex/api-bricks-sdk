@isTest
private class OASOptionsApiTest {
    /**
     * Current data by Exchange
     *
     * Get current options data for a specific exchange.\n\nReturns option data grouped by underlying asset, quote currency, and expiration time,\nwith quotes for both calls and puts at each strike price.
     */
    @isTest
    private static void v1OptionsExchangeIdCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null'
        };

        OASClient client;
        OASOptionsApi api;
        List<OASOptionsOptionExchangeGroup> response;
        List<OASOptionsOptionExchangeGroup> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOptionsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASOptionsOptionExchangeGroup>{OASOptionsOptionExchangeGroup.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOptionsOptionExchangeGroup>{OASOptionsOptionExchangeGroup.getExample()};
        response = (List<OASOptionsOptionExchangeGroup>) api.v1OptionsExchangeIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOptionsApi(client);

        js = JSON.serialize(new List<OASOptionsOptionExchangeGroup>{OASOptionsOptionExchangeGroup.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASOptionsOptionExchangeGroup>{OASOptionsOptionExchangeGroup.getExample()};
        response = (List<OASOptionsOptionExchangeGroup>) api.v1OptionsExchangeIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }
}