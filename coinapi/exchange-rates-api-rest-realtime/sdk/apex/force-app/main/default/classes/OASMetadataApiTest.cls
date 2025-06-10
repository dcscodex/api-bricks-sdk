@isTest
private class OASMetadataApiTest {
    /**
     * List all assets by asset ID
     *
     * 
     */
    @isTest
    private static void v1AssetsAssetIdGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'assetId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Asset> response;
        List<OASV1Asset> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Asset>{OASV1Asset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Asset>{OASV1Asset.getExample()};
        response = (List<OASV1Asset>) api.v1AssetsAssetIdGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Asset>{OASV1Asset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Asset>{OASV1Asset.getExample()};
        response = (List<OASV1Asset>) api.v1AssetsAssetIdGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all assets
     *
     * Retrieves all assets.\n            \n:::info\nOur asset identifiers are aligned with the ISO 4217 currency codes standard only for fiat money (government or law regulated currency).\n:::\n            \n:::info\nProperties of the output are providing aggregated information from across all symbols related to the specific asset. If you need to calculate your aggregation (e.g., limiting only the particular type of symbols), you should use /v1/symbols endpoint as a data source.\n:::
     */
    @isTest
    private static void v1AssetsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterAssetId' => 'null'
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Asset> response;
        List<OASV1Asset> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Asset>{OASV1Asset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Asset>{OASV1Asset.getExample()};
        response = (List<OASV1Asset>) api.v1AssetsGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Asset>{OASV1Asset.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Asset>{OASV1Asset.getExample()};
        response = (List<OASV1Asset>) api.v1AssetsGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all asset icons
     *
     * Gets the list of icons (of the given size) for all the assets.
     */
    @isTest
    private static void v1AssetsIconsSizeGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'size' => ''
        };

        OASClient client;
        OASMetadataApi api;
        List<OASV1Icon> response;
        List<OASV1Icon> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Icon>{OASV1Icon.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Icon>{OASV1Icon.getExample()};
        response = (List<OASV1Icon>) api.v1AssetsIconsSizeGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASMetadataApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASV1Icon>{OASV1Icon.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASV1Icon>{OASV1Icon.getExample()};
        response = (List<OASV1Icon>) api.v1AssetsIconsSizeGet(params);
        System.assertEquals(expectedResponse, response);
    }
}