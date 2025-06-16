@isTest
private class OASOrderBookL3ApiTest {
    /**
     * Current order books
     *
     * 
     */
    @isTest
    private static void v1Orderbooks3CurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterSymbolId' => 'null',
            'limitLevels' => ''
        };

        OASClient client;
        OASOrderBookL3Api api;
        List<OASV1OrderBookBase> response;
        List<OASV1OrderBookBase> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderBookL3Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1OrderBookBase>{OASV1OrderBookBase.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1OrderBookBase>{OASV1OrderBookBase.getExample()};
        response = (List<OASV1OrderBookBase>) api.v1Orderbooks3CurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOrderBookL3Api(client);

        js = JSON.serialize(new List<OASV1OrderBookBase>{OASV1OrderBookBase.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1OrderBookBase>{OASV1OrderBookBase.getExample()};
        response = (List<OASV1OrderBookBase>) api.v1Orderbooks3CurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Current order book by symbol_id
     *
     * Retrieves the current order book for the specified symbol.
     */
    @isTest
    private static void v1Orderbooks3SymbolIdCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'limitLevels' => ''
        };

        OASClient client;
        OASOrderBookL3Api api;
        OASV1OrderBookBase response;
        OASV1OrderBookBase expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderBookL3Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1Orderbooks3SymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1Orderbooks3SymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1Orderbooks3SymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1Orderbooks3SymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOrderBookL3Api(client);

        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1Orderbooks3SymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1Orderbooks3SymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1Orderbooks3SymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1Orderbooks3SymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }
}