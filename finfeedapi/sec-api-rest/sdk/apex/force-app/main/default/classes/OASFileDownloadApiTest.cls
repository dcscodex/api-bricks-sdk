@isTest
private class OASFileDownloadApiTest {
    /**
     * Download file from SEC EDGAR archive
     *
     * Downloads a specific file from the SEC EDGAR archive using the accession number and filename.\nThe file is streamed directly from the SEC servers to the client.\n\n### Accession Number Format\nAccession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)\n\n### File Name Examples\n- Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60;\n- XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60;\n- Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;\n\n### File Types\nThe endpoint supports downloading various file types from SEC filings:\n- HTML documents (.htm, .html)\n- XBRL files (.xml, .xsd)\n- Text files (.txt)\n- PDF files (.pdf)\n- Other document formats as submitted to SEC\n\n:::tip\nYou can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first\n:::\n\n:::warning\nThis endpoint streams files directly from the SEC. Large files may take longer to download.\n:::
     */
    @isTest
    private static void v1DownloadGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'accessionNo' => 'null',
            'fileName' => 'null'
        };

        OASClient client;
        OASFileDownloadApi api;
        String js = '';

        client = new OASClient();
        api = new OASFileDownloadApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('APIKey')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/octet-stream');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/octet-stream');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/octet-stream');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);
        client = new OASClient();
        api = new OASFileDownloadApi(client);

        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/octet-stream');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/octet-stream');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/octet-stream');
        res.setBody(js);
        expectedResponse = ;
        response = () api.v1DownloadGet(params);
        System.assertEquals(expectedResponse, response);
    }
}