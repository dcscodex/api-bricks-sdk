@isTest
private class OASIndexesApiTest {
    /**
     * Returns all data inputs for a specific index definition
     *
     * 
     */
    @isTest
    private static void v1IndexdefInputDataIndexDefinitionIdAllGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'indexDefinitionId' => 'null'
        };

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexDefinitionInputData> response;
        List<OASIndexesIndexDefinitionInputData> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexDefinitionInputData>{OASIndexesIndexDefinitionInputData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexDefinitionInputData>{OASIndexesIndexDefinitionInputData.getExample()};
        response = (List<OASIndexesIndexDefinitionInputData>) api.v1IndexdefInputDataIndexDefinitionIdAllGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexDefinitionInputData>{OASIndexesIndexDefinitionInputData.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexDefinitionInputData>{OASIndexesIndexDefinitionInputData.getExample()};
        response = (List<OASIndexesIndexDefinitionInputData>) api.v1IndexdefInputDataIndexDefinitionIdAllGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Returns data inputs for certain index definition and time
     *
     * 
     */
    @isTest
    private static void v1IndexdefInputDataIndexDefinitionIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'indexDefinitionId' => 'null',
            'r_time' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'enabledOnly' => '',
            'pendingOnly' => '',
            'filterAssetId' => 'null',
            'withStatusInfo' => ''
        };

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexDefinitionSnapshotEnt> response;
        List<OASIndexesIndexDefinitionSnapshotEnt> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()};
        response = (List<OASIndexesIndexDefinitionSnapshotEnt>) api.v1IndexdefInputDataIndexDefinitionIdGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()};
        response = (List<OASIndexesIndexDefinitionSnapshotEnt>) api.v1IndexdefInputDataIndexDefinitionIdGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get all multi-asset weights
     *
     * 
     */
    @isTest
    private static void v1IndexdefMultiassetGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexMultiAssetWeight> response;
        List<OASIndexesIndexMultiAssetWeight> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexMultiAssetWeight>{OASIndexesIndexMultiAssetWeight.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexMultiAssetWeight>{OASIndexesIndexMultiAssetWeight.getExample()};
        response = (List<OASIndexesIndexMultiAssetWeight>) api.v1IndexdefMultiassetGet();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexMultiAssetWeight>{OASIndexesIndexMultiAssetWeight.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexMultiAssetWeight>{OASIndexesIndexMultiAssetWeight.getExample()};
        response = (List<OASIndexesIndexMultiAssetWeight>) api.v1IndexdefMultiassetGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get multi-asset weights for specific index
     *
     * 
     */
    @isTest
    private static void v1IndexdefMultiassetIndexIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'indexId' => 'null'
        };

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexMultiAssetWeight> response;
        List<OASIndexesIndexMultiAssetWeight> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexMultiAssetWeight>{OASIndexesIndexMultiAssetWeight.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexMultiAssetWeight>{OASIndexesIndexMultiAssetWeight.getExample()};
        response = (List<OASIndexesIndexMultiAssetWeight>) api.v1IndexdefMultiassetIndexIdGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexMultiAssetWeight>{OASIndexesIndexMultiAssetWeight.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexMultiAssetWeight>{OASIndexesIndexMultiAssetWeight.getExample()};
        response = (List<OASIndexesIndexMultiAssetWeight>) api.v1IndexdefMultiassetIndexIdGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List indexes
     *
     * 
     */
    @isTest
    private static void v1IndexesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexIdentifier> response;
        List<OASIndexesIndexIdentifier> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexIdentifier>{OASIndexesIndexIdentifier.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexIdentifier>{OASIndexesIndexIdentifier.getExample()};
        response = (List<OASIndexesIndexIdentifier>) api.v1IndexesGet();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexIdentifier>{OASIndexesIndexIdentifier.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexIdentifier>{OASIndexesIndexIdentifier.getExample()};
        response = (List<OASIndexesIndexIdentifier>) api.v1IndexesGet();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Current Index Values for index definition
     *
     * 
     */
    @isTest
    private static void v1IndexesIndexDefinitionIdCurrentSnapshotGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'indexDefinitionId' => 'null'
        };

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexDefinitionSnapshotEnt> response;
        List<OASIndexesIndexDefinitionSnapshotEnt> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()};
        response = (List<OASIndexesIndexDefinitionSnapshotEnt>) api.v1IndexesIndexDefinitionIdCurrentSnapshotGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()};
        response = (List<OASIndexesIndexDefinitionSnapshotEnt>) api.v1IndexesIndexDefinitionIdCurrentSnapshotGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical Index Values for index definition
     *
     * 
     */
    @isTest
    private static void v1IndexesIndexDefinitionIdHistorySnapshotGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'indexDefinitionId' => 'null',
            'r_time' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
        };

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexDefinitionSnapshotEnt> response;
        List<OASIndexesIndexDefinitionSnapshotEnt> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()};
        response = (List<OASIndexesIndexDefinitionSnapshotEnt>) api.v1IndexesIndexDefinitionIdHistorySnapshotGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexDefinitionSnapshotEnt>{OASIndexesIndexDefinitionSnapshotEnt.getExample()};
        response = (List<OASIndexesIndexDefinitionSnapshotEnt>) api.v1IndexesIndexDefinitionIdHistorySnapshotGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Current Index Value
     *
     * 
     */
    @isTest
    private static void v1IndexesIndexIdCurrentGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'indexId' => 'null'
        };

        OASClient client;
        OASIndexesApi api;
        OASIndexesIndexValue response;
        OASIndexesIndexValue expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASIndexesIndexValue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIndexesIndexValue.getExample();
        response = (OASIndexesIndexValue) api.v1IndexesIndexIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIndexesIndexValue.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASIndexesIndexValue.getExample();
        response = (OASIndexesIndexValue) api.v1IndexesIndexIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIndexesIndexValue.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASIndexesIndexValue.getExample();
        response = (OASIndexesIndexValue) api.v1IndexesIndexIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIndexesIndexValue.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASIndexesIndexValue.getExample();
        response = (OASIndexesIndexValue) api.v1IndexesIndexIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(OASIndexesIndexValue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASIndexesIndexValue.getExample();
        response = (OASIndexesIndexValue) api.v1IndexesIndexIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIndexesIndexValue.getExample());
        res.setHeader('Content-Type', 'application/x-msgpack');
        res.setBody(js);
        expectedResponse = OASIndexesIndexValue.getExample();
        response = (OASIndexesIndexValue) api.v1IndexesIndexIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIndexesIndexValue.getExample());
        res.setHeader('Content-Type', 'text/json');
        res.setBody(js);
        expectedResponse = OASIndexesIndexValue.getExample();
        response = (OASIndexesIndexValue) api.v1IndexesIndexIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(OASIndexesIndexValue.getExample());
        res.setHeader('Content-Type', 'text/plain');
        res.setBody(js);
        expectedResponse = OASIndexesIndexValue.getExample();
        response = (OASIndexesIndexValue) api.v1IndexesIndexIdCurrentGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Historical Index Value w/Composition
     *
     * 
     */
    @isTest
    private static void v1IndexesIndexIdHistoryGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'indexId' => 'null',
            'timeStart' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'timeEnd' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
            'r_limit' => ''
        };

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexValue> response;
        List<OASIndexesIndexValue> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexValue>{OASIndexesIndexValue.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexValue>{OASIndexesIndexValue.getExample()};
        response = (List<OASIndexesIndexValue>) api.v1IndexesIndexIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexValue>{OASIndexesIndexValue.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexValue>{OASIndexesIndexValue.getExample()};
        response = (List<OASIndexesIndexValue>) api.v1IndexesIndexIdHistoryGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Timeseries Index Value
     *
     * 
     */
    @isTest
    private static void v1IndexesIndexIdTimeseriesGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'indexId' => 'null',
            'periodId' => 'null',
            'timeStart' => 'null',
            'timeEnd' => 'null',
            'r_limit' => ''
        };

        OASClient client;
        OASIndexesApi api;
        List<OASIndexesIndexTimeseriesItem> response;
        List<OASIndexesIndexTimeseriesItem> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexTimeseriesItem>{OASIndexesIndexTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexTimeseriesItem>{OASIndexesIndexTimeseriesItem.getExample()};
        response = (List<OASIndexesIndexTimeseriesItem>) api.v1IndexesIndexIdTimeseriesGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASIndexesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASIndexesIndexTimeseriesItem>{OASIndexesIndexTimeseriesItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASIndexesIndexTimeseriesItem>{OASIndexesIndexTimeseriesItem.getExample()};
        response = (List<OASIndexesIndexTimeseriesItem>) api.v1IndexesIndexIdTimeseriesGet(params);
        System.assertEquals(expectedResponse, response);
    }
}