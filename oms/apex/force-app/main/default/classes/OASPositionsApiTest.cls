@isTest
private class OASPositionsApiTest {
    /**
     * Get positions
     *
     * Returns all of your positions.
     */
    @isTest
    private static void v1PositionsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => KRAKEN
        };

        OASClient client;
        OASPositionsApi api;
        List<OASPosition> response;
        List<OASPosition> expectedResponse;
        String js = '';

        api = new OASPositionsApi(new OASClient());

        js = JSON.serialize(List.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = List.getExample();
        response = (List<OASPosition>) api.v1PositionsGet(params);
        System.assertEquals(expectedResponse, response);
    }
}