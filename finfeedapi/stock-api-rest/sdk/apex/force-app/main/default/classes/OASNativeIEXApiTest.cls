@isTest
private class OASNativeIEXApiTest {
    /**
     * Get Admin Messages
     *
     * 
     */
    @isTest
    private static void v1NativeIexAdminMessagesSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASAdminAdminMessageModel> response;
        List<OASAdminAdminMessageModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASAdminAdminMessageModel>{OASAdminAdminMessageModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAdminAdminMessageModel>{OASAdminAdminMessageModel.getExample()};
        response = (List<OASAdminAdminMessageModel>) api.v1NativeIexAdminMessagesSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASAdminAdminMessageModel>{OASAdminAdminMessageModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAdminAdminMessageModel>{OASAdminAdminMessageModel.getExample()};
        response = (List<OASAdminAdminMessageModel>) api.v1NativeIexAdminMessagesSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get System Events
     *
     * 
     */
    @isTest
    private static void v1NativeIexAdminSystemEventGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASAdminSystemEventModel> response;
        List<OASAdminSystemEventModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASAdminSystemEventModel>{OASAdminSystemEventModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAdminSystemEventModel>{OASAdminSystemEventModel.getExample()};
        response = (List<OASAdminSystemEventModel>) api.v1NativeIexAdminSystemEventGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASAdminSystemEventModel>{OASAdminSystemEventModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASAdminSystemEventModel>{OASAdminSystemEventModel.getExample()};
        response = (List<OASAdminSystemEventModel>) api.v1NativeIexAdminSystemEventGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Level-1 Quotes
     *
     * 
     */
    @isTest
    private static void v1NativeIexLevel1QuoteSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASLevel1QuoteUpdateModel> response;
        List<OASLevel1QuoteUpdateModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASLevel1QuoteUpdateModel>{OASLevel1QuoteUpdateModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLevel1QuoteUpdateModel>{OASLevel1QuoteUpdateModel.getExample()};
        response = (List<OASLevel1QuoteUpdateModel>) api.v1NativeIexLevel1QuoteSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASLevel1QuoteUpdateModel>{OASLevel1QuoteUpdateModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLevel1QuoteUpdateModel>{OASLevel1QuoteUpdateModel.getExample()};
        response = (List<OASLevel1QuoteUpdateModel>) api.v1NativeIexLevel1QuoteSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Level-2 Price Level Book
     *
     * 
     */
    @isTest
    private static void v1NativeIexLevel2PriceLevelUpdateSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASLevel2PriceLevelUpdateModel> response;
        List<OASLevel2PriceLevelUpdateModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASLevel2PriceLevelUpdateModel>{OASLevel2PriceLevelUpdateModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLevel2PriceLevelUpdateModel>{OASLevel2PriceLevelUpdateModel.getExample()};
        response = (List<OASLevel2PriceLevelUpdateModel>) api.v1NativeIexLevel2PriceLevelUpdateSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASLevel2PriceLevelUpdateModel>{OASLevel2PriceLevelUpdateModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLevel2PriceLevelUpdateModel>{OASLevel2PriceLevelUpdateModel.getExample()};
        response = (List<OASLevel2PriceLevelUpdateModel>) api.v1NativeIexLevel2PriceLevelUpdateSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Level-3 Order Book
     *
     * 
     */
    @isTest
    private static void v1NativeIexLevel3OrderBookSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASLevel3OrderBookModel> response;
        List<OASLevel3OrderBookModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASLevel3OrderBookModel>{OASLevel3OrderBookModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLevel3OrderBookModel>{OASLevel3OrderBookModel.getExample()};
        response = (List<OASLevel3OrderBookModel>) api.v1NativeIexLevel3OrderBookSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASLevel3OrderBookModel>{OASLevel3OrderBookModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASLevel3OrderBookModel>{OASLevel3OrderBookModel.getExample()};
        response = (List<OASLevel3OrderBookModel>) api.v1NativeIexLevel3OrderBookSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get Trades
     *
     * 
     */
    @isTest
    private static void v1NativeIexTradeSymbolGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'symbol' => 'null',
            'r_date' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASNativeIEXApi api;
        List<OASTradeTradeModel> response;
        List<OASTradeTradeModel> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASNativeIEXApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASTradeTradeModel>{OASTradeTradeModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTradeTradeModel>{OASTradeTradeModel.getExample()};
        response = (List<OASTradeTradeModel>) api.v1NativeIexTradeSymbolGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASNativeIEXApi(client);

        js = JSON.serialize(new List<OASTradeTradeModel>{OASTradeTradeModel.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASTradeTradeModel>{OASTradeTradeModel.getExample()};
        response = (List<OASTradeTradeModel>) api.v1NativeIexTradeSymbolGet(params);
        System.assertEquals(expectedResponse, response);
    }
}