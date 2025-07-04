/*
 * FinFeedAPI SEC REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

public class OASFileDownloadApi {
    OASClient client;

    public OASFileDownloadApi(OASClient client) {
        this.client = client;
    }

    public OASFileDownloadApi() {
        this.client = new OASClient();
    }

    public OASClient getClient() {
        return this.client;
    }

    /**
     * Download file from SEC EDGAR archive
     * Downloads a specific file from the SEC EDGAR archive using the accession number and filename.\nThe file is streamed directly from the SEC servers to the client.\n\n### Accession Number Format\nAccession numbers must be in the format: 0000000000-00-000000 (10 digits, dash, 2 digits, dash, 6 digits)\n\n### File Name Examples\n- Primary documents: &#x60;d123456d10k.htm&#x60;, &#x60;d789012d8k.htm&#x60;\n- XBRL files: &#x60;d123456d10k_htm.xml&#x60;, &#x60;FilingSummary.xml&#x60;\n- Exhibits: &#x60;d123456dexhibit99.htm&#x60;, &#x60;d123456dex101.htm&#x60;\n\n### File Types\nThe endpoint supports downloading various file types from SEC filings:\n- HTML documents (.htm, .html)\n- XBRL files (.xml, .xsd)\n- Text files (.txt)\n- PDF files (.pdf)\n- Other document formats as submitted to SEC\n\n:::tip\nYou can find available filenames for a specific filing using the &#x60;/v1/filings&#x60; endpoint first\n:::\n\n:::warning\nThis endpoint streams files directly from the SEC. Large files may take longer to download.\n:::
     * @param accessionNo SEC filing accession number in format: 0000000000-00-000000 (required)
     * @param fileName Name of the file to download from the filing (required)
     * @throws OAS.ApiException if fails to make API call
     */
    public void v1DownloadGet(Map<String, Object> params) {
        client.assertNotNull(params.get('accessionNo'), 'accessionNo');
        client.assertNotNull(params.get('fileName'), 'fileName');
        List<OAS.Param> query = new List<OAS.Param>();

        // cast query params to verify their expected type
        query.addAll(client.makeParam('accession_no', (String) params.get('accessionNo')));
        query.addAll(client.makeParam('file_name', (String) params.get('fileName')));

        List<OAS.Param> form = new List<OAS.Param>();

        client.invoke(
            'GET', '/v1/download', '',
            query, form,
            new Map<String, Object>(),
            new Map<String, Object>(),
            new List<String>{ 'application/octet-stream', 'text/html', 'application/xml', 'text/plain', 'application/pdf', 'application/json' },
            new List<String>(),
            new List<String> { 'APIKey', 'JWT' },
            null
        );
    }
}
