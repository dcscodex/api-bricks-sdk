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
            'assetIdQuote' => 'null',
            'r_time' => 'null'
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
     * Timeseries data
     *
     * Get the historical exchange rates between two assets in the form of the timeseries.
     */
    @isTest
    private static void v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetIdBase' => 'null',
            'assetIdQuote' => 'null',
            'periodId' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASExchangeRatesApi api;
        List<OASV1ExchangeRatesTimeseriesItem> response;
        List<OASV1ExchangeRatesTimeseriesItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExchangeRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1ExchangeRatesTimeseriesItem>{OASV1ExchangeRatesTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ExchangeRatesTimeseriesItem>{OASV1ExchangeRatesTimeseriesItem.getExample()};
        response = (List<OASV1ExchangeRatesTimeseriesItem>) api.v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASExchangeRatesApi(client);

        js = JSON.serialize(new List<OASV1ExchangeRatesTimeseriesItem>{OASV1ExchangeRatesTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ExchangeRatesTimeseriesItem>{OASV1ExchangeRatesTimeseriesItem.getExample()};
        response = (List<OASV1ExchangeRatesTimeseriesItem>) api.v1ExchangerateAssetIdBaseAssetIdQuoteHistoryGet(params);
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
            'invert' => '',
            'r_time' => 'null'
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

    /**
     * Timeseries periods
     *
     * You can also obtain historical exchange rates of any asset pair, grouped into time periods.\nGet full list of supported time periods available for requesting exchange rates historical timeseries data.\n            \n## Timeseries periods\nTime unit |	Period identifiers\n--- | ---\nSecond | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC\nMinute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN\nHour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS\nDay | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY
     */
    @isTest
    private static void v1ExchangerateHistoryPeriodsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASExchangeRatesApi api;
        List<OASV1TimeseriesPeriod> response;
        List<OASV1TimeseriesPeriod> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExchangeRatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1TimeseriesPeriod>{OASV1TimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1TimeseriesPeriod>{OASV1TimeseriesPeriod.getExample()};
        response = (List<OASV1TimeseriesPeriod>) api.v1ExchangerateHistoryPeriodsGet();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASExchangeRatesApi(client);

        js = JSON.serialize(new List<OASV1TimeseriesPeriod>{OASV1TimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1TimeseriesPeriod>{OASV1TimeseriesPeriod.getExample()};
        response = (List<OASV1TimeseriesPeriod>) api.v1ExchangerateHistoryPeriodsGet();
        System.assertEquals(expectedResponse, response);
    }
}