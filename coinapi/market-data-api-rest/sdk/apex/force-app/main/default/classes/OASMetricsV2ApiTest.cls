@isTest
private class OASMetricsV2ApiTest {
    /**
     * Historical metrics for the asset
     *
     * Get asset metrics history.
     */
    @isTest
    private static void v2MetricsAssetHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'assetId' => 'null',
            'timeStart' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeEnd' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeFormat' => 'null',
            'periodId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASMetricsV2Api api;
        List<Object> response;
        List<Object> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsV2Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v2MetricsAssetHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsV2Api(client);

        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v2MetricsAssetHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of metrics available for specific asset
     *
     * Get all metrics that are actually available for the specified asset.
     */
    @isTest
    private static void v2MetricsAssetListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetId' => 'null'
        };

        OASClient client;
        OASMetricsV2Api api;
        List<OASV1MetricInfo> response;
        List<OASV1MetricInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsV2Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v2MetricsAssetListingGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsV2Api(client);

        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v2MetricsAssetListingGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical metrics for the chain
     *
     * Get chain metrics history.
     */
    @isTest
    private static void v2MetricsChainHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'metricId' => 'null',
            'chainId' => 'null',
            'timeStart' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeEnd' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeFormat' => 'null',
            'periodId' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASMetricsV2Api api;
        List<Object> response;
        List<Object> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsV2Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v2MetricsChainHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsV2Api(client);

        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v2MetricsChainHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of metrics available for specific chain
     *
     * Get all metrics that are actually available for the specified blockchain chain.
     */
    @isTest
    private static void v2MetricsChainListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASMetricsV2Api api;
        List<OASV1MetricInfo> response;
        List<OASV1MetricInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsV2Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v2MetricsChainListingGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsV2Api(client);

        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v2MetricsChainListingGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical metrics for the exchange
     *
     * Get exchange metrics history.
     */
    @isTest
    private static void v2MetricsExchangeHistoryGetTest() {
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
        OASMetricsV2Api api;
        List<Object> response;
        List<Object> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsV2Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v2MetricsExchangeHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsV2Api(client);

        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v2MetricsExchangeHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of metrics available for specific exchange
     *
     * Get all metrics that are actually available for the specified exchange.
     */
    @isTest
    private static void v2MetricsExchangeListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null'
        };

        OASClient client;
        OASMetricsV2Api api;
        List<OASV1MetricInfo> response;
        List<OASV1MetricInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsV2Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v2MetricsExchangeListingGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsV2Api(client);

        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v2MetricsExchangeListingGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported metrics
     *
     * Get all metrics available in the system.
     */
    @isTest
    private static void v2MetricsListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASMetricsV2Api api;
        List<OASV1MetricInfo> response;
        List<OASV1MetricInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetricsV2Api(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v2MetricsListingGet();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetricsV2Api(client);

        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v2MetricsListingGet();
        System.assertEquals(expectedResponse, response);
    }
}