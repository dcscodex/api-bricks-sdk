@isTest
private class OASExchangeRatesApiTest {
    /**
     * Get specific rate
     *
     * Retrieves the exchange rate for a specific base and quote asset at a given time or the current rate.\n            \n:::info\nIf you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.\n:::
     */
    @isTest
    private static void getSpecificRateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetIdBase' => 'null',
            'assetIdQuote' => 'null'
        };

        OASClient client;
        OASExchangeRatesApi api;
        OASV1ExchangeRate response;
        OASV1ExchangeRate expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExchangeRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASV1ExchangeRate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRate.getExample();
        response = (OASV1ExchangeRate) api.getSpecificRate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRate.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRate.getExample();
        response = (OASV1ExchangeRate) api.getSpecificRate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRate.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRate.getExample();
        response = (OASV1ExchangeRate) api.getSpecificRate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRate.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRate.getExample();
        response = (OASV1ExchangeRate) api.getSpecificRate(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASExchangeRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASV1ExchangeRate.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRate.getExample();
        response = (OASV1ExchangeRate) api.getSpecificRate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRate.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRate.getExample();
        response = (OASV1ExchangeRate) api.getSpecificRate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRate.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRate.getExample();
        response = (OASV1ExchangeRate) api.getSpecificRate(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRate.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRate.getExample();
        response = (OASV1ExchangeRate) api.getSpecificRate(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get all current rates
     *
     * Get the current exchange rate between requested asset and all other assets.\n            \n:::info\nIf you are using an exchange rate for mission-critical operations, then for best reliability, you should measure the difference between current time and the time returned from the response to ensure that value of the difference between those meets your internal requirements.\n:::\n            \n:::info\nYou can invert the rates by using Y &#x3D; 1 / X equation, for example BTC/USD &#x3D; 1 / (USD/BTC);\n:::
     */
    @isTest
    private static void v1ExchangerateAssetIdBaseGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetIdBase' => 'null',
            'filterAssetId' => 'null',
            'invert' => ''
        };

        OASClient client;
        OASExchangeRatesApi api;
        OASV1ExchangeRates response;
        OASV1ExchangeRates expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExchangeRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASV1ExchangeRates.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRates.getExample();
        response = (OASV1ExchangeRates) api.v1ExchangerateAssetIdBaseGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRates.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRates.getExample();
        response = (OASV1ExchangeRates) api.v1ExchangerateAssetIdBaseGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRates.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRates.getExample();
        response = (OASV1ExchangeRates) api.v1ExchangerateAssetIdBaseGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRates.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRates.getExample();
        response = (OASV1ExchangeRates) api.v1ExchangerateAssetIdBaseGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASExchangeRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASV1ExchangeRates.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRates.getExample();
        response = (OASV1ExchangeRates) api.v1ExchangerateAssetIdBaseGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRates.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRates.getExample();
        response = (OASV1ExchangeRates) api.v1ExchangerateAssetIdBaseGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRates.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRates.getExample();
        response = (OASV1ExchangeRates) api.v1ExchangerateAssetIdBaseGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASV1ExchangeRates.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASV1ExchangeRates.getExample();
        response = (OASV1ExchangeRates) api.v1ExchangerateAssetIdBaseGet(params);
        System.assertEquals(expectedResponse, response);
    }
}