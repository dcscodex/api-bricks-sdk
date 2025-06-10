@isTest
private class OASExternalMetricsApiTest {
    /**
     * Historical metrics for the asset from external sources
     *
     * Get asset metrics history from external data providers. Data is typically aggregated daily.
     */
    @isTest
    private static void v1ExternalmetricsAssetHistoryGetTest() {
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
        OASExternalMetricsApi api;
        List<Object> response;
        List<Object> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v1ExternalmetricsAssetHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of metrics available for specific asset
     *
     * Get all metrics that are actually available for the specified asset from external providers.
     */
    @isTest
    private static void v1ExternalmetricsAssetListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetId' => 'null'
        };

        OASClient client;
        OASExternalMetricsApi api;
        List<OASV1MetricInfo> response;
        List<OASV1MetricInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v1ExternalmetricsAssetListingGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported external assets
     *
     * Get all assets (primarily stablecoins) supported by external data providers.
     */
    @isTest
    private static void v1ExternalmetricsAssetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASExternalMetricsApi api;
        List<OASV1ExternalAsset> response;
        List<OASV1ExternalAsset> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1ExternalAsset>{OASV1ExternalAsset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ExternalAsset>{OASV1ExternalAsset.getExample()};
        response = (List<OASV1ExternalAsset>) api.v1ExternalmetricsAssetsGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical metrics for the chain from external sources
     *
     * Get chain metrics history from external data providers. Data is typically aggregated daily.
     */
    @isTest
    private static void v1ExternalmetricsChainHistoryGetTest() {
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
        OASExternalMetricsApi api;
        List<Object> response;
        List<Object> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v1ExternalmetricsChainHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of metrics available for specific chain
     *
     * Get all metrics that are actually available for the specified blockchain chain from external providers.
     */
    @isTest
    private static void v1ExternalmetricsChainListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'chainId' => 'null'
        };

        OASClient client;
        OASExternalMetricsApi api;
        List<OASV1MetricInfo> response;
        List<OASV1MetricInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v1ExternalmetricsChainListingGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported external chains
     *
     * Get all blockchain chains supported by external data providers.
     */
    @isTest
    private static void v1ExternalmetricsChainsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASExternalMetricsApi api;
        List<OASV1Chain> response;
        List<OASV1Chain> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Chain>{OASV1Chain.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Chain>{OASV1Chain.getExample()};
        response = (List<OASV1Chain>) api.v1ExternalmetricsChainsGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical metrics for the exchange from both external and internal sources
     *
     * Get exchange metrics history from external data providers or internal sources based on metric type.
     */
    @isTest
    private static void v1ExternalmetricsExchangeHistoryGetTest() {
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
        OASExternalMetricsApi api;
        List<Object> response;
        List<Object> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{Object.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{Object.getExample()};
        response = (List<Object>) api.v1ExternalmetricsExchangeHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of metrics available for specific exchange (both external and generic)
     *
     * Get all metrics that are actually available for the specified exchange from both external providers and internal sources.
     */
    @isTest
    private static void v1ExternalmetricsExchangeListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => 'null'
        };

        OASClient client;
        OASExternalMetricsApi api;
        List<OASV1MetricInfo> response;
        List<OASV1MetricInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v1ExternalmetricsExchangeListingGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported external exchanges
     *
     * Get all exchanges that have mapping to external data providers for metrics that actually have sources.\r\nOnly returns exchanges that are properly mapped to external protocols for metrics with defined sources.
     */
    @isTest
    private static void v1ExternalmetricsExchangesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASExternalMetricsApi api;
        List<OASV1ExternalExchange> response;
        List<OASV1ExternalExchange> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1ExternalExchange>{OASV1ExternalExchange.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1ExternalExchange>{OASV1ExternalExchange.getExample()};
        response = (List<OASV1ExternalExchange>) api.v1ExternalmetricsExchangesGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Listing of all supported metrics (both external and generic)
     *
     * Get all metrics available from external data providers and internal generic metrics.\r\nExternal metrics have detailed descriptions, while generic metrics are marked as such.
     */
    @isTest
    private static void v1ExternalmetricsListingGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASExternalMetricsApi api;
        List<OASV1MetricInfo> response;
        List<OASV1MetricInfo> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASExternalMetricsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('ApiKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1MetricInfo>{OASV1MetricInfo.getExample()};
        response = (List<OASV1MetricInfo>) api.v1ExternalmetricsListingGet();
        System.assertEquals(expectedResponse, response);
    }
}