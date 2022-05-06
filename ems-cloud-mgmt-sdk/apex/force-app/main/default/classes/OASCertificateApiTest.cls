@isTest
private class OASCertificateApiTest {
    /**
     * Get authentication certificate
     *
     * Providing PEM file with the Private Key, Public Key and the Certificate to authenticate to the EMS API.
     */
    @isTest
    private static void certificateTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASCertificateApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASCertificateApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyHeader')).setApiKey('foo-bar-api-key');


        js = JSON.serialize('-----BEGIN PUBLIC KEY-----\nMIIBIjANB.......\n-----END PUBLIC KEY-----\n-----BEGIN PRIVATE KEY-----\nMIIEvwIAA.......\n-----END PRIVATE KEY-----\n-----BEGIN CERTIFICATE-----\nMIIDEjCCA.......\n-----END CERTIFICATE-----\n');
        res.setHeader('Content-Type', '');
        res.setBody(js);
        expectedResponse = '-----BEGIN PUBLIC KEY-----\nMIIBIjANB.......\n-----END PUBLIC KEY-----\n-----BEGIN PRIVATE KEY-----\nMIIEvwIAA.......\n-----END PRIVATE KEY-----\n-----BEGIN CERTIFICATE-----\nMIIDEjCCA.......\n-----END CERTIFICATE-----\n';
        response = (String) api.certificate();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASCertificateApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKeyQueryParam')).setApiKey('foo-bar-api-key');


        js = JSON.serialize('-----BEGIN PUBLIC KEY-----\nMIIBIjANB.......\n-----END PUBLIC KEY-----\n-----BEGIN PRIVATE KEY-----\nMIIEvwIAA.......\n-----END PRIVATE KEY-----\n-----BEGIN CERTIFICATE-----\nMIIDEjCCA.......\n-----END CERTIFICATE-----\n');
        res.setHeader('Content-Type', '');
        res.setBody(js);
        expectedResponse = '-----BEGIN PUBLIC KEY-----\nMIIBIjANB.......\n-----END PUBLIC KEY-----\n-----BEGIN PRIVATE KEY-----\nMIIEvwIAA.......\n-----END PRIVATE KEY-----\n-----BEGIN CERTIFICATE-----\nMIIDEjCCA.......\n-----END CERTIFICATE-----\n';
        response = (String) api.certificate();
        System.assertEquals(expectedResponse, response);
    }
}