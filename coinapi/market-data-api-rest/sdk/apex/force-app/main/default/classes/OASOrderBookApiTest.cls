@isTest
private class OASOrderBookApiTest {
    /**
     * Get current order book
     *
     * Retrieves the current order book for the specified symbol.
     */
    @isTest
    private static void v1OrderbooksSymbolIdCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'limitLevels' => ''
        };

        OASClient client;
        OASOrderBookApi api;
        OASV1OrderBookBase response;
        OASV1OrderBookBase expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderBookApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1OrderbooksSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1OrderbooksSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1OrderbooksSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1OrderbooksSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOrderBookApi(client);

        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1OrderbooksSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1OrderbooksSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1OrderbooksSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookBase.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1OrderBookBase.getExample();
        response = (OASV1OrderBookBase) api.v1OrderbooksSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Current depth of the order book
     *
     * Retrieves the current depth of the order book for the specified symbol.
     */
    @isTest
    private static void v1OrderbooksSymbolIdDepthCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'limitLevels' => ''
        };

        OASClient client;
        OASOrderBookApi api;
        OASV1OrderBookDepth response;
        OASV1OrderBookDepth expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderBookApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASV1OrderBookDepth.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookDepth.getExample();
        response = (OASV1OrderBookDepth) api.v1OrderbooksSymbolIdDepthCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookDepth.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1OrderBookDepth.getExample();
        response = (OASV1OrderBookDepth) api.v1OrderbooksSymbolIdDepthCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookDepth.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookDepth.getExample();
        response = (OASV1OrderBookDepth) api.v1OrderbooksSymbolIdDepthCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookDepth.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1OrderBookDepth.getExample();
        response = (OASV1OrderBookDepth) api.v1OrderbooksSymbolIdDepthCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOrderBookApi(client);

        js = JSON.serialize(OASV1OrderBookDepth.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookDepth.getExample();
        response = (OASV1OrderBookDepth) api.v1OrderbooksSymbolIdDepthCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookDepth.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1OrderBookDepth.getExample();
        response = (OASV1OrderBookDepth) api.v1OrderbooksSymbolIdDepthCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookDepth.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1OrderBookDepth.getExample();
        response = (OASV1OrderBookDepth) api.v1OrderbooksSymbolIdDepthCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1OrderBookDepth.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1OrderBookDepth.getExample();
        response = (OASV1OrderBookDepth) api.v1OrderbooksSymbolIdDepthCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical data
     *
     * Get historical order book snapshots for a specific symbol within time range, returned in time ascending order.\n            \n:::info\nThe historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.\n:::\n\n:::warning\nThe \&#39;time_start\&#39; and \&#39;time_end\&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day.\nPlease use the \&#39;date\&#39; parameter instead for querying data for a specific day without filter.\n:::
     */
    @isTest
    private static void v1OrderbooksSymbolIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'r_date' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null',
            'r_limit' => '',
            'limitLevels' => ''
        };

        OASClient client;
        OASOrderBookApi api;
        List<OASV1OrderBook> response;
        List<OASV1OrderBook> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderBookApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1OrderBook>{OASV1OrderBook.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1OrderBook>{OASV1OrderBook.getExample()};
        response = (List<OASV1OrderBook>) api.v1OrderbooksSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOrderBookApi(client);

        js = JSON.serialize(new List<OASV1OrderBook>{OASV1OrderBook.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1OrderBook>{OASV1OrderBook.getExample()};
        response = (List<OASV1OrderBook>) api.v1OrderbooksSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Latest data
     *
     * Get latest order book snapshots for a specific symbol, returned in time descending order.\n            \n:::info\nThe historical order book data via the REST API is currently limited by a number of updates and to the maximum number of 20 levels.\n:::
     */
    @isTest
    private static void v1OrderbooksSymbolIdLatestGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'r_limit' => '',
            'limitLevels' => ''
        };

        OASClient client;
        OASOrderBookApi api;
        List<OASV1OrderBook> response;
        List<OASV1OrderBook> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASOrderBookApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1OrderBook>{OASV1OrderBook.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1OrderBook>{OASV1OrderBook.getExample()};
        response = (List<OASV1OrderBook>) api.v1OrderbooksSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASOrderBookApi(client);

        js = JSON.serialize(new List<OASV1OrderBook>{OASV1OrderBook.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1OrderBook>{OASV1OrderBook.getExample()};
        response = (List<OASV1OrderBook>) api.v1OrderbooksSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
    }
}