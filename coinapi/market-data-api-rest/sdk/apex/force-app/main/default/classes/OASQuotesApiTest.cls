@isTest
private class OASQuotesApiTest {
    /**
     * Current data
     *
     * Get current quotes for all symbols or for a specific symbol.\n            \n:::info\nWhen requesting current data for a specific symbol, output is not encapsulated into JSON array as only one item is returned.\n:::
     */
    @isTest
    private static void v1QuotesCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterSymbolId' => 'null'
        };

        OASClient client;
        OASQuotesApi api;
        List<OASV1QuoteTrade> response;
        List<OASV1QuoteTrade> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1QuoteTrade>{OASV1QuoteTrade.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1QuoteTrade>{OASV1QuoteTrade.getExample()};
        response = (List<OASV1QuoteTrade>) api.v1QuotesCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASQuotesApi(client);

        js = JSON.serialize(new List<OASV1QuoteTrade>{OASV1QuoteTrade.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1QuoteTrade>{OASV1QuoteTrade.getExample()};
        response = (List<OASV1QuoteTrade>) api.v1QuotesCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Latest data
     *
     * Get latest updates of the quotes up to 1 minute ago. Latest data is always returned in time descending order.
     */
    @isTest
    private static void v1QuotesLatestGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterSymbolId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASQuotesApi api;
        List<OASV1Quote> response;
        List<OASV1Quote> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Quote>{OASV1Quote.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Quote>{OASV1Quote.getExample()};
        response = (List<OASV1Quote>) api.v1QuotesLatestGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASQuotesApi(client);

        js = JSON.serialize(new List<OASV1Quote>{OASV1Quote.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Quote>{OASV1Quote.getExample()};
        response = (List<OASV1Quote>) api.v1QuotesLatestGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Current quotes for a specific symbol
     *
     * 
     */
    @isTest
    private static void v1QuotesSymbolIdCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null'
        };

        OASClient client;
        OASQuotesApi api;
        OASV1QuoteTrade response;
        OASV1QuoteTrade expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASV1QuoteTrade.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1QuoteTrade.getExample();
        response = (OASV1QuoteTrade) api.v1QuotesSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1QuoteTrade.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1QuoteTrade.getExample();
        response = (OASV1QuoteTrade) api.v1QuotesSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1QuoteTrade.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1QuoteTrade.getExample();
        response = (OASV1QuoteTrade) api.v1QuotesSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1QuoteTrade.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1QuoteTrade.getExample();
        response = (OASV1QuoteTrade) api.v1QuotesSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASQuotesApi(client);

        js = JSON.serialize(OASV1QuoteTrade.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1QuoteTrade.getExample();
        response = (OASV1QuoteTrade) api.v1QuotesSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1QuoteTrade.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1QuoteTrade.getExample();
        response = (OASV1QuoteTrade) api.v1QuotesSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1QuoteTrade.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1QuoteTrade.getExample();
        response = (OASV1QuoteTrade) api.v1QuotesSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1QuoteTrade.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1QuoteTrade.getExample();
        response = (OASV1QuoteTrade) api.v1QuotesSymbolIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical data
     *
     * Get historical quote updates within requested time range, returned in time ascending order.\n\n:::warning\nThe \&#39;time_start\&#39; and \&#39;time_end\&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day.\nPlease use the \&#39;date\&#39; parameter instead for querying data for a specific day without filter.\n:::
     */
    @isTest
    private static void v1QuotesSymbolIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'r_date' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASQuotesApi api;
        List<OASV1Quote> response;
        List<OASV1Quote> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Quote>{OASV1Quote.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Quote>{OASV1Quote.getExample()};
        response = (List<OASV1Quote>) api.v1QuotesSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASQuotesApi(client);

        js = JSON.serialize(new List<OASV1Quote>{OASV1Quote.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Quote>{OASV1Quote.getExample()};
        response = (List<OASV1Quote>) api.v1QuotesSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Latest quote updates for a specific symbol
     *
     * 
     */
    @isTest
    private static void v1QuotesSymbolIdLatestGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASQuotesApi api;
        List<OASV1Quote> response;
        List<OASV1Quote> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASQuotesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Quote>{OASV1Quote.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Quote>{OASV1Quote.getExample()};
        response = (List<OASV1Quote>) api.v1QuotesSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASQuotesApi(client);

        js = JSON.serialize(new List<OASV1Quote>{OASV1Quote.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Quote>{OASV1Quote.getExample()};
        response = (List<OASV1Quote>) api.v1QuotesSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
    }
}