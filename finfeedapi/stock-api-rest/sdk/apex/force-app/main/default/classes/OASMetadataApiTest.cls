@isTest
private class OASMetadataApiTest {
    /**
     * List of exchanges
     *
     * 
     */
    @isTest
    private static void v1ExchangesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASMetadataApi api;
        List<OASFinFeedAPIExchangeModel> response;
        List<OASFinFeedAPIExchangeModel> expectedResponse;
        String js = '';

        api = new OASMetadataApi(new OASClient());

        js = JSON.serialize(new List<OASFinFeedAPIExchangeModel>{OASFinFeedAPIExchangeModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASFinFeedAPIExchangeModel>{OASFinFeedAPIExchangeModel.getExample()};
        response = (List<OASFinFeedAPIExchangeModel>) api.v1ExchangesGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List of symbols for the exchange
     *
     * 
     */
    @isTest
    private static void v1SymbolsExchangeIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASFinFeedAPISymbolModel> response;
        List<OASFinFeedAPISymbolModel> expectedResponse;
        String js = '';

        api = new OASMetadataApi(new OASClient());

        js = JSON.serialize(new List<OASFinFeedAPISymbolModel>{OASFinFeedAPISymbolModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASFinFeedAPISymbolModel>{OASFinFeedAPISymbolModel.getExample()};
        response = (List<OASFinFeedAPISymbolModel>) api.v1SymbolsExchangeIdGet(params);
        System.assertEquals(expectedResponse, response);
    }
}