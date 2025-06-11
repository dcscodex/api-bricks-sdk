public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://api-historical.stock.finfeedapi.com';
        calloutName = 'FinFeedAPI_Stock_REST_API';
        authentications.put('APIKey', new OAS.ApiKeyHeaderAuth('Authorization'));
    }
}
