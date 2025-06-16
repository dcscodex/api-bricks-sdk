@isTest
private class OASTradesApiTest {
    /**
     * Latest data
     *
     * Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
     */
    @isTest
    private static void v1TradesLatestGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterSymbolId' => 'null',
            'includeId' => '',
            'r_limit' => ''
        };

        OASClient client;
        OASTradesApi api;
        List<OASV1Trade> response;
        List<OASV1Trade> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTradesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Trade>{OASV1Trade.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Trade>{OASV1Trade.getExample()};
        response = (List<OASV1Trade>) api.v1TradesLatestGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASTradesApi(client);

        js = JSON.serialize(new List<OASV1Trade>{OASV1Trade.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Trade>{OASV1Trade.getExample()};
        response = (List<OASV1Trade>) api.v1TradesLatestGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical data
     *
     * Get history transactions from specific symbol, returned in time ascending order.\n\n:::warning\nThe \&#39;time_start\&#39; and \&#39;time_end\&#39; parameters must be from the same day as this endpoint provides intraday data only for specific day.\nPlease use the \&#39;date\&#39; parameter instead for querying data for a specific day without filter.\n:::
     */
    @isTest
    private static void v1TradesSymbolIdHistoryGetTest() {
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
            'includeId' => ''
        };

        OASClient client;
        OASTradesApi api;
        List<OASV1Trade> response;
        List<OASV1Trade> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTradesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Trade>{OASV1Trade.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Trade>{OASV1Trade.getExample()};
        response = (List<OASV1Trade>) api.v1TradesSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASTradesApi(client);

        js = JSON.serialize(new List<OASV1Trade>{OASV1Trade.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Trade>{OASV1Trade.getExample()};
        response = (List<OASV1Trade>) api.v1TradesSymbolIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Latest data by symbol_id
     *
     * Get latest trades executed up to 1 minute ago. Latest data is always returned in time descending order.
     */
    @isTest
    private static void v1TradesSymbolIdLatestGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbolId' => 'null',
            'r_limit' => '',
            'includeId' => ''
        };

        OASClient client;
        OASTradesApi api;
        List<OASV1Trade> response;
        List<OASV1Trade> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASTradesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Trade>{OASV1Trade.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Trade>{OASV1Trade.getExample()};
        response = (List<OASV1Trade>) api.v1TradesSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASTradesApi(client);

        js = JSON.serialize(new List<OASV1Trade>{OASV1Trade.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Trade>{OASV1Trade.getExample()};
        response = (List<OASV1Trade>) api.v1TradesSymbolIdLatestGet(params);
        System.assertEquals(expectedResponse, response);
    }
}