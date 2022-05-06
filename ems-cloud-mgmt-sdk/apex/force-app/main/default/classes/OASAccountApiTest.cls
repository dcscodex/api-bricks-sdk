@isTest
private class OASAccountApiTest {
    /**
     * Delete account
     *
     * Delete specific exchange account maintained by the EMS API for your subscription.
     */
    @isTest
    private static void deleteAccountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'exchangeId' => new List<String>{''}
        };

        OASClient client;
        OASAccountApi api;
        String js = '';

        client = new OASClient();
        api = new OASAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyHeader')).setApiKey('foo-bar-api-key');

        api.deleteAccount(params);
        client = new OASClient();
        api = new OASAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyQueryParam')).setApiKey('foo-bar-api-key');

        api.deleteAccount(params);
    }

    /**
     * Delete all accounts
     *
     * Delete all exchange accounts maintained by the EMS API for your subscription.
     */
    @isTest
    private static void deleteAccountAllTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASAccountApi api;
        String js = '';

        client = new OASClient();
        api = new OASAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyHeader')).setApiKey('foo-bar-api-key');

        api.deleteAccountAll();
        client = new OASClient();
        api = new OASAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyQueryParam')).setApiKey('foo-bar-api-key');

        api.deleteAccountAll();
    }

    /**
     * Get accounts
     *
     * Get all accounts maintained for your subscription in the EMS API.
     */
    @isTest
    private static void getAccountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'filterExchangeId' => new List<String>{''}
        };

        OASClient client;
        OASAccountApi api;
        List<OASGetAccount> response;
        List<OASGetAccount> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyHeader')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASGetAccount>{OASGetAccount.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASGetAccount>{OASGetAccount.getExample()};
        response = (List<OASGetAccount>) api.getAccount(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyQueryParam')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASGetAccount>{OASGetAccount.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASGetAccount>{OASGetAccount.getExample()};
        response = (List<OASGetAccount>) api.getAccount(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Add or update account
     *
     * Add new or update existing exchange account for your subscription in the EMS API.
     */
    @isTest
    private static void persistAccountTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => ''
        };

        OASClient client;
        OASAccountApi api;
        String js = '';

        client = new OASClient();
        api = new OASAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyHeader')).setApiKey('foo-bar-api-key');

        api.persistAccount(params);
        client = new OASClient();
        api = new OASAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyQueryParam')).setApiKey('foo-bar-api-key');

        api.persistAccount(params);
    }
}