@isTest
private class OASMetricsApiTest {
    /**
     * Current metrics for given asset
     *
     * Get current asset metrics.
     */
    @isTest
    private static void v1MetricsAssetCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'assetId' => 'null',
            'assetIdExternal' => 'null',
            'exchangeId' => 'null'
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1GeneralData> response;
        List<OASV1GeneralData> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1GeneralData>{OASV1GeneralData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1GeneralData>{OASV1GeneralData.getExample()};
        response = (List<OASV1GeneralData>) api.v1MetricsAssetCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1GeneralData>{OASV1GeneralData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1GeneralData>{OASV1GeneralData.getExample()};
        response = (List<OASV1GeneralData>) api.v1MetricsAssetCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical metrics for asset
     *
     * Get asset metrics history.
     */
    @isTest
    private static void v1MetricsAssetHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'exchangeId' => 'null',
            'assetId' => 'null',
            'assetIdExternal' => 'null',
            'timeStart' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeEnd' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeFormat' => 'null',
            'periodId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1MetricData> response;
        List<OASV1MetricData> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricData>{OASV1MetricData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricData>{OASV1MetricData.getExample()};
        response = (List<OASV1MetricData>) api.v1MetricsAssetHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1MetricData>{OASV1MetricData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricData>{OASV1MetricData.getExample()};
        response = (List<OASV1MetricData>) api.v1MetricsAssetHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported metrics for asset
     *
     * Get data metrics for asset.
     */
    @isTest
    private static void v1MetricsAssetListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'exchangeId' => 'null',
            'chainId' => 'null',
            'networkId' => 'null',
            'assetId' => 'null',
            'assetIdExternal' => 'null'
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1ListingItem> response;
        List<OASV1ListingItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1ListingItem>{OASV1ListingItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ListingItem>{OASV1ListingItem.getExample()};
        response = (List<OASV1ListingItem>) api.v1MetricsAssetListingGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1ListingItem>{OASV1ListingItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ListingItem>{OASV1ListingItem.getExample()};
        response = (List<OASV1ListingItem>) api.v1MetricsAssetListingGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Current metrics for given exchange
     *
     * Get current exchange metrics values.
     */
    @isTest
    private static void v1MetricsExchangeCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'metricId' => 'null'
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1GeneralData> response;
        List<OASV1GeneralData> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1GeneralData>{OASV1GeneralData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1GeneralData>{OASV1GeneralData.getExample()};
        response = (List<OASV1GeneralData>) api.v1MetricsExchangeCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1GeneralData>{OASV1GeneralData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1GeneralData>{OASV1GeneralData.getExample()};
        response = (List<OASV1GeneralData>) api.v1MetricsExchangeCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical metrics for the exchange
     *
     * Get exchange metrics history.
     */
    @isTest
    private static void v1MetricsExchangeHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'exchangeId' => 'null',
            'timeStart' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeEnd' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeFormat' => 'null',
            'periodId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1MetricData> response;
        List<OASV1MetricData> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricData>{OASV1MetricData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricData>{OASV1MetricData.getExample()};
        response = (List<OASV1MetricData>) api.v1MetricsExchangeHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1MetricData>{OASV1MetricData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricData>{OASV1MetricData.getExample()};
        response = (List<OASV1MetricData>) api.v1MetricsExchangeHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported exchange metrics
     *
     * Get data metrics for exchange.
     */
    @isTest
    private static void v1MetricsExchangeListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null',
            'metricId' => 'null'
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1ListingItem> response;
        List<OASV1ListingItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1ListingItem>{OASV1ListingItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ListingItem>{OASV1ListingItem.getExample()};
        response = (List<OASV1ListingItem>) api.v1MetricsExchangeListingGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1ListingItem>{OASV1ListingItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ListingItem>{OASV1ListingItem.getExample()};
        response = (List<OASV1ListingItem>) api.v1MetricsExchangeListingGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported metrics by CoinAPI
     *
     * Get all data metrics.
     */
    @isTest
    private static void v1MetricsListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASMetricsApi api;
        List<OASV1Metric> response;
        List<OASV1Metric> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Metric>{OASV1Metric.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Metric>{OASV1Metric.getExample()};
        response = (List<OASV1Metric>) api.v1MetricsListingGet();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1Metric>{OASV1Metric.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Metric>{OASV1Metric.getExample()};
        response = (List<OASV1Metric>) api.v1MetricsListingGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Current metrics for given symbol
     *
     * Get current symbol metrics.
     */
    @isTest
    private static void v1MetricsSymbolCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'symbolId' => 'null',
            'exchangeId' => 'null'
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1GeneralData> response;
        List<OASV1GeneralData> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1GeneralData>{OASV1GeneralData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1GeneralData>{OASV1GeneralData.getExample()};
        response = (List<OASV1GeneralData>) api.v1MetricsSymbolCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1GeneralData>{OASV1GeneralData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1GeneralData>{OASV1GeneralData.getExample()};
        response = (List<OASV1GeneralData>) api.v1MetricsSymbolCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical metrics for symbol
     *
     * Get symbol metrics history.
     */
    @isTest
    private static void v1MetricsSymbolHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'symbolId' => 'null',
            'timeStart' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeEnd' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeFormat' => 'null',
            'periodId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1MetricData> response;
        List<OASV1MetricData> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricData>{OASV1MetricData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricData>{OASV1MetricData.getExample()};
        response = (List<OASV1MetricData>) api.v1MetricsSymbolHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1MetricData>{OASV1MetricData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricData>{OASV1MetricData.getExample()};
        response = (List<OASV1MetricData>) api.v1MetricsSymbolHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported metrics for symbol
     *
     * Get data metrics for symbol.
     */
    @isTest
    private static void v1MetricsSymbolListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'exchangeId' => 'null',
            'symbolId' => 'null'
        };

        OASClient client;
        OASMetricsApi api;
        List<OASV1ListingItem> response;
        List<OASV1ListingItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1ListingItem>{OASV1ListingItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ListingItem>{OASV1ListingItem.getExample()};
        response = (List<OASV1ListingItem>) api.v1MetricsSymbolListingGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsApi(client);

        js = JSON.serialize(new List<OASV1ListingItem>{OASV1ListingItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ListingItem>{OASV1ListingItem.getExample()};
        response = (List<OASV1ListingItem>) api.v1MetricsSymbolListingGet(params);
        System.assertEquals(expectedResponse, response);
    }
}