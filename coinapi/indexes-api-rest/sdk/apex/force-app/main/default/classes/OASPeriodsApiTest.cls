@isTest
private class OASPeriodsApiTest {
    /**
     * List all periods
     *
     * Get full list of supported time periods\n            \n### Available periods\n            \nTime unit | Period identifiers\n--------- | -----------\nSecond | 1SEC, 2SEC, 3SEC, 4SEC, 5SEC, 6SEC, 10SEC, 15SEC, 20SEC, 30SEC\nMinute | 1MIN, 2MIN, 3MIN, 4MIN, 5MIN, 6MIN, 10MIN, 15MIN, 20MIN, 30MIN\nHour | 1HRS, 2HRS, 3HRS, 4HRS, 6HRS, 8HRS, 12HRS\nDay | 1DAY, 2DAY, 3DAY, 5DAY, 7DAY, 10DAY\nMonth | 1MTH, 2MTH, 3MTH, 4MTH, 6MTH\nYear | 1YRS, 2YRS, 3YRS, 4YRS, 5YRS\n            \n:::tip\nYou can assume that we will not remove any periods from this response, however, we may add new ones.\n:::
     */
    @isTest
    private static void v1MetadataPeriodsGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASPeriodsApi api;
        List<OASMetadataTimeseriesPeriod> response;
        List<OASMetadataTimeseriesPeriod> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASPeriodsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASMetadataTimeseriesPeriod>{OASMetadataTimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMetadataTimeseriesPeriod>{OASMetadataTimeseriesPeriod.getExample()};
        response = (List<OASMetadataTimeseriesPeriod>) api.v1MetadataPeriodsGet();
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASPeriodsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('JWT')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<OASMetadataTimeseriesPeriod>{OASMetadataTimeseriesPeriod.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<OASMetadataTimeseriesPeriod>{OASMetadataTimeseriesPeriod.getExample()};
        response = (List<OASMetadataTimeseriesPeriod>) api.v1MetadataPeriodsGet();
        System.assertEquals(expectedResponse, response);
    }
}