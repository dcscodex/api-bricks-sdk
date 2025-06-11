@isTest
private class OASXBRLConversionApiTest {
    /**
     * Convert XBRL data to JSON format
     *
     * Converts XBRL data to JSON format using one of three possible input methods.\n\n### Input Methods\n\n1. HTML URL (htm-url)\n   - URL of the filing ending with .htm or .html\n   - Both filing URLs and index page URLs are accepted\n   - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm\n\n2. XBRL URL (xbrl-url)\n   - URL of the XBRL file ending with .xml\n   - Can be found in the dataFiles array from Query API\n   - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml\n\n3. Accession Number (accession-no)\n   - The SEC filing accession number\n   - Example: 0001564590-21-004599\n\n:::note\nOnly one of the three parameters should be provided. If multiple parameters are provided, the priority order is:\n1. htm-url\n2. xbrl-url\n3. accession-no\n:::\n\n### Supported Filing Types\n\n- Annual Reports (10-K)\n- Quarterly Reports (10-Q)\n- Current Reports (8-K)\n- Registration Statements (S-1, S-3)\n- Foreign Private Issuer Reports (20-F, 40-F)\n\n### Response Format\n\nThe API returns a JSON object containing:\n- Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)\n- Accounting policies and footnotes\n- Company information\n- Filing metadata\n\n### Example Response\n&#x60;&#x60;&#x60;json\n{\n  &quot;StatementsOfIncome&quot;: {\n    &quot;RevenueFromContractWithCustomerExcludingAssessedTax&quot;: [\n      {\n        &quot;decimals&quot;: &quot;-6&quot;,\n        &quot;unitRef&quot;: &quot;U_USD&quot;,\n        &quot;period&quot;: {\n          &quot;startDate&quot;: &quot;2023-07-01&quot;,\n          &quot;endDate&quot;: &quot;2024-06-30&quot;\n        },\n        &quot;value&quot;: &quot;245122000000&quot;\n      }\n    ]\n  }\n}\n&#x60;&#x60;&#x60;
     */
    @isTest
    private static void v1XbrlConverterGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'htmUrl' => 'null',
            'xbrlUrl' => 'null',
            'accessionNo' => 'null'
        };

        OASClient client;
        OASXBRLConversionApi api;
        Map<String, oas_any_type_not_mapped> response;
        Map<String, oas_any_type_not_mapped> expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASXBRLConversionApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()};
        response = (Map<String, oas_any_type_not_mapped>) api.v1XbrlConverterGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()};
        response = (Map<String, oas_any_type_not_mapped>) api.v1XbrlConverterGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASXBRLConversionApi(client);

        js = JSON.serialize(new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()};
        response = (Map<String, oas_any_type_not_mapped>) api.v1XbrlConverterGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, oas_any_type_not_mapped>{'key'=>oas_any_type_not_mapped.getExample()};
        response = (Map<String, oas_any_type_not_mapped>) api.v1XbrlConverterGet(params);
        System.assertEquals(expectedResponse, response);
    }
}