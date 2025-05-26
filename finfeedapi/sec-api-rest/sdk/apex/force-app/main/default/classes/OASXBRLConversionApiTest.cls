@isTest
private class OASXBRLConversionApiTest {
    /**
     * Convert XBRL data to JSON format
     *
     * Converts XBRL data to JSON format using one of three possible input methods.\r\n\r\n### Input Methods\r\n\r\n1. HTML URL (htm-url)\r\n   - URL of the filing ending with .htm or .html\r\n   - Both filing URLs and index page URLs are accepted\r\n   - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231.htm\r\n\r\n2. XBRL URL (xbrl-url)\r\n   - URL of the XBRL file ending with .xml\r\n   - Can be found in the dataFiles array from Query API\r\n   - Example: https://www.sec.gov/Archives/edgar/data/1318605/000156459021004599/tsla-10k_20201231_htm.xml\r\n\r\n3. Accession Number (accession-no)\r\n   - The SEC filing accession number\r\n   - Example: 0001564590-21-004599\r\n\r\n:::note\r\nOnly one of the three parameters should be provided. If multiple parameters are provided, the priority order is:\r\n1. htm-url\r\n2. xbrl-url\r\n3. accession-no\r\n:::\r\n\r\n### Supported Filing Types\r\n\r\n- Annual Reports (10-K)\r\n- Quarterly Reports (10-Q)\r\n- Current Reports (8-K)\r\n- Registration Statements (S-1, S-3)\r\n- Foreign Private Issuer Reports (20-F, 40-F)\r\n\r\n### Response Format\r\n\r\nThe API returns a JSON object containing:\r\n- Financial statements (Income Statement, Balance Sheet, Cash Flow Statement)\r\n- Accounting policies and footnotes\r\n- Company information\r\n- Filing metadata\r\n\r\n### Example Response\r\n&#x60;&#x60;&#x60;json\r\n{\r\n  &quot;StatementsOfIncome&quot;: {\r\n    &quot;RevenueFromContractWithCustomerExcludingAssessedTax&quot;: [\r\n      {\r\n        &quot;decimals&quot;: &quot;-6&quot;,\r\n        &quot;unitRef&quot;: &quot;U_USD&quot;,\r\n        &quot;period&quot;: {\r\n          &quot;startDate&quot;: &quot;2023-07-01&quot;,\r\n          &quot;endDate&quot;: &quot;2024-06-30&quot;\r\n        },\r\n        &quot;value&quot;: &quot;245122000000&quot;\r\n      }\r\n    ]\r\n  }\r\n}\r\n&#x60;&#x60;&#x60;
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

        api = new OASXBRLConversionApi(new OASClient());

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