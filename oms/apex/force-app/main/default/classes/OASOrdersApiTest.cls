@isTest
private class OASOrdersApiTest {
    /**
     * Cancel all order
     *
     * Cancel all existing order.
     */
    @isTest
    private static void v1OrdersCancelAllPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCancelAllOrder' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASMessagesOk response;
        OASMessagesOk expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASMessagesOk.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMessagesOk.getExample();
        response = (OASMessagesOk) api.v1OrdersCancelAllPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel order
     *
     * Cancel an existing order, can be used to cancel margin, exchange, and derivative orders. You can cancel the order by the internal order ID or exchange order ID.
     */
    @isTest
    private static void v1OrdersCancelPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSCancelOrder' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASOrderLive response;
        OASOrderLive expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASOrderLive.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderLive.getExample();
        response = (OASOrderLive) api.v1OrdersCancelPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get orders
     *
     * List your current open orders.
     */
    @isTest
    private static void v1OrdersGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => KRAKEN
        };

        OASClient client;
        OASOrdersApi api;
        List<OASOrder> response;
        List<OASOrder> expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(List.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = List.getExample();
        response = (List<OASOrder>) api.v1OrdersGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Create new order
     *
     * You can place two types of orders: limit and market. Orders can only be placed if your account has sufficient funds.
     */
    @isTest
    private static void v1OrdersPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'oaSNewOrder' => ''
        };

        OASClient client;
        OASOrdersApi api;
        OASOrderLive response;
        OASOrderLive expectedResponse;
        String js = '';

        api = new OASOrdersApi(new OASClient());

        js = JSON.serialize(OASOrderLive.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrderLive.getExample();
        response = (OASOrderLive) api.v1OrdersPost(params);
        System.assertEquals(expectedResponse, response);
    }
}