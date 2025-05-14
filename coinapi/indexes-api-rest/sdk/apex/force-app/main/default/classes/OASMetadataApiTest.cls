@isTest
private class OASMetadataApiTest {
    /**
     * List all exchanges by exchange_id
     *
     * 
     */
    @isTest
    private static void apiMetadataExchangesExchangeIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASMetadataExchange> response;
        List<OASMetadataExchange> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASMetadataExchange>{OASMetadataExchange.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMetadataExchange>{OASMetadataExchange.getExample()};
        response = (List<OASMetadataExchange>) api.apiMetadataExchangesExchangeIdGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all exchanges
     *
     * Get a detailed list of exchanges provided by the system.\r\n            \r\n:::info\r\nProperties of the output are providing aggregated information from across all symbols related to the specific exchange. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.\r\n:::
     */
    @isTest
    private static void apiMetadataExchangesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterExchangeId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASMetadataExchange> response;
        List<OASMetadataExchange> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASMetadataExchange>{OASMetadataExchange.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMetadataExchange>{OASMetadataExchange.getExample()};
        response = (List<OASMetadataExchange>) api.apiMetadataExchangesGet(params);
        System.assertEquals(expectedResponse, response);
    }
}