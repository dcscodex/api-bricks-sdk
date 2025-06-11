public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'https://api.sec.finfeedapi.com';
        calloutName = 'FinFeedAPI_SEC_REST_API';
        authentications.put('APIKey', new OAS.ApiKeyHeaderAuth('Authorization'));
    }
}
